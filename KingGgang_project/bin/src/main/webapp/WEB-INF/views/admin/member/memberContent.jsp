<%@ include file="/WEB-INF/views/top.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
	function deleMem(id){
		var dele = confirm("회원을 삭제하시겠습니까?")	
		if(dele){
			window.location.href="deletePro.mem?id="+id
		}else{
			window.location.href="memberList.mem"
		}
	}
	
</script>
	<div class="wrap wd668" align="center">
            <div class="container">
                <div class="form_txtInput">
                    <h2 class="sub_tit_txt">회원상세보기</h2>
	<table border="1" width="800">
		<tr height="80">
			<th width="20%" bgcolor="skyblue">아이디</th>
			<td align="center" width="30%">${getMember.id}</td>
			<th width="20%" bgcolor="skyblue">이름</th>
			<td align="center" width="30%">${getMember.name}</td>
		</tr>
		<tr height="80">
			<th width="20%" bgcolor="skyblue">닉네임</th>
			<td align="center" width="30%">${getMember.nickname}</td>
			<th width="20%" bgcolor="skyblue">Email</th>
			<td align="center" width="30%">${getMember.email}</td>
		</tr>
		<tr height="80">
			<th width="20%" bgcolor="skyblue">가입일</th>
			<td align="center">${getMember.regdate}</td>
			<th width="20%" bgcolor="skyblue">연락처</th>
			<td align="center">${getMember.hp } </td>
		</tr>
		<c:if test="${getMember.filesize>0}">
		<tr height="200">
			<th width="20%" bgcolor="skyblue">이미지</th>
			<td colspan="3">
				<img src="${upLoadPath}//${getMember.filename}" width="150" height="150">
			</td>
		</tr>
		</c:if>
		<tr bgcolor="skyblue">
			<td colspan="4" align="right" height="40">
				<input type="button" value="회원수정"
				onclick="window.location='updateForm.mem?id=${getMember.id}'">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="회원삭제"
				onclick="javascript:deleMem('${getMember.id}')">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="회원목록" onclick="window.location='memberList.mem'">
			</td>
		</tr>
	</table>
	</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/bottom.jsp"%> 