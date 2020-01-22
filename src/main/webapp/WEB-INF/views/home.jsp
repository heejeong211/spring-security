<%-- <%@ page session="false" %> --%> <!-- session 사용 못하게 하는 코드 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
	<title>메인페이지</title>
</head>
<body>
	<h1>
		메인페이지
	</h1>
	
	<!-- 익명사용자가 접근하면 로그인 페이지로 보냄 -->
	<sec:authorize access="isAnonymous()">
		<p><a href="<c:url value="/login/loginForm"/>">로그인</a></p>
	</sec:authorize>
	
	<!-- 인증된 사용자가 로그인 했을 때 -->
	<sec:authorize access="isAuthenticated()">
		<form:form action="${ pageContext.request.contextPath }/logout" method="post"> <!-- security-context2.xml의 로그아웃과 맞춤 -->
			<input type="submit" value="로그아웃" />
		</form:form>
		<p><a href="<c:url value="/loginInfo" />">로그인 정보 확인 방법 3가지</a></p>
	</sec:authorize>
	
	<h3>
		[<a href="<c:url value="/user/userHome" />">유저 홈</a>] <!-- 하나의 권한 -->
		[<a href="<c:url value="/admin/adminHome" />">관리자 홈</a>] <!-- 하나의 권한 -->
	</h3>
</body>
</html>
