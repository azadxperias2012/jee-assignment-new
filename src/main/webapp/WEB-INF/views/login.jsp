<%@ include file="../common/header.jspf"%>

	<div class="container login-container">
		<div class="text-center text-uppercase"><strong>Sign In</strong></div>
		<div class="text-center text-uppercase text-suplement">Not Registered? Sign Up</div>
		
		<div class="row row-login">
  			<div class="col-md-6 column-container">
				<form action="<spring:url value="/login"/>" method="post">
					<div class="form-group">
						<input type="text" class="form-control" name="email"
							placeholder="EMAIL">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" name="password"
							placeholder="PASSWORD">
					</div>
					<div class="form-group">
						<div class="text-right text-uppercase text-suplement">Forgot Password?</div>
					</div>
					<button type="submit" class="btn btn-primary button-app button-black">Sign In</button>
				</form>
  			</div>
  			<div class="col-md-6 column-container content-right">
  				<div class="row">
  					<div class="col-md-12">
  						<button type="button" class="btn btn-primary button-app button-google">
					      <span class="fa fa-google-plus fa-lg"></span> Sign in with Google
					    </button>
  					</div>
  				</div>
  				
  				<div class="row">
  					<div class="col-md-12">
  						<button type="button" class="btn btn-primary button-app button-facebook">
					      <span class="fa fa-facebook fa-lg"></span> Sign in with Facebook
					    </button>
  					</div>
  				</div>
  			</div>
		</div>
		
		<!-- 
		<form action="/login" method="post">
			<div class="form-group">
				<input type="text" class="form-control" name="email"
					placeholder="EMAIL">
			</div>
			<div class="form-group">
				<input type="password" class="form-control" name="password"
					placeholder="PASSWORD">
				<div class="text-right text-uppercase text-suplement">Forgot Password?</div>
			</div>
			<button type="submit" class="btn btn-primary">Login</button>
		</form>
		-->
	</div>

<%@ include file="../common/footer.jspf"%>
