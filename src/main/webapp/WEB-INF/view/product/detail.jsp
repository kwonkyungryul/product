<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <ul>  <!-- unorderlist -->
        <li>
            <a href="/">홈</a>
        </li>
        <li>
            <a href="/product/addForm">상품등록</a>
        </li>
    </ul>
    <h1>Product detail Page</h1>
    <hr/>
    <div class="" style="display: flex;">
        <form action="/product/${product.id}/updateForm" method="get">
            <input type="submit" name="" id="" value="수정">
        </form>
        <form action="/product/${product.id}/delete" method="post">
            <input type="submit" name="" id="" value="삭제">
        </form>
    </div>
    <table border="1">
        <tr>
            <th>번호</th>
            <th>상품명</th>
            <th>가격</th>
            <th>재고</th>
            <th>등록일</th>
        </tr>
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.qty}</td>
            <td>${product.createdAt}</td>
        </tr>
    </table>

</body>
</html>