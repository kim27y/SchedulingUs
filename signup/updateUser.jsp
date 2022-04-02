<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>

<%
    request.setCharacterEncoding("utf-8");

    String idValue = request.getParameter("idValue");
    String pwValue = request.getParameter("pwValue");
    String nameValue = request.getParameter("nameValue");
    String rank = request.getParameter("rank");
    String depart = request.getParameter("depart");



    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedus","ubuntu","123123");
    
    String sql = "SELECT id FROM users WHERE id=?";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1,idValue);

    ResultSet result = query.executeQuery();

    if (result.next()) {
        out.println("<script>alert('아이디가 중복입니다.');</script>");
        result.close();
        query.close();
        connect.close();
        out.println("<script>location.href='signup.jsp';</script>");
    }
    else {
        sql = "INSERT INTO users VALUES (?,?,?,?,?)";
        query = connect.prepareStatement(sql);
        query.setString(1,idValue);
        query.setString(2,pwValue);
        query.setString(3,nameValue);
        query.setString(4,rank);
        query.setString(5,depart);

        query.executeUpdate();

        result.close();
        query.close();
        connect.close();

        out.println("<script>alert('등록 완료.');</script>");
        session.setAttribute("id", idValue);
        session.setAttribute("pw", pwValue);
        Cookie cookie = new Cookie("login",session.getId());
        cookie.setMaxAge(3600);
        response.addCookie(cookie);
        out.println("<script>location.href='../diary/diary.jsp';</script>");
    }
%>