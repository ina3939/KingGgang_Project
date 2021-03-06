package com.teamb.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.teamb.model.Comm_MemberDTO;
import com.teamb.model.Comm_NoticeDTO;
import com.teamb.model.CommboardDTO;
import com.teamb.model.HashTagDTO;
import com.teamb.service.CommNewsFeedMapper;
import com.teamb.service.CommboardMapper;
import com.teamb.service.HashTagMapper;

@Controller
public class CommNewsfeedController {

   @Autowired
   private CommboardMapper boardMapper;
   
   @Autowired
   private CommNewsFeedMapper newsfeedMapper;

   @Autowired
   private HashTagMapper hashtagMapper;
   
   @Resource(name = "upLoadPath")
   private String upLoadPath;


   @SuppressWarnings("unchecked")
   @ResponseBody
   @RequestMapping(value = "/commMemberSearch", method = RequestMethod.POST)
   public Object memberSearch(@RequestBody HashMap<String, Object> map) {
      String word = (String) map.get("word");
      List<Comm_MemberDTO> list = newsfeedMapper.getSearchComm_Member(word);
      JSONArray jsonArray = new JSONArray();
      JSONObject json = null;
      for (int i = 0; i < list.size(); i++) {
         json = new JSONObject();
         Comm_MemberDTO dto = (Comm_MemberDTO) list.get(i);
         json.put("num", dto.getComm_memberNum());
         json.put("profile", dto.getComm_profilename());
         json.put("nick", dto.getComm_nickname());

         jsonArray.add(json);

      }

      return jsonArray;
   }
   
   @SuppressWarnings("unchecked")
   @ResponseBody
   @RequestMapping(value = "/commHashSearch", method = RequestMethod.POST)
   public Object hashSearch(@RequestBody HashMap<String, Object> map) {
      String word = (String) map.get("word");
      List<HashTagDTO> list = hashtagMapper.getSearchTagList(word);
      JSONArray jsonArray = new JSONArray();
      JSONObject json = null;
      for (int i = 0; i < list.size(); i++) {
         json = new JSONObject();
         HashTagDTO dto = (HashTagDTO) list.get(i);
         json.put("tagName",dto.getTagName());
         json.put("tagId", dto.getTagId());
         jsonArray.add(json);

      }

      return jsonArray;
   }
   
   @SuppressWarnings("unchecked")
   @ResponseBody
   @RequestMapping(value = "/newsfeedList", method = RequestMethod.POST)
   public Object moerContent(@RequestBody HashMap<String, Object> map, HttpServletRequest req,HttpSession session){
      
      int startRow = (int) map.get("startRow");
      int endRow = (int)map.get("endRow");
      int count = newsfeedMapper.getNewsCount();
      if (endRow>count) endRow = count;
      
    //지은
      List<CommboardDTO> list = null;
      String look=(String) session.getAttribute("look");
     
     if(look!=null){
    	 int comm_memberNum = (Integer)session.getAttribute("comm_memberNum");
         
        if(look.equals("전체공개")){
            list = newsfeedMapper.newfeedList(startRow, endRow, look);
         }
         else if(look.equals("회원공개")){
            list = newsfeedMapper.newfeedList(startRow, endRow, look);
            
         }
         else if(look.equals("비공개")){
            list = newsfeedMapper.alone_newfeedList(startRow, endRow, look, comm_memberNum);
         }
      }
     else if(look==null){
          look="전체공개";
          list = newsfeedMapper.newfeedList(startRow, endRow, look);
     }

      JSONArray jsonArray = new JSONArray();
      JSONObject json = null;
      for (int i = 0; i < list.size(); i++) {
         json = new JSONObject();
         CommboardDTO dto = (CommboardDTO) list.get(i);
         json.put("num", dto.getBoardNum());
         json.put("file", dto.getFile_name());
         jsonArray.add(json);
         }
     
      return jsonArray;
     }
    
   @RequestMapping("/commhome.comm")
   public ModelAndView boardList(HttpServletRequest req,HttpSession session){
      int pageSize = 4;
      
      String pageNum = req.getParameter("pageNum");
      if (pageNum == null){
         pageNum = "1";
      }
      
      int currentPage = Integer.parseInt(pageNum);
      int startRow = currentPage * pageSize - (pageSize-1);
      int endRow = currentPage * pageSize;

      List<CommboardDTO> newsfeed = null;
      //newsfeed = newsfeedMapper.newfeedList(startRow, endRow);
      
    //지은
      ModelAndView mav = new ModelAndView();
  
      String look=(String) session.getAttribute("look");
      
      if(look!=null){
         if(look.equals("전체공개")){
            newsfeed = newsfeedMapper.newfeedList(startRow, endRow, look);
            mav.addObject("boardList", newsfeed);
         }
         else if(look.equals("회원공개")){
            newsfeed = newsfeedMapper.newfeedList(startRow, endRow, look);
            mav.addObject("boardList", newsfeed);
         }
         else if(look.equals("비공개")){
        	int comm_memberNum = (Integer)session.getAttribute("comm_memberNum");
            newsfeed = newsfeedMapper.alone_newfeedList(startRow, endRow, look, comm_memberNum);
            mav.addObject("boardList", newsfeed);
         }
      }
      else if(look==null){
          look="전체공개";
          newsfeed = newsfeedMapper.newfeedList(startRow, endRow, look);
          mav.addObject("boardList", newsfeed);
       }

//      ModelAndView mav = new ModelAndView();
//      mav.addObject("boardList", newsfeed);

      mav.setViewName("comm/index");
      return mav;
   }
   
// 지은
   @RequestMapping("/commadmin.comm")
   public String admin(HttpServletRequest req) {
      return "comm/comm_admin";
   }
   
 
}