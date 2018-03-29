<%@ include file="../common/header.jspf"%>
	<div class="container full-height">
		<h1>
			Hello world! ${user.email}  
		</h1>
		
		<c:forEach items="${orders}" var="order">
			<div class="panel panel-default">
			  <div class="panel-heading">
			  	<div class="row">
			  		<div class="col-md-8">
			  			<div class="order-id">
			  				${order.orderId}
			  			</div>
			  		</div>
			  		<div class="col-md-4 order-col-4">
			  			<div class="order-static-button-border">
			  				<div class="order-static-button">
			  					<i class="material-icons static-button" style="font-size: 16px;">live_help</i> Need Help
			  				</div>
			  			</div>
			  			<div class="order-static-button-border">
			  				<div class="order-static-button">
			  					<i class="fa fa-map-marker static-button"></i> Track
			  				</div>
			  			</div>
			  		</div>
			  	</div>
			  </div>
			  <div class="panel-body">
			    Panel content
			  </div>
			  <div class="panel-footer">Order Total: ${order.orderTotal}</div>
			</div>
		</c:forEach>
		
	</div>

<%@ include file="../common/footer.jspf"%>
