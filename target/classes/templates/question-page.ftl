<!DOCTYPE html>
<html lang="en">

<!-- start head -->
<head>
	<title>Submit an Answer</title>
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
		    			<div>${question[1]}</div>

                        <a href="/question-list" float="right">View all the questions</a>
		    			</div>
		    			<!-- Here is the question body -->
		    			<div class="vote-cell">
    								<#include "./partials/vote_button.ftl" />
    						</div>
		    			<div class="post-text wmd-container border4-ffc20e margin-top5">


		    				<p>
		    					${question[2]}
		    				</p>

		    			</div>
    				</div>
    			</div>
    			<!-- the question section ends-->

    			<!-- Here is the answer section -->
    			<div id="answers-sec" class="btm_border wmd-container margin-top">

    				<!-- Here are all the answers -->

    				<label id="answer-header" class="s-label mb4" for="input-answer">${answers?size} Answer</label>

                    <#list answers as answer>
    				<div id="answer-${answer?counter}" class="answers">
    					<div class="post-layout wmd-container">

    						<div class="vote-cell">
    								<#include "./partials/vote_button.ftl" />
    						</div>



    						<div class="post-text wmd-container border4-5893d4 margin-top5">
    							<div class="post-user">
                                    <img class="ml-2" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAZCAYAAADE6YVjAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAHaSURBVEhLYxgFowAvcPIOtnX3DZ/lGxKzx9UnbKarZ5A1VIo6wMM/rNfNN/Rvc0ffn0VLV/1vbu/94+oT+tfDL7wHqoQy4OwdEu3pH/Hr5q07/5HBjVu3/3sGRPx28g6JgColH/gERV9asnzNP6jZKAAk7hMcfQGqlHwADKZfFy9fhRqLCkDibj5hP6FKyQfAIHl36MhxqLGo4CBQ3DMw8h1UKfnAMyByUVF53Y9//1BDDMQvLKv94RUQsRCqlHzg5h8u6+4X/r6xtfvni5evwBa8ePHqP4gPEgdGvDRUKWXA2TNcDeijEy7eIf89/CL+gGjvwKijLt5BqlAl1AMuPqFyjl7BViAaKkR1wAgKOhevcE0QDeJDhKkAnH0CTYFBtMLDP/wLKJhgGMR39wtbCpKHKiUd2IeG8rj5hS0CFSd1zZ0/T54+C47w379/g+kTp87+B4mDihegZZONjdNYoVqJAy4uofxeAVEXo5Oyvt9/8BCconABkHx0UuZ3r4DIsyB9UCMIA2DBtyM5s/DH16/foEbhByB1yZkF34FBuAVqBH4ASj1egVE/nz57ATWCOABSD9Ln7BNiCTUKNwgNDWXetnOvG1CfC6n44MGjTiD9UKNGATmAgQEALM3GBzFt50AAAAAASUVORK5CYII=" >
                                <span>${answerer[answer?index]}</span>
                                <span>${answer[4]}</span>

    							</div>
    							<p>
    								${answer[2]}
    							</p>


    						</div>

    					</div>
    				</div>
                    </#list>


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
