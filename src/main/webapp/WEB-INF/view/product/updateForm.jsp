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
    <h1>Product Update Page</h1>
    <hr/>
    <form action="/product/${product.id}/update" method="post">
        <table border="1">
            <tr>
                <th>번호</th>
                <th>상품명</th>
                <th>가격</th>
                <th>재고</th>
                <th>등록일</th>
            </tr>
            <tr>
                <td><input type="text" name="" id="" value="${product.id}" readonly size="5"></td>
                <td><input type="text" name="name" id="" value="${product.name}" size="10"></td>
                <td><input type="text" name="price" id="" value="${product.price}" size="10"></td>
                <td><input type="text" name="qty" id="" value="${product.qty}" size="4"></td>
                <td><input type="text" name="" id="" value="${product.createdAt}" readonly></td>
            </tr>
        </table>
        <input type="submit" value="수정">
    </form>
</body>
</html>