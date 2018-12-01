<!DOCTYPE html>
<html lang="en">

<head>
	<title>Submit a Question</title>
	<link href="css/submit_question.css" rel="stylesheet" />
	<#include "./partials/head.ftl" />
</head>


<body>
	<!-- navbar starts -->
	<#include "./partials/navbar.ftl" />
    <!-- navbar ends -->
    
    <div class="container">
    	<div class="content">
    		<div id="mainbar" class="askmainbar">
    			<div class="question-context-title">
    			Ask A Question
    			</div>
    			<form action="" method="post">
  				
  				<div>
	   				<label for="Title">Title:</label>
	    			<input type="text" id="Title" name="question_title" class="s_input">
  				</div>
  
				<div>
					<label for="input-body">Body:</label>
					
					<textarea id="input-body" class="s-input-message" name="post-text"style="opacity: 1; height: 238px;">
					</textarea>
				</div>

				<div class="button">
  					<button type="submit">Submit</button>
				</div>
				
				</form>
    		</div>
    	</div>
  
    </div>
</body>
</html>

