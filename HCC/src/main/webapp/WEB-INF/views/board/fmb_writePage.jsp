<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<%@ include file="../common/inc_common.jsp"%>

<%@ include file="../common/inc_header.jsp"%>

</head>
<body>
	<div class="wrap">

		<!-- Top Menu -->
		<%@ include file="../common/inc_top.jsp"%>
		
		<h1>의사 환자게시판 페이지</h1>
		<br />
		<br />
		<form action="./fmbWrite" method="get">
			<textarea cols="50" rows="1" id="title" name="title" placeholder="제목"></textarea>
			<br/><br/>
			
			<select name="select" id="select">
			<option value="P">환자</option>
			<option value="D">의사</option>
			<option value="N">공지</option>
			</select>
			<br/><br/>
			<input type="radio" name="status" id="status" value="Y">활성화
			<input type="radio" name="status" id="status" value="N">비활성화
			<br/><br/>
			
			<textarea cols="50" rows="40" id="content" name="content" placeholder="내용"></textarea>
			<br/><br/>
			<input type="submit" value="글쓰기">
		</form>
	</div>
</body>
</html>
