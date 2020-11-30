<%--
  Created by IntelliJ IDEA.
  User: quockhanh
  Date: 13-Nov-20
  Time: 2:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--Title and favicon icon-->
    <title>WP - Assignment 2.2 - Lam Quoc Khanh - 18110304</title>
    <link rel="icon" type="image/png" href="https://quockhanh.dev/favicon.png" />

    <!--Link Google Font-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
          rel="stylesheet">
    <!--Link Font Awesome-->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossOrigin="anonymous" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <!--Link Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!--Link My style-->
    <link href="../css/style.css" rel="stylesheet">
</head>

<%@ page import="java.util.ArrayList" %>
<%
    String processor = request.getParameter("processor");
    processor = processor == null ? "Not select processor" : processor;

    String monitor = request.getParameter("chk-accessories");

    String[] accessories = request.getParameterValues("list-accessories");

    String listAcc = monitor == null ? "" : "Monitor<br>";
    if (accessories != null) {
        for	(int i = 0; i < accessories.length; i++) {
            listAcc += accessories[i] + "<br>";
        }
    }
%>

<body>
<div class="container">
    <div class="row">
        <!--Side bar menu-->
        <ul class="col-2 sidebar-menu">
            <li>
                <a href="https://quockhanh.dev" class="sidebar-item">
                    <i class="fal fa-home sidebar-icon"></i>
                    <span class="sidebar-text">Home</span>
                    <span class="sidebar-status"></span>
                </a></li>
            <li><a href="../assign-01" class="sidebar-item">
                <i class="fal fa-code sidebar-icon"></i>
                <span class="sidebar-text">Assignment 1</span>
            </a></li>
            <li><a href="../assign-02-1" class="sidebar-item">
                <i class="fal fa-code sidebar-icon"></i>
                <span class="sidebar-text">Assignment 2.1</span>
            </a></li>
            <li><a href="#" class="sidebar-item sidebar-item--active">
                <i class="fal fa-code sidebar-icon"></i>
                <span class="sidebar-text">Assignment 2.2</span>
            </a></li>
            <li><a href="../assign-03" class="sidebar-item">
                <i class="fal fa-code sidebar-icon"></i>
                <span class="sidebar-text">Assignment 3</span>
            </a></li>
            <li><a href="../assign-04" class="sidebar-item">
                <i class="fal fa-code sidebar-icon"></i>
                <span class="sidebar-text">Assignment 4</span>
            </a></li>
            <li><a href="../assign-05" class="sidebar-item">
                <i class="fal fa-code sidebar-icon"></i>
                <span class="sidebar-text">Assignment 5</span>
            </a></li>
        </ul>

        <!--Main content-->
        <div class="col-10 text-center">
            <div class="col" style="width: 400px; margin: 0 auto;">
                <h1 class="title">Order Summary</h1>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th scope="col">Processor</th>
                        <th scope="col">Accessories</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><%= processor %></td>
                        <td><%= listAcc %></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <button onclick="goBack()" class="button-effect text-center">Go back <i class="fal fa-long-arrow-left"></i></button>
        </div>

    </div>
</div>

<!--Float button back to home-->
<a href="https://quockhanh.dev/#assignment" class="btn-float" rel="tooltip" title="Back to home page">
    <i class="fa fa-home icon-btn-float"></i>
</a>

<!--Footer-->
<footer class="footer">
    <div class="container text-center">
        <a class="cc-facebook btn btn-link" target="blank" href="http://facebook.com/profile.php?id=100004367534716"
           rel="tooltip" title="Follow me on Facebook">
            <i class="fa fa-facebook fa-2x" aria-hidden="true"></i>
        </a>
        <a class="cc-github btn btn-link" target="blank" href="https://github.com/quockhanhtn" rel="tooltip"
           title="Follow me on Github">
            <i class="fa fa-github fa-2x" aria-hidden="true"></i>
        </a>
        <a class="cc-linkedin btn btn-link" target="blank" href="https://www.linkedin.com/in/lamquockhanh"
           rel="tooltip" title="Connect me on LinkedIn">
            <i class="fa fa-linkedin fa-2x" aria-hidden="true"></i>
        </a>
        <a class="cc-youtube btn btn-link" target="blank"
           href="https://www.youtube.com/channel/UCmhjCVQCe69Z68Fc6zsifAQ" rel="tooltip"
           title="Subscribe me on Youtube">
            <i class="fa fa-youtube fa-2x " aria-hidden="true"></i>
        </a>
    </div>
    <div class="text-center text-muted">
        <p>
            &copy; 2020 Lâm Quốc Khánh (18110304). All rights reserved.<br>
            Web app hosting by <a class="credit" href="https://www.heroku.com/home">Heroku</a><br>
        </p>
    </div>
</footer>

<script>
    function goBack() {
        window.history.back();
    }
</script>

</body>
</html>