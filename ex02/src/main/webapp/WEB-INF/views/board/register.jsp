<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Tables</title>

  <!-- Custom fonts for this template -->
  <link href="${pageContext.request.contextPath }/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath }/resources/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
  
  <script src="${pageContext.request.contextPath }/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendor/jquery/jquery.min.js"></script>
</head>
<body id="page-top">

	<!-- Page Wrapper -->
  <div id="wrapper">

    <%@include file="../includes/header_sidebar.jsp" %>
    
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

    <%@include file="../includes/header_topbar.jsp" %>

        <!-- Begin Page Content -->
        <div class="container-fluid">

         <div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Board Register</h1>
		</div>
	</div>
	
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Board Register</div>
						<div class="panel-body">
							<form role="form" action="/board/register" method="post">
								<div class="from-gruop">
									<label>Title</label> <input class="form-control" name="title">
								</div>
								
								<div class="form-gruop">
									<label>Text area</label>
									<textarea class="form-control" rows="3" name="content"></textarea>
								</div>
								
								<div class="form-gruop">
									<label>writer</label> <input class="form-control" name="writer">
								</div>
								<button type="submit" class="btn btn-default">Submit Button</button>
								
								<button type="reset" class="btn btn-default">Reset Button</button>
							</form>
							
						</div><!-- end panel-body> -->
					</div><!-- end panel-default -->
				</div><!-- end panel -->
			</div><!-- end row -->
         
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

       <%@include file="../includes/footer.jsp" %>

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->


<%@include file="../includes/setting.jsp" %>
</body>
</html>