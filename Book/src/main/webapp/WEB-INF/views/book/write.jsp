<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<title>신규 도서 등록</title>
<style> 
body{
padding : 50px;
padding-left : 100px;
padding-right : 100px;
}
</style>
</head>
<body>
	<h2>신규 도서 등록</h2><hr>
	<form name="frm" action="writeOk.do" method="post" onsubmit="return chkSubmit()">
	<div class="form-group">
	 <label for="staticEmail" class="col-sm-2 col-form-label">도서 제목</label>
	 <input class="form-control" type="text" name="title"/>
	</div>
	<div class="form-group">
	 <label for="staticEmail" class="col-sm-2 col-form-label">도서 가격</label>
	 <input class="form-control" type="number" name="price"/>
	</div>
	<div class="form-group">
	 <label for="exampleFormControlTextarea1">내용</label>
	 <textarea class="form-control" name="summary"></textarea>
	</div>
	<br>
	<button class="btn btn-primary" type="submit" value="등록하기">등록하기</button>
	<button type="button" class="btn btn-secondary" onclick="location.href='list.do'">목록으로</button>
	</form>
	<br>
	
	
	<script>
		function chkSubmit() {
			frm = document.forms['frm'];
			let title = frm['title'].value.trim();
			if (title == '') {
				alert("도서 제목은 반드시 입력해야 합니다");
				frm['title'].focus();
				return false;
			}
			return true;
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