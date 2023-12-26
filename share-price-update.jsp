<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
public int getRandomNumberUsingInts(int min,int max)
{
    Random random=new Random();
    return random.ints(min,max).findFirst().getAsInt();
    
}
public int newSharePrice(int compCode){
    int sharePrice=0;
    switch(compCode)
    {
    case 1:
        sharePrice = getRandomNumberUsingInts(1000,2000);
        break;
    case 2:
        sharePrice = getRandomNumberUsingInts(100, 500);
        break;
    case 3:
        sharePrice = getRandomNumberUsingInts(10, 100);
        break;
    }
    return sharePrice;
    }
    public int getSharePrice(String compcode)
    {
        return newSharePrice(new Integer(compcode));
    }
%>
<%
out.println(getSharePrice(request.getParameter("compcode")));
%>
</body>
</html>