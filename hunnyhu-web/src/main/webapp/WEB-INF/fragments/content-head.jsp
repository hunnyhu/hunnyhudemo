<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="page">
	<jsp:include page="../fragments/navigation.jsp" />
	<div class="content clearfix" >
		<ul class="button-list">
			<c:forEach var="nav" items="${navList}">
				<li><a href="${ROOT}${nav.href}" class="button tab" onClick="return false;">${nav.name}</a></li>
			</c:forEach>
			<li class="search"><input type="text" class="search-input" name="search" value="Search" onClick="$(this).val('');" /><input type="submit" class="search-submit" /></li>
		</ul>
		<ul class="context-list">
			<li class="nav" style="text-align:left;">导航条</li>
			<li style="float: left;">
				<ul class="vertical-list">
					<c:forEach var="menu" items="${subList}">
						<li><a href="${ROOT}${menu.href}" class="button" >${menu.name}</a></li>
					</c:forEach>
				</ul>
			</li>
			<li style="float: right;">
				<div style="width:565px;" class="vertical-div">
					<div class="vertical-div-content" style="height:100%;width:100%;">