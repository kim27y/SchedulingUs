<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>

<%
    request.setCharacterEncoding("utf-8");

    String idValue = request.getParameter("idValue");
    String pwValue = request.getParameter("pwValue");

    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedus","ubuntu","123123");
    
    String sql = "SELECT pw FROM users WHERE id=?";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1,idValue);

    ResultSet result = query.executeQuery();

    if (result.next()) {
        if(result.getString(1).equals(pwValue)) {
           session.setAttribute("userid",idValue);
           session.setAttribute("userpw",pwValue);
           
           result.close();
           query.close();
           connect.close();
           response.sendRedirect("../diary/diary.jsp");
        }
    }

    out.println("<script>alert('없는 아이디거나 비밀번호가 틀렸습니다.');</script>");
    result.close();
    query.close();
    connect.close();
    out.println("<script>location.href='index.jsp';</script>");
%>