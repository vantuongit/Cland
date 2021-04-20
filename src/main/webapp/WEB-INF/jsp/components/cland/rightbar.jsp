<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <div class="clearfix sidebar">
						<div class="clearfix single_sidebar category_items">
							<h2>Danh mục bất động sản</h2>
							<ul>
								<%-- <c:choose>
									<c:when test="${not empty catList }"> --%>
										<c:forEach items="${catList}" var="item">
											<li class="cat-item"><a href="${pageContext.request.contextPath}/catt/${item.cid}">${item.cname}</a>(12)</li>
										 </c:forEach>
									<%--</c:when>
									<c:otherwise>
										<p>Không có danh mục!</p>
									</c:otherwise>
								</c:choose> --%>
							</ul>
						</div>

						<div class="clearfix single_sidebar">
							<div class="popular_post">
								<div class="sidebar_title"><h2>Xem nhiều</h2></div>
								<ul>
									<li><a href="">Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. </a></li>
									<li><a href="">Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. </a></li>
									<li><a href="">Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. </a></li>
									<li><a href="">Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. </a></li>
									<li><a href="">Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. </a></li>
								</ul>
							</div>
							</div>
						
						<div class="clearfix single_sidebar">
							<h2>Danh mục hot</h2>
							<ul>
								<li><a href="">Category Name <span>(12)</span></a></li>
								<li><a href="">Category Name <span>(12)</span></a></li>
								<li><a href="">Category Name <span>(12)</span></a></li>
								<li><a href="">Category Name <span>(12)</span></a></li>
							</ul>
						</div>
					</div>