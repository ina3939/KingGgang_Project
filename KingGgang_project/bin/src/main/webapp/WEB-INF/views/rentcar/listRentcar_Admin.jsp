<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
function del(r_id){
	if (confirm("정말 삭제하시겠습니까??") == true){    //확인
	    location.href="deleteRentcar.admin?r_id="+r_id
	}else{   //취소
	    return
	}
	}
</script>
<div align="center">
	<b>렌 트 카 목 록</b>
	<table border="1" width="800">
		<tr bgcolor="green">
			<th>회사</th>
			<th width="40%">차량 이름</th>
			<th>대차료</th>
			<th>차량 분류</th>
			<th>연료</th>
			<th>예약 가능 여부</th>
			<th>수정 / 삭제</th>
		</tr> 
	<c:if test="${empty rentcarList}">		
		<tr>
			<td colspan="6">
				등록된 차량이 없습니다.
			</td>
			<td>
				<input type="button" onclick="location.href='insertRentcar.admin'" value="차량 등록">
			</td>
		</tr>
	</c:if>		
	<c:forEach var="dto" items="${rentcarList}">		
		<tr align="center">
			<td>${dto.company}</td>
			<td>
				<a href="contentRentcar.admin?r_id=${dto.r_id}">
					${dto.name}
				</a>
			</td>
			<td>${dto.price}</td>
			<td>${dto.type}</td>
			<td>${dto.fuel}</td>
			<td>
			<c:if test="${dto.reservation == 0}">
			예약 가능
			</c:if>
			<c:if test="${dto.reservation == 1}">
			예약중
			</c:if>
			</td>
			<td>
			<input type="button" onclick="location.href='updateRentcar.admin?r_id=${dto.r_id}'" value="수정">
			<input type="button" onclick="javascript:del(${dto.r_id})" value="삭제">
			<td>
		</tr>		
	</c:forEach>
	</table>
	<div align="center">
	<br>
	<br>
	<input type="button" onclick="location.href='insertRentcar.admin'" value="차량 등록">
	</div>
</div>	