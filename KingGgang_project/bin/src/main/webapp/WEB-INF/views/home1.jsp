<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ page session="false" %> --%>
<!-- 
	이	   름 : home.jsp
	개  발   자 : 
	설	   명 : 메인 페이지
 -->
<%@ include file="/WEB-INF/views/top.jsp"%>

<div class="section layout_padding">
<a href="main.admin">관리자모드로 가기</a>
<br>
<a href="main.member">임시회원</a>
<br><a href="Q_list.board">문의게시판 가기</a>
<br><a href="list.notice">공지사항 보기</a>
<br><a href="main.my">마이페이지로 가기</a><p>
<br><a href="main.mem">멤버 페이지로 가기</a><p>
<br><a href="main.hotel">호텔 예약하기</a>
<br><a href="listRentcar.admin">렌트카 목록(어드민)</a>
<br><a href="listInsu.admin">렌트카_보험 목록(어드민)</a>
<br><a href="firstPage.rentcar">렌트카 메인(회원)</a>
<br><a href="main.wish">관심리스트등록 페이지로 가기</a><p>
<br><a href="main.pay">결제 페이지로 가기</a><p>
</p>
</div>
<%@ include file="/WEB-INF/views/bottom.jsp"%>
