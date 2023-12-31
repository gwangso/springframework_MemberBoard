<%--
  Created by IntelliJ IDEA.
  User: 박경수
  Date: 2023-09-16
  Time: 오후 5:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <%-- jquery --%>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>

    <%-- bootstrap, styleSheet --%>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<jsp:include page="../header.jsp"/>
<div class="row m-5">
    <div class="col">
        <form id="board-save" name="boardSave" method="post" action="/board/save" enctype="multipart/form-data">
            <div class="input-group mb-3">
                <span class="input-group-text">제목</span>
                <input name="boardTitle" type="text" class="form-control">
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text">작성자</span>
                <input name="boardWriter" type="text" class="form-control" value="${sessionScope.member.memberEmail}" readonly>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text">내용</span>
                <textarea name="boardContents" type="text" class="form-control" style="height: 200px"></textarea>
            </div>
            <input name="boardFiles" type="file" class="form-control mb-5" multiple>
            <div>
                <input type="submit" class="btn btn-primary" value="글작성">
                <input type="button" class="btn btn-secondary" value="취소" onclick="to_list()">
            </div>
        </form>
    </div>
</div>
<hr>
<jsp:include page="../footer.jsp"/>
</body>

<script>
    function to_list(){
        location.href = "/board/list";
    }
</script>
</html>
