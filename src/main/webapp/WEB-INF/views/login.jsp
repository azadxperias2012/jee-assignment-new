<%@ include file="../common/header.jspf"%>

	<div class="container login-container">
		<div class="text-center text-uppercase"><strong>Sign In</strong></div>
		<div class="text-center text-uppercase text-suplement">Not Registered? Sign Up</div>
		
		<div class="row">
  			<div class="col-md-6">
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
  			</div>
  			<div class="col-md-6">
  				<h1>TBD</h1>  				
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
