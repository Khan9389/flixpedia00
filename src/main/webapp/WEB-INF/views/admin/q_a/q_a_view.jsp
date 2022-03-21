<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.semi.flix.admin.adminQ_A.*" %>
<%@ page import="com.semi.flix.admin.common.*" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>FLIXMEDIA-고객센터 상세보기</title>

    <!-- Custom fonts for this template-->
    <link href="<%=request.getContextPath()%>/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Custom styles for this template-->
    <link href="<%=request.getContextPath()%>/resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
	<script src="https://cdn.ckeditor.com/ckeditor5/32.0.0/classic/ckeditor.js"></script>
</head>

<body id="page-top">
	<%@include file="../include/adminnav.jsp" %>
    <%
    AdminQ_ADto dto = (AdminQ_ADto)request.getAttribute("q_aDto");
    	dto = (dto == null) ? new AdminQ_ADto() : dto;
    %>
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a onclick="goMain()" class="sidebar-brand d-flex align-items-center justify-content-center" >
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3"><strong>FLIXPEDIA-admin</strong></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" onclick="goMain()">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>메인화면</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                관리 메뉴
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>게시판</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">게시판 관리:</h6>

                        <a class="collapse-item" href="${commonURL}/admin/board/writemain">게시글 업로드</a>
                        <a class="collapse-item" href="${commonURL}/admin/board/listmain">게시글 수정/삭제</a>
                        <a class="collapse-item" href="${commonURL}/admin/review/list">평점 관리</a>

                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>회원</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">회원 관리:</h6>
                        <a class="collapse-item" href="${commonURL}/admin/user/list">회원정보관리</a>
                        <a class="collapse-item" href="${commonURL}/admin/q_a/list">고객센터</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                기타
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>기타기능</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">기타 기능 관리:</h6>
                        <a class="collapse-item" href="${commonURL}/admin/list">광고메일전송</a>
                    </div>
                </div>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            <!-- Sidebar Message -->
            <div class="sidebar-card d-none d-lg-flex">
                <img class="sidebar-card-illustration mb-2" style="width:150px; height:auto; "src="<%=request.getContextPath()%>/resources/admin/img/logo.png" alt="...">
                <p class="text-center mb-2"><strong>FLIXPEDIA</strong> 메인페이지로 이동하여 자세한 사항을 확인하세요</p>
                <a class="btn btn-success btn-sm" href="${commonURL}/">도메인이동</a>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form name="myform2" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2" name="keyword2" id="keyword2" value="<%=keyword2 %>"
                                onkeydown="naventerkey();">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button" onclick="goMainSearch()">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                    
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small" id="username"><%=username%></span>
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="${commonURL}/admin/adminmember/myinfo">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    내 정보
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="${commonURL}/member/logout" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

				<!-- Begin Page Content -->
				<form id="myform" name="myform" enctype="multipart/form-data">
				<input type="hidden" name="q_a_seq" id="q_a_seq" value="<%=dto.getSeq() %>"/>
				<input type="hidden" name="pg"      value="<%=pg%>" >
      			<input type="hidden" name="key"     value="<%=key%>" >
      			<input type="hidden" name="keyword" value="<%=keyword%>" >
				
				<div class="container rounded bg-white mt-5 mb-5">
				    <div class="row" style="justify-content:center">
				        <div class="col-md-6">
				            <div class="p-3 py-5">
				                <div class="d-flex justify-content-between align-items-center mb-3">
				                    
				                </div>
				            <div class="row mt-2">
				                <div class="col-md-6">
				                <label class="labels">작성자</label>
				                <input readonly="readonly" type="text" class="form-control" placeholder="category" id="category_code" name="category_code"
				                value="<%=dto.getName()%>" >
				                </div>
				                <div class="col-md-6">
				                <label class="labels">작성일</label>
				                <input readonly="readonly" type="text" class="form-control" placeholder="genre" id="genre_code" name="genre_code"
				                value="<%=dto.getDate()%>" >
				                </div>
				            </div>
				            <div class="row mt-3">
				                <div class="col-md-12">
				                <label class="labels">제목</label>
				                <input readonly="readonly" type="text" class="form-control" placeholder="title" id="title" name="title"
				                value="<%=dto.getTitle()%>">
				                </div>
				            </div>
				            <div class="row mt-3">
				                <div class="col-md-12">
				                <label class="labels">내용</label>
				                <textarea readonly="readonly" class="form-control" id="contents" name="contents" placeholder="enter contents" 
				                ><%=dto.getContent()%></textarea>
				                </div>
				            </div>
				             
				            <div class="mt-5 text-center">
				                <button class="btn btn-primary profile-button" type="button" onclick="goDelete()">삭제</button>
				                <button class="btn btn-primary profile-button" type="button" onclick="goList()">취소</button>
				            </div>
				            <table class="table" style="margin-top:20px" id="tbl_comment">
					              <colgroup>
					                 <col width="10%">
					                 <col width="*">
					                 <col width="20%">
					              </colgroup>
					          <thead>
					            <tr>
					              <th colspan="3"> 댓글</th>
					            </tr>
					          </thead>
					          <tbody >
					          	
					          </tbody>
					        </table>
					          
					            <input type="hidden" name="userid" id="userid" value="<%=userid%>" />
					            <input type="hidden" name="seq" id="seq" value="" />
					            <div class="mb-3" style="margin-top:13px;">
					               <textarea class="form-control" rows="3" id="content" name="content"></textarea>
					            </div>
					            
					            <div class="container mt-3" style="text-align:right;" id="btnRegister">
					               <a href="#none" onclick="goCommentWrite()" class="btn btn-primary"> 
					               <span id="btnCommentSave">댓글등록</span></a>
					            </div>
				            </div>
				        </div>
				    </div>
				</div>
				</form>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Made By HJ &copy; FLIXPEDIA 2022</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">로그아웃</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">로그아웃 하시겠습니까?</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>

                    <a class="btn btn-primary" href="${commonURL}/admin/adminmember/logout">로그아웃</a>

                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="<%=request.getContextPath()%>/resources/admin/vendor/jquery/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin  JavaScript-->
    <script src="<%=request.getContextPath()%>/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<%=request.getContextPath()%>/resources/admin/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="<%=request.getContextPath()%>/resources/admin/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="<%=request.getContextPath()%>/resources/admin/js/demo/chart-area-demo.js"></script>
    <script src="<%=request.getContextPath()%>/resources/admin/js/demo/chart-pie-demo.js"></script>

