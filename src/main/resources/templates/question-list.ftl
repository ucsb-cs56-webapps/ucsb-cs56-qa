<!DOCTYPE html>
<html lang="en">

<!-- start head -->
<head>
	<title>All the questions</title>
	<link href="css/submit_question.css" rel="stylesheet" />
	<#include "./partials/head.ftl" /> 
</head>
<!-- end head -->

<body>
	<!-- navbar starts -->
	<#include "./partials/navbar.ftl" />
    <!-- navbar ends -->

    <div class="container">
    	<div class="content justify-center">
    		<div id="mainbar-question">
    			<div id="question" class="btm_border wmd-container">
    				<!-- context title-->
    				<div class="question-context-title btm_border">
		    			<div>All questions</div>

		    			<a href="/questions" float="right">Ask a question</a>
		    		</div>


		    		<!-- context title-->
		    		
		    		<div id="question-1" class="answers">
		    			
		    				<div class="post-user">
	    						<#include "./partials/post-user.ftl" /> 
	    					</div>
			    			<div class="question-title wmd-container border4-5893d4 margin-top5">
	    							
	    						<a href="/question-page">test question title 1</a>

	    							
	    					</div>
    					</div>


		    		
		    		</div>



    			</div>
    		</div>
    	</div>
    </div>
</body>