<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 查询变更申请 -->
<!-- 添加完变更申请后的转跳超链接没写 -->

<head>
<title>绿色农产品溯源系统</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico">


    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="${pageContext.request.contextPath}/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/css/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="${pageContext.request.contextPath}/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.map"></script>
	
	
	<!-- 分页设置 -->
	<script type="text/javascript">
		function changePage(pageNum){
			//1 将页码的值放入对应表单隐藏域中
				$("#currentPageInput").val(pageNum);
			//2 提交表单
				$("#pageForm").submit();
		};
		
		function changePageSize(pageSize){
				//1 将页码的值放入对应表单隐藏域中
				$("#pageSizeInput").val(pageSize);
			//2 提交表单
				$("#pageForm").submit();
		};
	</script>


    
</head>

<body>

	<!-- 顶端部件 -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">农户后台管理系统</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">管理农场</a></li>
            <li><a href="#">录入产品</a></li>
            <li><a href="#">管理仓库</a></li>
            <li><a href="#">管理订单</a></li>
            <li><a href="#">管理个人信息</a></li>

          </ul>

        </div>
      </div>
    </nav>

	<!-- 主体表单 -->
    <div class="container-fluid">
      <div class="row">
      
      	<!-- 左侧表单 -->
        <div class="col-sm-3 col-md-2 sidebar" id="lb">
          <ul class="nav nav-sidebar">
            <li ><a href="#">管理农场 </a></li>
            <li ><a href="#" >录入产品</a></li>
            <li><a href="#">管理仓库</a></li>
            <li><a href="#">管理订单</a></li>
            <li class="active"><a href="#">管理个人信息 <span class="sr-only">(current)</span></a></li>
          </ul>
        </div>
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <!-- 主标题 -->
          <h1 class="page-header">个人信息管理</h1>
          
          
          <!-- 圆圈 -->
          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
	            <a href="${pageContext.request.contextPath }/agent/info/agentInformation.jsp">
	            	<img src="${pageContext.request.contextPath }/images/p1.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
	           	</a>
	              <h4>我的信息</h4>              
	            <span class="text-muted">My Information</span>
            </div>

            <div class="col-xs-6 col-sm-3 placeholder">
	            <a href="${pageContext.request.contextPath }/agent/info/changePassword.jsp">
	              <img src="${pageContext.request.contextPath }/images/p3.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
	            </a>  
	            <h4>修改密码</h4>        
	            <span class="text-muted">Change Password</span>
            </div>
           
            <div class="col-xs-6 col-sm-3 placeholder">             
	            <a href="${pageContext.request.contextPath }/agent/contectAdmin.jsp">
	             	<img src="${pageContext.request.contextPath }/images/p2.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
	            </a>
	            <h4>信息变更</h4>
	            <span class="text-muted">Change Information</span>
            </div>
            

            
            <div class="col-xs-6 col-sm-3 placeholder">
	             <a href="${pageContext.request.contextPath}/agent/homepage.jsp">
	              	<img src="${pageContext.request.contextPath }/images/p4.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
	             </a>
	             <h4>返回主页</h4>
	             <span class="text-muted">Back to homepage</span>
            </div>
          </div>


			<!-- 主要内容 -->
          <h2 class="sub-header">信息变更日志</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th width="10%">变更类型</th>
                  <th width="25%">申请内容</th>
                  <th width="10%">变更进度</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="schedule" items="${sessionScope.FarmerInfoPB.list }">
                 	<tr>
                		<td><c:out value="${schedule.applycategory }"></c:out></td>
                		<td><c:out value="${schedule.userapply }"></c:out></td>
                		<td><c:out value="${schedule.zt }"></c:out></td>

                	</tr>               
                </c:forEach>
              </tbody>
            </table>
            <!-- 分页 -->
            <div style="float: left;">
	            <form method=post id="pageForm" name="customerForm" action="${pageContext.request.contextPath }/NongchangAction_list?id_nh=${farmer1.id_nh}">
	 				<!-- 隐藏域.当前页码 -->
					<input type="hidden" name="currentPage" id="currentPageInput" value="${FarmerInfoPB.currentPage }" />
					<!-- 隐藏域.每页显示条数 -->
					<input type="hidden" name="pageSize" id="pageSizeInput" value="5" />                  
	               	<tr>
						<td>
							<span id=pagelink>
								<div style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right">							
									第[<c:out value="${FarmerInfoPB.currentPage }"></c:out>]页,
									共[<c:out value="${FarmerInfoPB.totalPage }"></c:out>]页													
									[<a href="javaScript:void(0)" onclick="changePage(${FarmerInfoPB.currentPage-1 })" style="color:blue" >前一页</A>]
									[<a href="javaScript:void(0)" onclick="changePage(${FarmerInfoPB.currentPage+1 })"  style="color:blue" >后一页</A>] 
	<%-- 								，跳转到
									<input type="text" size="5" id="page" name="page" value="${farmpageBean.currentPage}"  />
									页										
									<input type="button" value="翻页" onclick="changePage($('#page').val())"/> 	 --%>						
								</div>
							</span>
						</td>
					</tr>
				</form>
			</div>
			
          </div>
          
          
          
          
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/js/jquery.min.js"><\/script>')</script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="${pageContext.request.contextPath}/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="${pageContext.request.contextPath}/js/ie10-viewport-bug-workaround.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-paginator.js"></script>
</body>
</html>