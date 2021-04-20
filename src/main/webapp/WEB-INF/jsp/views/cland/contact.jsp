<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<div class="clearfix content">
	<c:if test="${not empty msg }">
		<div style="color: green; margin-left: 30%; font-weight: bold;" class="alert alert-success" role="alert">${msg }</div>
		<br /><br /><br />
	</c:if>
	<c:if test="${not empty err}">
		<div class="alert alert-warning" role="alert">${err}</div>
		<br /><br /><br />
	</c:if>

	<div class="contact_us">

		<h1>Liên hệ với chúng tôi</h1>

		<p>
			TRUNG TÂM ĐÀO TẠO LẬP TRÌNH VINAENTER EDU<br /> Trụ sở: 154 Phạm Như
			Xương, Liên Chiểu, Đà Nẵng<br /> Web: <a
				href="http://vinaenter.edu.vn" title="">www.vinaenter.edu.vn</a>
		</p>


		<form action="${pageContext.request.contextPath }/contact"
			method="post">
			<p>
				<input name="ct_fullname" type="text" class="wpcf7-text"
					placeholder="Họ tên *" />
					
			</p>
			<p>
				<input name="ct_email" type="text" class="wpcf7-email"
					placeholder="Email *" />
						
			</p>
			<p>
				<input name="ct_subject" type="text" class="wpcf7-text"
					placeholder="Chủ đề *" />
					
			</p>
			<p>
				<textarea name="ct_content" class="wpcf7-textarea"
					placeholder="Nội dung *"></textarea>
						
			</p>
			<p>
				<input type="submit" class="wpcf7-submit" value="Gửi liên hệ" />
			</p>
		</form>

	</div>

</div>

