<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
.max-small {
    width: auto; height: auto;
    max-width: 100px;
    max-height: 100px;
}
</style>

<div align="center">
	<table border="1" width="50%">
		<caption>차량 상세 보기</caption>
		<tr>
			<th width="15%" class="m2">차량 번호</th>
			<td width="35%" align="center">${rentcar.r_id}</td>
			<th width="15%" class="m2">차량 분류</th>
			<td width="35%" align="center">${rentcar.type}</td>
		</tr>
		<tr>
			<th width="15%" class="m2">상품명</th>
			<td width="35%" align="center">${rentcar.name}</td>
			<th width="15%" class="m2">제조회사</th>
			<td width="35%" align="center">${rentcar.company}</td>
		</tr>
		<tr>
			<th width="15%" class="m2">사진</th>
			<td width="40%" align="center" colspan="3">
				<img src="${upLoadPath}/${rentcar.filename}" style="width:450px;height:400px auto;">
			</td>
		</tr>
		<tr>
			<th width="15%" class="m2">업체명</th>
			<td width="35%" align="center">${rentcar.rentcom}</td>
			<th width="15%" class="m2">업체 번호</th>
			<td width="35%" align="center">${rentcar.renttel}</td>
		</tr>
		<tr>
			<th width="30%">예약 가능 여부</th>
			<td align="center" colspan="4">
				<c:if test="${rentcar.reservation == 0}">
					예약 가능
				</c:if>
				<c:if test="${rentcar.reservation == 1}">
					예약중
				</c:if>
			</td>
			
		</tr>
		<tr>
			<th width="15%" class="m2">차량 소개</th>
			<td width="85%" colspan="3">
				<textarea name="contents" rows="5" cols="80" readOnly>${rentcar.contents}
				</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="4" align="center" class="m1">
				<input type="button" value="돌아가기" 
									onclick="window.location='listRentcar.admin'">
			</td>
		</tr>
	</table>
</div>