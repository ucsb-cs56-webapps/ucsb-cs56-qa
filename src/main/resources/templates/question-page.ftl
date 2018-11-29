<!DOCTYPE html>
<html lang="en">

<!-- start head -->
<head>
	<title>Submit a Question</title>
	<link href="css/submit_question.css" rel="stylesheet" />
	<#include "./partials/head.ftl" /> 
</head>
<!-- end head -->

<body class="body-style">
	<!-- navbar starts -->
	<#include "./partials/navbar.ftl" />
    <!-- navbar ends -->


    <div class="container">
    	<div class="content justify-center">
    		<div id="mainbar-question">
    			
    			<!-- Here is the question section -->
    			<div id="question" class="btm_border wmd-container">
    				<div class="post-layout">
	    				<!-- Here is the question title -->
		    			<div class="question-context-title btm_border">
		    			Here is the question title
		    			</div>
		    			<!-- Here is the question body -->
		    			<div class="vote-cell">
    								<#include "./partials/vote_button.ftl" /> 
    						</div>
		    			<div class="post-text wmd-container border4 margin-top5">
		    				
		    				
		    				<p>
		    					test question body
		    				</p>
		    			
		    			</div>
    				</div>
    			</div>
    			<!-- the question section ends-->

    			<!-- Here is the answer section -->
    			<div id="answers-sec" class="btm_border wmd-container margin-top">
    				
    				<!-- Here are all the answers -->

    				<label id="answer-header" class="s-label mb4" for="input-answer">2 Answer</label>
    				
    				<div id="answer-1" class="answers">
    					<div class="post-layout wmd-container">

    						<div class="vote-cell">
    								<#include "./partials/vote_button.ftl" /> 
    						</div>
    						
    						
    						
    						<div class="post-text wmd-container border4 margin-top5">
    							<div class="post-user">
    								<#include "./partials/post-user.ftl" /> 
    							</div>
    							<p>
    								test post answer 1
    							</p>

    							
    						</div>

    						<!-- Here shows the user who submits this answer -->
    						<div class="wmd-container">
    						</div>
    					</div>
    				</div>

    				<div id="answer-2" class="answers">
    					<div class="post-layout wmd-container">

    						<div class="vote-cell">
    								<#include "./partials/vote_button.ftl" /> 
    						</div>
    						
    						
    						
    						<div class="post-text wmd-container border4 margin-top5">
    							<div class="post-user">
    								<#include "./partials/post-user.ftl" /> 
    							</div>
    							
    							<p>
    								test post answer 2
    							</p>
    							

    						</div>

    						<!-- Here shows the user who submits this answer -->
    						<div class="wmd-container">
    						</div>
    					</div>
    				</div>

    				<!--the answers end-->
    				
    				<!-- the answer form section -->
	    			<form action="" method="post">
	  
					<div id="post-editor" class="margin-top" style="position: relative;">
						<label class="s-label mb4" for="input-answer">Your Answer</label>
						<div class="wmd-container">
						<textarea id="input-answer" class="s-input-message" name="answer-text"style="opacity: 1; height: 238px;">
						</textarea>
						</div>
					</div>
					
					<div class="wmd-container">
					<button id="answer-button" class="s-btn" type="answer" tabindex="120" autocomplete="off">
	                 Submit Your Answer
	                </button>
	                </div>
					
					</form>
					<!-- the answer form section ends-->
	    		
	    		</div>
    			<!-- the answer section ends-->








    		</div>
    	</div>
    </div>


</body>

