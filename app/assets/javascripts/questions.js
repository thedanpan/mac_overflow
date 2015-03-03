$(document).ready(function() {
  $("#show-answer-form").click(function() {
      $("#show-answer-form").toggle()
      $("#add-answer").toggle()
      console.log("hey")
    })

  $("#add-answer").on("submit", function(event) {
    event.preventDefault();
    var $target = $(event.target);
    $.ajax({
      url: $target.attr('action'),
      type: "POST",
      data: $target.serialize()
    }).done(function(response) {
      console.log(response);
      $(".answers_list").append(createAnswerRow(response));
    })
  });
});


// var Answer = function(id, content, question_id, user_id, created_at, updated_at) {
//   this.id = id,
//   this.content = content,
//   this.question_id = question_id,
//   this.user_id = user_id,
//   this.created_at = created_at,
//   this.updated_at = updated_at
// }


var createAnswerRow = function(answer){

  var htmlList = $(".answer-row");
  htmlList.append("<div class="row">
        <div class="vote_container col-xs-2 col-sm-1">
          <div class="row" id="cheese_icons">
              <a rel="nofollow" data-method="post" href="/answers/"" + answer.id + "/votes"><img src="/cheese_up.png" alt="Cheese up" /></a>
              <a href="/questions/"" + answer.question_id +"><img src="/cheese_down.png" alt="Cheese down" /></a>
          </div>
          <div class="vote_count">" +
            answer.votes.count +
          "</div>
        </div>

        <div class="answer col-xs-10 col-sm-11">
          <strong>Answer:</strong><br>" +
          answer.content + "<br><br>

          By" +  answer.user.name + "<br>
          Edited" + answer.updated_at + "hrs ago<br>
          Answered" + answer.created_at + "hrs ago<br>

          <hr>
            <a href="/answers/"" + answer.id + "/comments/new">Add Comment</a>
          <hr>
        </div>
      </div>
")

}