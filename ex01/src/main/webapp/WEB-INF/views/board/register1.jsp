<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">게시글 작성</h3>
				</div>
				<!-- /.box-header -->

<form role="form" method="post">
	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputEmail1">제목</label> 
			<input type="text"
				name='title' class="form-control" placeholder="Enter Title">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">내용</label>
			<textarea class="form-control" name="content" rows="3"
				placeholder="Enter ..."></textarea>
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">작성자</label> 
			<input type="text"
				name="writer" class="form-control" placeholder="Enter Writer">
		</div>
	</div>
	<!-- /.box-body -->

	
</form>

<div class="box-footer">
	<button type="submit" class="btn btn-primary">등록</button>
	<button type="submit" class="btn btn-warning">목록</button>
</div>

<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		$(".btn-warning").on("click", function() {
			self.location = "/board/listAll";
		});

		$(".btn-primary").on("click", function() {
			formObj.submit();
		});

	});
</script>


			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@include file="../include/footer.jsp"%>