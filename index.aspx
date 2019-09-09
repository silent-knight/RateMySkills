<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" 
    AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default"  EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="sliderSection">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
				  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				  <li data-target="#myCarousel" data-slide-to="1"></li>
				  <li data-target       ="#myCarousel" data-slide-to="2"></li>
				  <li data-target="#myCarousel" data-slide-to="3"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">

				  <div class="item active">
				<img src="images/slide1.jpg" alt="Flower" width="460" height="345">
					<div class="carousel-caption">
					  <h3>Rate My Skills</h3>
					  <p>Thanks to the training I have received here, now I feel capable enough to face any challenge.</p>
					  <a class="btn btnSignUp" href="#" data-toggle="modal" data-target="#myModal">Sign Up Free</a>
					</div>
				  </div>

				  <div class="item">
					<img src="images/slide4.jpg" alt="Flower" width="460" height="345">
					<div class="carousel-caption">
					  <h3>Rate My Skills</h3>
					  <p>“Apart from giving me technical skills, it has instilled self-belief in me, which I think is equally important at the workplace.”</p>
					  <a class="btn btnSignUp" href="#" data-toggle="modal" data-target="#myModal">Sign Up Free</a>
					</div>
				  </div>
				
				  <div class="item">
					<img src="images/slide2.jpg" alt="Flower" width="460" height="345">
					<div class="carousel-caption">
					  <h3>Rate My Skills</h3>
					  < <p>Thanks to the training I have received here, now I feel capable enough to now I feel capable enough to face any challenge.</p>
					  <a class="btn btnSignUp" href="#" data-toggle="modal" data-target="#myModal">Sign Up Free</a>
					</div>
				  </div>

				  <div class="item">
					<img src="images/slide3.jpg" alt="Flower" width="460" height="345">
					<div class="carousel-caption">
					  <h3>Rate My Skills</h3>
					  <p>“Apart from giving me technical skills, it has instilled self-belief in me, which I think is equally important at the workplace.”</p>
					  <a class="btn btnSignUp" href="#" data-toggle="modal" data-target="#myModal">Sign Up Free</a>
					</div>
				  </div>
			  
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				  <span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				  <span class="sr-only">Next</span>
				</a>
			</div>
		</div> <!-- End Slider Section -->
	
		<section id="RateMySkilId" class="sectionRateMySkil">
			<div class="blueBack">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 text-center">
							<h1 class="marginBottomNone">Rate My Skill</h1>
							<hr class="hrWhite"></hr>
							<p class="top-para white">We have a great Team,which provides the best services to our clients </p>
							
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="progresCls">
					<div class="row">
						<div class="col-md-3 col-sm-6">
							<div class="progress blue">
								<span class="progress-left">
									<span class="progress-bar"></span>
								</span>
								<span class="progress-right">
									<span class="progress-bar"></span>
								</span>
								<div class="progress-value">90%</div>
							</div>
							<h4 class="rateH text-center white">Subject - 1</h4>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="progress pink">
								<span class="progress-left">
									<span class="progress-bar"></span>
								</span>
								<span class="progress-right">
									<span class="progress-bar"></span>
								</span>
								<div class="progress-value">60%</div>
							</div>
							<h4 class="rateH text-center white">Subject - 2</h4>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="progress green">
								<span class="progress-left">
									<span class="progress-bar"></span>
								</span>
								<span class="progress-right">
									<span class="progress-bar"></span>
								</span>
								<div class="progress-value">80%</div>
							</div>
							<h4 class="rateH text-center white">Subject - 3</h4>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="progress yellow">
								<span class="progress-left">
									<span class="progress-bar"></span>
								</span>
								<span class="progress-right">
									<span class="progress-bar"></span>
								</span>
								<div class="progress-value">75%</div>
							</div>
							<h4 class="rateH text-center white">Subject- 4</h4>
						</div>

					</div>
				</div>
			</div>
		</section>

		
		
		

</asp:Content>

