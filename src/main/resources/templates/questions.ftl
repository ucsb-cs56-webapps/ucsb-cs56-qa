<!DOCTYPE html>
<html lang="en">

<head>
	<title>Submit a Question</title>
	<link href="css/submit_question.css" rel="stylesheet" />
	<#include "./partials/head.ftl" />
</head>


<body class="body-style">

    <#include "./partials/navbar.ftl" />
    <div class="container">
    	<div class="profile-sidebar">
    		<#include "./partials/profile_card.ftl"/>
    	</div>
    	
    	<div class="content justify-center">
    		<div id="mainbar" >
    			
          <div class="question-context-title">
    			<div>Ask A Question</div>

          <a href="/question-list">View all the questions</a>

    			</div>
    			
          <form action="" method="post">
  				
  				<div  style="position: relative;">
  					<div class="form-item">
	   				<label class="s-label mb4" for="title">Title</label>
	    			<input type="text" id="title" name="question_title" placeholder="What's your question? Be specific."class="s-input">
	    			</div>
  				</div>
  
				<div id="post-editor" style="position: relative;">
					<label class="s-label mb4" for="input-body">Body</label>
					<div class="wmd-container">
					<textarea id="input-body" class="s-input-message" name="post-text"style="opacity: 1; height: 238px;">
					</textarea>
					</div>
				</div>
				
				<div >
				<button id="submit-button" class="s-btn" type="submit" tabindex="120" autocomplete="off">
                 Submit Your Question
        </button>
        </div>


				
				</form>


    		<div id="sidebar" class=asksidebar>

    		</div>
    	</div>
  
    </div>
  </div>
</body>
</html>
