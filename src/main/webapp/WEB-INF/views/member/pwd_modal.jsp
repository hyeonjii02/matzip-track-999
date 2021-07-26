<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경 모달창</title>
</head>
<body>

<!-- 모달창 -->
<div class="modal hidden">
    <div class="bg"></div>
    <form action="" method="POST" >
     <input type="hidden" name="idx" value="${member.idx }">
        <div class="content">
            <div><button class="closeModal" title="끄기" type="button"><i class="fas fa-times pwd_close"></i></button></div>
            <h2 class="pwd_title">비밀번호 변경</h2>
            <input type="password" name="oldPassword" placeholder="현재 비밀번호">
            <input type="password" name="newPassword" placeholder="새로운 비밀번호">
            <button type="submit" class="pwd_change">변경하기</button>
        </div>
    </form>
</div>
</body>
</html>