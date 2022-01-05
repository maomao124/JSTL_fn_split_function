<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_fn_split_function
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2022/1/5
  Time(创建时间)： 13:17
  Description(描述)：
  JSTL fn:split() 函数类似于 Java 中的 split() 方法，用于将字符串用指定的分隔符分隔为一个子串数组。
JSP fn:split() 函数的语法如下。
String[] fn:split(String sourceStr, String separator)
其中，sourceStr 表示源字符串，separator 为指定的分隔符。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    StringBuilder stringBuilder = new StringBuilder();
    for (int i = 0; i < 100; i++)
    {
        stringBuilder.append(i).append("、");
    }
    stringBuilder.append("100");
    request.setAttribute("str", stringBuilder.toString());
%>
输出：
<c:out value="${requestScope.str}" escapeXml="true" default="null"/>
<br/>
<br/>
分割后：
<br/>
<c:set var="strs" value="${fn:split(str, '、')}" scope="session"/>
<c:forEach items="${sessionScope.strs}" var="i" varStatus="varstatusName" begin="0" end="100" step="1" >
    <c:out value="${i}" escapeXml="true" default="null"/>
    <br/>
</c:forEach>
</body>
</html>
