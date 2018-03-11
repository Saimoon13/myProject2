<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../../../resources/lib/bootstrap.min.css">
    <link rel="stylesheet" href="../../../resources/CSS/lecture.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Untitled Document</title>

    <script src="../../../resources/lib/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

</head>

<body>


<div class="container-fluid">
    <div class="row d-flex d-md-block flex-nowrap wrapper">
        <div class="col-md-3 float-left col-1 pl-0 pr-0 collapse width " id="sidebar">
            <div class="list-group border-0 card text-center text-md-left">
                <c:forEach var="lecture" items="${lectureList}">
                <c:choose>
                    <c:when test="${lecture.lcategory eq 'basic'}">
                        ${lecture.}
                    </c:when>
                    <c:when test="${lecture.lcategory eq 'advanced'}">
                        a
                    </c:when>
                    <c:when test="${lecture.lcategory eq 'superior'}">
                        s
                    </c:when>
                </c:choose>
                </c:forEach>
                <a href="#menu1" class="list-group-item d-inline-block collapsed" data-toggle="collapse" data-parent="#sidebar" aria-expanded="false"><i class="fa fa-dashboard"></i> <span class="d-none d-md-inline">Basic</span> </a>
                <div class="collapse" id="menu1">
                    <a href="#menu1sub1" class="list-group-item" data-toggle="collapse" aria-expanded="false">Subitem 1 </a>
                    <div class="collapse" id="menu1sub1">
                        <a href="#" class="list-group-item" data-parent="#menu1sub1">Subitem 1 a</a>
                        <a href="#" class="list-group-item" data-parent="#menu1sub1">Subitem 2 b</a>
                        <a href="#" class="list-group-item" data-parent="#menu1sub1">Subitem 4 d</a>
                    </div>
                    <a href="#" class="list-group-item" data-parent="#menu1">Subitem 2</a>
                    <a href="#" class="list-group-item" data-parent="#menu1">Subitem 3</a>
                </div>

                <a href="#menu2" class="list-group-item d-inline-block collapsed" data-toggle="collapse" data-parent="#sidebar" aria-expanded="false"><i class="fa fa-dashboard"></i> <span class="d-none d-md-inline">Advanced</span> </a>
                <div class="collapse" id="menu2">
                    <a href="#menu2sub1" class="list-group-item" data-toggle="collapse" aria-expanded="false">Subitem 1 </a>
                    <div class="collapse" id="menu2sub1">
                        <a href="#" class="list-group-item" data-parent="#menu2sub1">Subitem 1 a</a>
                        <a href="#" class="list-group-item" data-parent="#menu2sub1">Subitem 2 b</a>
                        <a href="#" class="list-group-item" data-parent="#menu2sub1">Subitem 4 d</a>
                    </div>
                    <a href="#" class="list-group-item" data-parent="#menu1">Subitem 2</a>
                    <a href="#" class="list-group-item" data-parent="#menu1">Subitem 3</a>
                </div>

                <a href="#menu3" class="list-group-item d-inline-block collapsed" data-toggle="collapse" data-parent="#sidebar" aria-expanded="false"><i class="fa fa-dashboard"></i> <span class="d-none d-md-inline">Superior</span> </a>
                <div class="collapse" id="menu3">
                    <a href="#menu3sub1" class="list-group-item" data-toggle="collapse" aria-expanded="false">Subitem 1 </a>
                    <div class="collapse" id="menu3sub1">
                        <a href="#" class="list-group-item" data-parent="#menu3sub1">Subitem 1 a</a>
                        <a href="#" class="list-group-item" data-parent="#menu3sub1">Subitem 2 b</a>
                        <a href="#" class="list-group-item" data-parent="#menu3sub1">Subitem 4 d</a>
                    </div>
                    <a href="#" class="list-group-item" data-parent="#menu1">Subitem 2</a>
                    <a href="#" class="list-group-item" data-parent="#menu1">Subitem 3</a>
                </div>

            </div>
        </div>
        <main class="col-md-9 col px-5 pl-md-2 pt-2 main mx-auto">
            <a href="#" data-target="#sidebar" data-toggle="collapse" aria-expanded="false"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
            <div class="page-header">
                <h2>Bootstrap 4 Sidebar Menu</h2>
            </div>
            <p class="lead">A responsive, multi-level vertical accordion.</p>
            <hr>
            <div class="row">
                <div class="col-md-6">
                    <button role="button" class="btn btn-danger" data-toggle="collapse" data-target="#demo" aria-expanded="true">
                        horizontal collapsible
                    </button>
                    <div id="demo" class="width collapse show" aria-expanded="true">
                        <div class="list-group" style="width: 400px;">
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <button role="button" class="btn btn-danger" data-toggle="collapse" data-target="#demo2" aria-expanded="true">
                        vertical collapsible
                    </button>
                    <div id="demo2" class="height collapse show" aria-expanded="true">
                        <div class="list-group" style="width: 400px;">
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<script>
$(document).ready(function () {

    alert("d");

    $('#menu1').live("click",function (e) {
        e.stopPropagation()
    })
    $('#menu2').live("click",function (e) {
        e.stopPropagation()
    })
    $('#menu3').live("click",function (e) {
        e.stopPropagation()
    })

});
</script>


</body>
</html>