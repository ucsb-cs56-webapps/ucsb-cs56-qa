<!DOCTYPE html>
<html lang="en">

<!-- start head -->
<head>
	<title>Submit a Question</title>
	<link href="css/submit_question.css" rel="stylesheet" />
	<#include "./partials/head.ftl" />
</head>
<!-- end head -->

<body>
	<!-- navbar starts -->
	<#include "./partials/navbar.ftl" />
    <!-- navbar ends -->


    <div class="container">
    	<div class="content">
    		<div id="mainbar">
    			
    			<!-- Here is the question section -->
    			<div id="question">
    				<div class="post-layout">
	    				<!-- Here is the question title -->
		    			<div class="question-context-title">
		    			Here is the question title
		    			</div>
		    			<!-- Here is the question body -->
		    			<div class="post-text">
		    			</div>
    				</div>
    			</div>
    			<!-- the question section ends-->

    			<!-- Here is the answer section -->
    			<div id=answers-sec>
    				
    				<!-- Here are all the answers -->
    				<div id=answer-1 class=answers>
    					<div class="post-layout wmd-container">
    						

    						<div class="vote-cell">
    							<div class="vote">
	    							<div class="like-collect">
	    							</div>

	    							<div class="count-post">

	    							</div>

	    							<div class="like-collect">
	    							</div>

	    							<div class="count-post">

	    							</div>
	    						</div>
    						
    						</div>

    						<div class="post-text">
    							<p>
    								test post answer
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
	  
					<div id="post-editor" style="position: relative;">
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

