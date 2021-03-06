<%@ include file="../top.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	window.onload = function() {
		if (getCookie("id")) {
			document.f.id.value = getCookie("id");
			document.f.useCookie.checked = true;
		}
	}
	function setCookie(coo, value, expiredays) {
		var todayDate = new Date();
		todayDate.setDate(todayDate.getDate() + expiredays);
		document.cookie = coo + "=" + escape(value) + ";path=/;expires="
				+ todayDate.toGMTString() + ";"
	}
	function getCookie(coo) {
		var search = coo + "=";
		if (document.cookie.length > 0) {
			offset = document.cookie.indexOf(search);
			if (offset != -1) {
				offset += search.length;
				end = document.cookie.indexOf(";", offset);
				if (end == -1)
					end = document.cookie.length;
				return unescape(document.cookie.substring(offset, end));
			}
		}
	}

	function searchMember(mode) {
		location.href = "member_search.log?mode=" + mode;
	}

	function loginCheck() {
		if (f.id.value == "") {
			alert("ID를 입력해주세요")
			f.id.focus();
			return false;
		}
		if (f.passwd.value == "") {
			alert("비밀번호를 입력해주세요")
			f.passwd.focus();
			return false;
		}
		if (document.f.useCookie.checked == true) {
			setCookie("id", document.f.id.value, 7);
		} else {
			setCookie("id", document.f.id.value, 0);
		}
		document.f.submit();
	}
</script>
<div class="section layout_padding"></div>
<section id="four" class="wrapper style1 special fade-up">
	<div class="container">
						<header class="major">
							<h1 align="center">로그인</h1>
						</header>
		<form name="f" action="loginOk.log" method="post">
			<table width="600" align="center" height="120">
				<tr>
					<td align="right" width="30%"><b>아이디</b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</td>
					<td width="40%">
							<c:if test="${empty param.searchid }">
							<input type="text" name="id" placeholder="아이디를 입력하세요.">&nbsp;&nbsp;&nbsp;<input type="checkbox" name="useCookie">아이디저장<br>
							</c:if>
							<c:if test="${not empty param.searchid}">
							<input type="text" name="id" value="${param.searchid}"><input type="checkbox" name="useCookie">아이디저장<br>
							</c:if>
				</tr>
				<tr>
					<td align="right"><b>비밀번호</b>&nbsp;&nbsp;&nbsp;</td>
					<td><input type="password" name="passwd" placeholder='비밀번호를 입력하세요.'>&nbsp;&nbsp;&nbsp;<input type="button" value="로그인" onclick="javascript:loginCheck()" class="btn btn-outline-primary btn-sm"></td>
				</tr>
				<tr>
					<td colspan="3" align="center">
					<a href="insertMember.mem" class="btn btn-link">회원가입
					</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="javascript:searchMember('search_id')" class="btn btn-link">ID찾기  	
					</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="javascript:searchMember('pw')" class="btn btn-link">비밀번호찾기
					</a>
					</td>
				</tr>
			</table>
		</form>
</div>
</section>
<div class="section layout_padding"></div>
<%@ include file="../bottom.jsp"%>