<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypageStyle.css?v=3">
    <title>마이페이지</title>
    <script src="${pageContext.request.contextPath}/resources/js/javascript.js"></script>
</head>
<body>

<%@ include file="../header.jsp"%>

    <!-- 내정보 수정 -->
    <div class="container1">
        <form action="./mypage" method="POST" onsubmit="return valid()">
        <input type="hidden" name="idx" value="${member.idx }">
            <div class="container2">
                <h2 class="myInfo_Title">내정보 수정</h2>

                <!-- 아이디 -->
                <div class="myInfo_item1">
                    <label>아이디</label>
                    <div class="myInfo_item2">
                        <input type="text" name="id" class="myInfo_input" placeholder="아이디" readonly="readonly" value="${member.id }">
                    </div>
                </div>

                <!-- 비밀번호 -->
                <div class="myInfo_item1">
                    <label>비밀번호</label>
                    <div class="myInfo_item2">
                        <button id="pwd_open" type="button" class="myInfo_input">비밀번호 변경</button>
                    </div>
                </div>

                <!-- 이름 -->
                <div class="myInfo_item1">
                    <label>이름</label>
                    <div class="myInfo_item2">
                        <input type="text" name="name" class="myInfo_input" id="myName" placeholder="이름" readonly="readonly" value="${member.name }">
                    </div>
                </div>

                <!-- 전화번호 -->
                <div class="myInfo_item1">
                    <label>전화번호</label>
                    <div class="myInfo_item2 MyInfo_Tel">
                        <input type="text" name="phone1" id="userPhone1" placeholder="전화번호" maxlength="3" value="010">
                        <input type="text" name="phone2" id="userPhone2" placeholder="전화번호" maxlength="4" value="${fn:substring(member.phone,3,7) }">
                        <input type="text" name="phone3" id="userPhone3" placeholder="전화번호" maxlength="4" value="${fn:substring(member.phone,7,12) }">
                        <input type="hidden" name="phone" id="totalPhone">
                    </div>
                </div>

                <!-- 나이 -->
                <div class="myInfo_item1">
                    <label>나이</label>
                    <div class="myInfo_item2">
                        <input type="number" class="myInfo_input" name="age" id="myAge" min="1" max="100" placeholder="나이" value="${member.age }">
                    </div>
                </div>

                <div>
                    <button class="editBtn" type="submit">변경하기</button>
                </div>

            </div>
        </form>
    </div>

<hr>    

    <!-- 찜목록 -->
    <h2 class="heartList">찜 목록</h2>

    <form>
        <div class="container1">
            <div class="container2 heartList_box">
                
                <!-- 예시 -->
                <div class="heartlist_item1">
                    <a href="#"><img src="" alt="오류"></a>
                    <div class="heartlist_item2">
                        <div class="heartlist_title"><h3>아이폰 이미지입니다.</h3></div>
                        <div class="heartlist_sub">내용 : Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto atque unde repellat eius omnis pariatur a maiores ducimus reiciendis, deserunt temporibus quisquam nam numquam sint itaque, nobis assumenda consequuntur, sequi voluptates voluptatem nemo incidunt vero optio impedit. Accusantium temporibus omnis nobis, unde eum expedita quis et officiis ducimus dolorum aut?</div>
                        <div><button type="button" onclick="">찜 삭제</button></div>
                    </div>
                </div>
                
                <!-- 찜 목록 틀 -->
                <div class="heartlist_item1">
                    <a href="#"><img src="" alt="오류"></a>
                    <div class="heartlist_item2">
                        <div>
                            <div class="heartlist_title"><h3>제목</h3></div>
                            <div class="heartlist_sub">내용</div>
                            <button type="button" onclick="">찜 삭제</button>
                        </div>
                    </div>
                </div>
    
                <div class="heartlist_item1">
                    <a href="#"><img src="" alt="오류"></a>
                    <div class="heartlist_item2">
                        <div>
                            <div class="heartlist_title"><h3>제목</h3></div>
                            <div class="heartlist_sub">내용</div>
                            <button type="button" onclick="">찜 삭제</button>
                        </div>
                    </div>
                </div>
    
                <div class="heartlist_item1">
                    <a href="#"><img src="" alt="오류"></a>
                    <div class="heartlist_item2">
                        <div>
                            <div class="heartlist_title"><h3>제목</h3></div>
                            <div class="heartlist_sub">내용</div>
                            <button type="button" onclick="">찜 삭제</button>
                        </div>
                    </div>
                </div>
    
            </div>
        </div>
    </form>
    
    <hr>
    
    <!-- 글 목록 -->
    <h2 class="freeboardList">글 목록</h2>
    <form>
        <div class="container1">
            <div class="container2 freeboardList_box">
                <!-- 예시 -->
                <c:forEach var="blogList" items="${blogList }">
                <div class="FBL_item">
                    <div><a href="../blog/detail?idx=${blogList.idx }">
                    <img src="<spring:url value='/image/${blogList.imgList[0].img_name }'/>" alt="오류" class="FBL_img">
                    </a></div>
                    <div class="FBL_info">
                        <div class="FBL_title">${blogList.subject }</div> 
                        <div class="FBL_sub">${blogList.content }</div>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </form>
    
    

<%@ include file="../footer.jsp"%>


<%@ include file="./pwd_modal.jsp"%>
<script src="${pageContext.request.contextPath}/resources/js/pwd_modal.js"></script>



</body>
</html>