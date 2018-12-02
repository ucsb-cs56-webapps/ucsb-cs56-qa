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

		    			<a href="/ask-question" float="right">Ask a question</a>
		    		</div>


		    		<!-- context title end-->

		    		<!-- question lists -->
		    		<#list questions as question>

		    		<div id="question-${question?counter}" class="answers">

		    				<div class="post-user">
	    						<img class="ml-2" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAZCAYAAADE6YVjAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAHaSURBVEhLYxgFowAvcPIOtnX3DZ/lGxKzx9UnbKarZ5A1VIo6wMM/rNfNN/Rvc0ffn0VLV/1vbu/94+oT+tfDL7wHqoQy4OwdEu3pH/Hr5q07/5HBjVu3/3sGRPx28g6JgColH/gERV9asnzNP6jZKAAk7hMcfQGqlHwADKZfFy9fhRqLCkDibj5hP6FKyQfAIHl36MhxqLGo4CBQ3DMw8h1UKfnAMyByUVF53Y9//1BDDMQvLKv94RUQsRCqlHzg5h8u6+4X/r6xtfvni5evwBa8ePHqP4gPEgdGvDRUKWXA2TNcDeijEy7eIf89/CL+gGjvwKijLt5BqlAl1AMuPqFyjl7BViAaKkR1wAgKOhevcE0QDeJDhKkAnH0CTYFBtMLDP/wLKJhgGMR39wtbCpKHKiUd2IeG8rj5hS0CFSd1zZ0/T54+C47w379/g+kTp87+B4mDihegZZONjdNYoVqJAy4uofxeAVEXo5Oyvt9/8BCconABkHx0UuZ3r4DIsyB9UCMIA2DBtyM5s/DH16/foEbhByB1yZkF34FBuAVqBH4ASj1egVE/nz57ATWCOABSD9Ln7BNiCTUKNwgNDWXetnOvG1CfC6n44MGjTiD9UKNGATmAgQEALM3GBzFt50AAAAAASUVORK5CYII=" >
								<span>${question[4]}<span>
	    					</div>
			    			<div class="question-title wmd-container border4-5893d4 margin-top5">

	    						<a href="/question-page">${question[1]}</a>


	    					</div>
    				</div>
    				<#else>
    					<p>No Questions!</p>
    				</#list>


		    	</div>




    		</div>
    	</div>
    </div>
</body>