</body>

</html>
<script>
$(function(){
	goInit();
});


function goList()
{
   var frm = document.myform;
   frm.action="<%=request.getContextPath()%>/admin/q_a/list";
   frm.submit();
}


function goDelete()
{
   if( confirm("삭제하시겠습니까?"))
   {
      var frm = document.myform;
      frm.action="<%=request.getContextPath()%>/admin/q_a/delete";
      frm.submit();
   }
}
function goInit()
{
   var frmData = new FormData(document.myform);
   console.log( $("#q_a_seq").val() );
       
   $.ajax({
      url:"${commonURL}/admin/comment/list?q_a_seq="+$("#q_a_seq").val(),
      type:"GET",
      dataType:"JSON"
   })
   .done( (result)=>{
         //데이터가 배열형태로 전달받음
         //forEach( (item)=>{} )	배열이 요소 하나하나마다 함수를 호출해 준다
         //각 요소를 매개변수로 전달
         //$("$tbl_comment > tbody:last").remove();
         for(i=$("#tbl_comment tr").length-2; i>=0; i--)
        	 $("#tbl_comment tr:last").remove();	//이전에 있던거 전부 삭제
        	 
         //console.log(result);
       	 var userid='<%=userid%>';
       	 
       	 var i=1;
	   	 result.forEach( (item)=>{
	   		 var data = "<tr>";
	   		 	 data += "<td>"+i+"</td>";
	   		 	 data += "<td>"+item.content+"</td>";
   		 	 	data += "<td>"
   		 	 		 +"&nbsp<button type='button' onclick=goCommentDelete('"+item.seq+"')>삭제</button>"
   		 	 		 +"</td>";
	
	   			 data += "</tr>";
	   			 i++;
	   		 //console.log(data);
        	 $("#tbl_comment > tbody:last").append(data);
         })
   })
   .fail( (error)=>{
      console.log(error);
   })
}

function goCommentWrite()
{
   var userid='<%=userid%>';
   if(userid=="")
   {
   		alert("로그인하세요");
   		location.href="${commonURL}/admin/adminindex";
   }
   var queryString = $("form[name=myform]").serialize();
   $.ajax({
      url:"${commonURL}/admin/comment/write",
      data:queryString,
      type:"POST",
      dataType:"json"
   })
   .done( (result)=>{
	   	 $("#comment").val("");
	   	 $("#btnCommentSave").html("답글등록");
	   	 $("#comment_id").val("");
         goInit();
   })
   .fail( (error)=>{
      console.log(error);
   })
}

function goCommentDelete(seq)
{
   var userid ='<%=userid%>';
   $("#seq").val(seq);
   if(userid == ""){
      alert("로그인하세요");
      location.href="${commonURL}/admin/adminindex";
   }
   
   if(!confirm("삭제하시겠습니까?"))
	   return false;
   
   var queryString = $("form[name=myform]").serialize();
   $.ajax({
      url:"${commonURL}/admin/comment/delete",
      data:queryString,
      type:"POST",
      dataType:"json"
   })
   .done( (result)=>{
      $("#content").val("");
      $("#seq").val("");
       goInit();
   })
   .fail( (error)=>{
      console.log(error);
   })
}

</script>