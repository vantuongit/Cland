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
											<li class="cat-item"><a href="${pageContext.request.contextPath}/cat/${item.cid}">${item.cname}</a>(12)</li>
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
								<c:choose>
									<c:when test="${not empty landsList }">
										<c:forEach items="${landsList }" var="item">
											<li><a href="${pageContext.request.contextPath}/detail/${item.lid}">${item.lname}</a></li>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<p>Không có tin nào!!!</p>
									</c:otherwise>
								</c:choose>
								</ul>
							</div>
							</div>
						
						<div class="clearfix single_sidebar">
							<h2>Danh mục hot</h2>
							<ul>
							<c:forEach items="${catList}" var="item">
								<li><a href="${pageContext.request.contextPath}/cat/${item.cid}">${item.cname}<span>(12)</span></a></li>
							</c:forEach>
							</ul>
						</div>
					</div>