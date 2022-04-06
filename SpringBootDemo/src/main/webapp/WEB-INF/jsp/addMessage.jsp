<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<jsp:include page="layout/default.jsp" />

<style>
.container {
	margin-top: 50px;
}
</style>

<div class="container">
	<div class="row justify-content-center">
		<div class="col-9">
			<div class="card">
				<div class="card-header">新增訊息</div>
				<div class="card-body">

					<form:form class="form" method="POST" modelAttribute="workMessages">

						<div class="input-group">
							<form:textarea path="text" class="form-control"></form:textarea>
						</div>

						<input type="submit" name="submit" value="新增訊息">
					</form:form>

				</div>
			</div>
		</div>
	</div>

	<div class="row justify-content-center">
		<div class="col-9">
			<div class="card">
				<div class="card-header">
					最新訊息(時間) <span><fmt:formatDate
							pattern="yyyy-MM-dd HH:mm:ss EEEE" value="${lastMessage.added}" /></span>
				</div>
				<div class="card-body">
					<c:out value="${lastMessage.text}" />

				</div>
			</div>
		</div>
	</div>
</div>