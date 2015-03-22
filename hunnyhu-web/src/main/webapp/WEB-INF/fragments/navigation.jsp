<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="header clearfix">
	<div class="logo">
		<h1><a href="http://blog.163.com/" class="tip-s" title="163博客"><span>Ada</span><em>/</em><strong>Hunny</strong></a></h1>
	</div>
	<c:if test="${fn:length(userMap.user.username) > 0}">
	<a href="${ROOT}/login/logout.html" class="return" onclick="return confirm('确定退出吗？');">&laquo;&nbsp;注　销</a><a href="javascript:void(0)" class="return">${userMap.user.username}</a>
	</c:if>
</div>