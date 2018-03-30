<%@ include file="../common/header.jspf"%>
	<div class="container full-height">
		<h1 class="text-right" style="padding-bottom:5px;">Welcome ${userEmail}</h1>
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
			    <c:forEach items="${order.items}" var="item">
			    	<div class="row">
			    		<div class="col-md-6">
			    			<div class="row">
			    				<div class="col-md-3 image-outer">
			    					<a href="#" class="thumbnail image-thumbnail">
		    							<img src="http://via.placeholder.com/75x75">
			    					</a>
			    				</div>
			    				<div class="col-md-9">
			    					<div class="row item-main">
			    						<div class="col-md-12 item-main-content">${item.itemName}</div>
			    					</div>
			    					<c:if test="${item.itemDescription != null && item.itemDescription != ''}">
			    						<div class="row item-supplement">
			    							<div class="col-md-12">${item.itemDescription}</div>
			    						</div>
			    					</c:if>
			    					<c:if test="${item.itemSeller != null && item.itemSeller != ''}">
			    						<div class="row item-supplement">
			    							<div class="col-md-12">Seller: ${item.itemSeller}</div>
			    						</div>
			    					</c:if>
			    					
			    				</div>
			    			</div>						    
			    		</div>			    		
			    		<div class="col-md-1">
			    			<div class="row item-main">
			    				<div class="col-md-12">&#8377;${item.price}</div>
			    			</div>
			    			<c:if test="${item.offers != null && item.offers > 0}">
			    				<div class="row item-supplement">
			    					<div class="col-md-12">
			    						<span class="item-offer">Offers: </span>${item.offers}
			    					</div>
			    				</div>
			    			</c:if>
			    		</div>
			    		<div class="col-md-5">
			    			<div class="row item-main">
			    				<div class="col-md-12">Delivered on ${item.itemDeliveryDate}</div>
			    			</div>
			    			<c:if test="${item.itemDeliveryStatus != null && item.itemDeliveryStatus != ''}">
			    				<div class="row item-supplement">
			    					<div class="col-md-12">${item.itemDeliveryStatus}</div>
			    				</div>
			    			</c:if>
			    		</div>
			    	</div>
			    </c:forEach>
			  </div>
			  <div class="panel-footer order-panel-footer">
			  	<div class="row">
			  		<div class="col-md-6 text-left">Ordered On <span class="order-panel-footer-span">${order.orderedDate}</span></div>
			  		<div class="col-md-6 text-right">Order Total 
			  			<span class="order-panel-footer-span"><strong>&#8377;${order.orderTotal}</strong></span>
			  		</div>
			  	</div>
			  </div>
			</div>
		</c:forEach>
		
	</div>

<%@ include file="../common/footer.jspf"%>
