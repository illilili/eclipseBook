<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.beans.*"%>
<%@ page import="java.util.*"%>
<%
List<BookDTO> list = (List<BookDTO>) request.getAttribute("list");

if (list == null || list.size() == 0) {
%>
<script>
	alert("해당 정보가 삭제되었거나 존재하지 않습니다.");
	history.back();
</script>
<%
	return;
}
%>
<%
	BookDTO dto = list.get(0);
	int uid = dto.getUid();
	String title = dto.getTitle();
	String summary = dto.getSummary();
	int price = dto.getPrice();
	int viewCnt = dto.getViewCnt();
	String regDate = dto.getRegDateTime(); 
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>글 상세 보기</title>
<style> 
body{
padding : 50px;
padding-left : 100px;
padding-right : 100px;
}
</style>

<title>글 상세 보기</title>
</head>
<body>
	<h1><%=title%> 정보</h1>
	<hr>
	<strong>도서 제목</strong> <%=title%><br>
	<strong>도서 가격</strong> <%=price%><br>
	<strong>조회수</strong> <%=viewCnt%><br>
	<strong>등록일</strong> <%=regDate%><br><br>
	<strong>요약</strong><br>
	<%=summary%><br>
	<br><hr><br>
	<button type="button" class="btn btn-danger" onclick="chkDelete(<%=uid%>)">삭제하기</button>
	
	<button type="button"  class="btn btn-secondary" onclick="location.href='update.do?uid=<%=uid%>'">수정하기</button>
	<button type="button" class="btn btn-primary" onclick="location.href='write.do'">신규등록</button>
	<button type="button"  class="btn btn-primary" onclick="location.href='list.do'">목록으로</button>
    
    <script>
		function chkDelete(uid) {
			let r = confirm("삭제하시겠습니까?");
			if (r) {
				location.href = "deleteOk.do?uid=" + uid;
			}
		}
	</script>
	<!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    -->
</body>
</html>