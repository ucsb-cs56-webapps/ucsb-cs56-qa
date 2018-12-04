<!DOCTYPE html>
<html>
<head>
   <title>Profile</title>
   <link href="css/profile.css" rel="stylesheet" />
   <#include "./partials/head.ftl" />
   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   <script type="text/javascript" src="js/profile.js"></script>
 </head>
 <body>
  <#include "./partials/navbar.ftl" />
  <div class="jumbotron" id="wrapper">
      <div class="row"></div>
      <h1>${name}'s Profile</h1>
      <p class="lead">UserID: ${uid}  </p>
      <p class="lead">Email Address: ${email} </p>
      <hr class="my-4">
      <div class="row">

          <div class="col-4">
            <img src="img/placeholder.jpg" alt="sample profile pic" id="profile_pic">
            <!-- <h4 class="mt-3 big_three">Points: 2400</h4>
            <div class="progress">
              <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%"></div>
              <div class="progress-bar progress-bar-striped progress-bar-animated bg-secondary" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%"></div>
            </div>
            <h5 class="mt-2 big_three">Level 17. Points to next Level: 2400/4800</h5> -->
          </div>

          <div class="col-4">
            <h2 id="q_title">Your Questions:</h2>
            <div class="list-group">
              <#list questions as question>
                <a href="/question-id=${question[0]}" class="list-group-item list-group-item-action flex-column align-items-start active" id="q1">
                  <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1">${question[1]}</h5>
                    <small>${question[4]}</small>
                  </div>
                  <p class="mb-1">${question[2]}</p>
                  <small>${question[3]}</small>
                </a>
              <#else>
                <p class="lead">You Have No Questions Yet!</p>
              </#list>

              <!-- <a href="#" class="list-group-item list-group-item-action flex-column align-items-start" id="q2">
                <div class="d-flex w-100 justify-content-between">
                  <h5 class="mb-1">Sample Question 2</h5>
                  <small class="text-muted">3 days ago</small>
                </div>
                <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                <small class="text-muted">Donec id elit non mi porta.</small>
              </a>
              <a href="#" class="list-group-item list-group-item-action flex-column align-items-start" id="q3">
                <div class="d-flex w-100 justify-content-between">
                  <h5 class="mb-1">Sample Question 3</h5>
                  <small class="text-muted">7 days ago</small>
                </div>
                <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                <small class="text-muted">Donec id elit non mi porta.</small>
              </a> -->

              <!-- <h4 class="mt-3 big_three">Daily Avg. Contributions: 12</h4>
              <div class="progress">
                <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%"></div>
                <div class="progress-bar progress-bar-striped progress-bar-animated bg-secondary" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%"></div>
              </div>
              <h5 class="mt-2 big_three">Doing better than 75% of people!</h5> -->
            </div>
          </div>

          <div class="col-4">
              <form action="/profile-uid=${uid}" method="post">
    			<div  style="position: relative;">
    				<div class="form-item">
			          <label class="s-label mb4" for="title">New Username:</label>
  					  <input type="text" id="rename" name="newName" placeholder="An Awesome New Name!"class="s-input">
  					</div>
    			</div>

  				<!-- <div id="post-editor" style="position: relative;">
  					<label class="s-label mb4" for="input-body">Body</label>
  					<div class="wmd-container">
  					<textarea id="input-body" class="s-input-message" name="content"style="opacity: 1; height: 238px;">
  					</textarea>
  					</div>
  				</div>

  				<div id="post-uid" class="margin-top" style="position: relative;">
  					<label class="s-label mb4" for="input-answer">Your UserID</label>
  					<div class="wmd-container">
  					<textarea id="input-uid" class="s-input-message" name="askerid"style="opacity: 1; height: 38px;">
  					</textarea>
  					</div>
  				</div> -->

  				<div >
                    <button type="submit" id="submit_btn" class="btn btn-success w-50">
                        Change My Username!
                    </button>
  				</div>

  			</form>
            <!-- <h2 id="stat_title">Your Statistics:</h2>
            <div id="piechart"></div>
            <h4 class="mt-3 big_three">Acceptance Rate: 100%</h4>
            <div class="progress">
              <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
            </div>
            <h5 class="mt-2 big_three">Awesome! Keep it up!</h5> -->
          </div>

      </div>
  </div>
 </body>
</html>
