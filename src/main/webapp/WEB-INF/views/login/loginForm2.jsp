<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/include/header.jspf"  %>
<title>Login</title>
</head>
<body onload="document.f.id.focus();">
      <br><br>
      <div class="container text-center">
          <h1>로그인 페이지</h1><br>
      </div>
      <c:url value="/login" var="loginUrl" />
      <div class="container col-md-4"> <!-- 부트스트랩 태그 -->
	      <form:form name ="f" class="px-4 py-3" action="${loginUrl}" method="post"> <!-- 해당 로그인 페이지로 넘어감 -> controller가 처리 안해줬음에도 불구하고 => xml설정으로 이렇게 됨 -->
	            <c:if test="${param.error != null}">
        			<p>아이디와 비밀번호가 잘못되었습니다.</p>
    			</c:if>
    			
    			<c:if test="${param.logout != null}">
        			<p>로그아웃 하였습니다.</p>
    			</c:if>
    			
    			<!-- 파라미터로 id랑 password가 넘어감 -> controller가 처리 안해줬음에도 불구하고 => xml설정으로 이렇게 됨 -->
	          <div class="form-group">
	              <label for="exampleDropdownFormEmail1">ID</label>
	              <input type="text" class="form-control" name="id" placeholder="example">
	          </div>
	          <div class="form-group">
	              <label for="exampleDropdownFormPassword1">Password</label>
	              <input type="password" class="form-control" name="password" placeholder="Password">
	          </div>
	          <div class="form-check">
	              <label class="form-check-label">
	              <input type="checkbox" class="form-check-input">
	              Remember me
	              </label>
	          </div>
		<%-- <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/> --%> <!-- csrf -->
	          <button type="submit" class="btn btn-primary">Sign in</button>
	   </form:form>
	      <div class="dropdown-divider"></div>
	      <a class="dropdown-item" href="#">New around here? Sign up</a>
	      <a class="dropdown-item" href="#">Forgot password?</a>
	  </div>

</body>
</html>