<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>myJsp</title>
</head>
<body>
<h1>哇哇哇！我的第一个JSP页面</h1>
<hr>
<!-- 我是HTML注释 -->
<%-- 我是JSP注释 --%>
<%
    //我是行注释
    /*我是多行注释*/
%>

<%!
    private String s = "99乘法表!";
    private StringBuilder sb = new StringBuilder();
    public String printTable(){
        for(int i=1;i<=9;i++){
            for(int j=1;j<=i;j++){
                sb.append(j);
                sb.append(" * ");
                sb.append(i);
                sb.append(" = ");
                sb.append(i*j);
                sb.append("&nbsp;&nbsp;&nbsp;&nbsp");
            }
            sb.append("<br>");
        }
        return sb.toString();
    }

    void printTable2(JspWriter out)throws Exception{
        for(int i=1;i<=9;i++){
            for(int j=1;j<=i;j++){
                out.println(i+" * "+j+" = "+(i*j)+"&nbsp;&nbsp;&nbsp;&nbsp;");
            }
            out.println("<br>");
        }

    }

%>
<br>
<%=s %><br>
<%printTable2(out); %><br>

</body>
</html>