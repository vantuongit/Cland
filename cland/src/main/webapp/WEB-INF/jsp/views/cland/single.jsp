<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/components/taglib.jsp"%>



<c:choose>
	<c:when test="${not empty lands }">
	
		<div class="clearfix content">
			<h1>${lands.lname}</h1>
			<div class="clearfix post-meta">
				<p>
					<span><i class="fa fa-clock-o"></i> Địa chỉ: ${lands.address }</span> <span><i class="fa fa-folder"></i>
					 Diện tích: ${lands.area}m2</span>
				</p>
			</div>

			<div class="vnecontent">
				<p>${lands.description }</p>
			</div>

			<a class="btn" href="">Bài trước</a> <a class="btn" href="">Bài
				kế</a>

		</div>
	</c:when>
	<c:otherwise>
		<p>Không có tin !</p>
	</c:otherwise>
</c:choose>


<div class="more_themes">
	<h2>
		Bất động sản liên quan <i class="fa fa-thumbs-o-up"></i>
	</h2>
	<div class="more_themes_container">
		<div class="single_more_themes floatleft">
			<img src="http://dummyimage.com/220x150/000/fff&text=Thumbnail"
				alt="" /> <a href=""><h2>Magazine Wp Template</h2></a>
		</div>
		<div class="single_more_themes floatleft">
			<img src="http://dummyimage.com/220x150/000/fff&text=Thumbnail"
				alt="" /> <a href=""><h2>Magazine Wp Template</h2></a>
		</div>
		<div class="single_more_themes floatleft">
			<img src="http://dummyimage.com/220x150/000/fff&text=Thumbnail"
				alt="" /> <a href=""><h2>Magazine Wp Template</h2></a>
		</div>

	</div>
</div>


