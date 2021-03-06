<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- 
	이	   름 : chatRoom.jsp
	개  발   자 : 이 여 진
	설	   명 : 채팅목록 페이지
 	-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Room</title>
<style>
* {
	margin: 0;
	padding: 0;
}

.container {
	width: 500px;
	margin: 0 auto;
	padding: 25px
}

.container h1 {
	text-align: left;
	padding: 5px 5px 5px 15px;
	color: #FFBB00;
	border-left: 3px solid #FFBB00;
	margin-bottom: 20px;
}

.roomContainer {
	background-color: #F6F6F6;
	width: 500px;
	height: 400px;
	overflow: auto;
}

.roomList {
	border: none;
}

.roomList th {
	border: 1px solid #FFBB00;
	background-color: #fff;
	color: #FFBB00;
}

.roomList td {
	border: 1px solid #FFBB00;
	background-color: #fff;
	text-align: left;
	color: #FFBB00;
}

.roomList .num {
	width: 75px;
	text-align: center;
}

.roomList .room {
	width: 350px;
}

.roomList .go {
	width: 71px;
	text-align: center;
}

button {
	background-color: #FFBB00;
	font-size: 14px;
	color: #000;
	border: 1px solid #000;
	border-radius: 5px;
	padding: 3px;
	margin: 3px;
}

.inputTable th {
	padding: 5px;
}

.inputTable input {
	width: 330px;
	height: 25px;
}
</style>
</head>

<body>
	<div class="container">
		<h1>채팅방</h1>
		<div id="roomContainer" class="roomContainer">
			<table id="roomList" class="roomList">
				<tr>
					<th class='num'>순서</th>
					<th class='room'>방 이름</th>
					<th class='go'></th>
				</tr>
				<c:if test="${empty roomList}">
					<tr>
						<td colspan="9">등록된 대화가 없습니다.</td>
					</tr>
				</c:if>

				<c:forEach var="dto" items="${roomList}">
					<tr>
						<td class='num'>${dto.chatroom_id}</td>
						<td class='room'>${dto.sname}님과 ${dto.rname}님의 대화</td>
						<td class='go'>
							<button type='button'
								onclick="location.href='moveChating?chatroom_id=${dto.chatroom_id}'">보내기</button>
						</td>
					</tr>
				</c:forEach>

			</table>
		</div>
	</div>
</body>
</html>