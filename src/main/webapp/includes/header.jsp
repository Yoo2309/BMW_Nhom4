<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Security-Policy" content="
    default-src 'self' 'unsafe-eval' 'unsafe-inline';
    style-src 'self' https://cdnjs.cloudflare.com https://cdn.jsdelivr.net 'sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==' http://java.sun.com/jsp/jstl/core https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css';
    script-src 'self' https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js https://cdn.jsdelivr.net/npm/dompurify@2.3.0/dist/purify.min.js https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js https://cdnjs.cloudflare.com https://cdn.jsdelivr.net 'sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3' 'sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==' 'nonce-2726c7f26c';
    font-src 'self' https://cdnjs.cloudflare.com;
    img-src 'self' http://www.w3.org/2000/svg https://fit.hcmute.edu.vn/Resources/Images/SubDomain/fit/logo-news.png https://fit.hcmute.edu.vn/Resources/Images/SubDomain/fit/logo-cntt2021.png https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930;
    connect-src 'self';
    form-action 'self'">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="icon" href="Content/public/images/it_spkt.png"
	type="image/x-icon" />
<link rel="shortcut icon" href="Content/public/images/it_spkt.png" />
<title>::. Th&#244;ng b&#225;o .::</title>
<link rel="stylesheet" media="all" type="text/css"
	href="Content/public/css/bootstrap.min.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="Content/public/css/style.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="Content/public/css/footable.core.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="Content/public/css/footable.standalone.css" />
<link href="Content/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="Content/font-awesome-4.7.0/css/font-awesome.css"
	rel="stylesheet" />

<script type="text/javascript"
	src="Content/public/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="Content/public/js/footable.js"></script>
<script type="text/javascript" src="Content/public/js/my_script.js"></script>
<script src="Content/public/ckeditor/ckeditor.js"></script>
<link href="Content/public/datepicker/jquery.simple-dtpicker.css"
	rel="stylesheet" />
<script src="Content/public/datepicker/jquery.simple-dtpicker.js"></script>

<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<!--[if gt IE 8]>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" >
    <![endif]-->
<!-- Font Awesom core -->
<!--[if IE 7]>
    <link rel="stylesheet" href="http://dkdt.fit.hcmute.edu.vn/public/font-awesome/css/font-awesome-ie7.min.css">
    <link rel="stylesheet" href="http://dkdt.fit.hcmute.edu.vn/public/font-awesome/css/bootstrap-ie7.css">
    <![endif]-->
</head>
<body>
	<div id="menu">
		<li class="list-group-item"
			style="text-align: right; font-weight: bold; font-family: verdana; background-color: #efefef;">Danh
			Mục</li> <a href="Home" class="list-group-item"><img
			src="Content/public/images/house-icon.png" width="24" height="24" /><span
			class="pull-right"><i class="icon-chevron-right"></i></span> Trang
			Chủ</a> <a href="/Home/LoaiDeTai" class="list-group-item "><img
			src="Content/public/images/Actions-view-calendar-list-icon.png"
			width="24" height="24" /><span class="pull-right"><i
				class="icon-chevron-right"></i></span> Danh sách đề tài</a> <a
			href="/Home/ThongTinGiangVien" class="list-group-item "><img
			src="Content/public/images/Teacher-icon.png" width="24" height="24" /><span
			class="pull-right"><i class="icon-chevron-right"></i></span> Thông
			tin giảng viên</a> <a href="Home/ThongTinSinhVien"
			class="list-group-item "> <img
			src="Content/public/images/Student-3-icon.png" width="24" height="24" />
			<span class="pull-right"><i class="icon-chevron-right"></i></span>
			Thông tin sinh viên
		</a> <a href="/Home/HuongDanDangKy" class="list-group-item "><img
			src="Content/public/images/Actions-help-contents-icon.png" width="24"
			height="24" /><span class="pull-right"><i
				class="icon-chevron-right"></i></span> Hướng dẫn đăng ký</a> <a
			href="/Home/ThongKe" class="list-group-item "><img
			src="Content/public/images/chart-icon.png" width="24" height="24" /><span
			class="pull-right"><i class="icon-chevron-right"></i></span> Thống kê</a>
		<a data-toggle="modal" href="#seach_box" class="list-group-item"><img
			src="Content/public/images/Search-icon.png" width="24" height="24" /><span
			class="pull-right"><i class="icon-chevron-right"></i></span> Tìm kiếm</a>
		<hr />
	</div>
	<div id="container">
		<div id="navigation">
			<div id="banner-desktop">
				<img src="Content/public/images/logo.png" width="1518" height="160"></img>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
</body>
</html>
