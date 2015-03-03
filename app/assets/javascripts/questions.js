$(document).ready(function() {
  $("#show-answer-form").click(function() {
      $("#show-answer-form").toggle()
      $("#add-answer").toggle()
    })

  $("#add-answer").on("submit", function(event) {
    event.preventDefault();
    var $target = $(event.target);
    $.ajax({
      url: $target.attr('action'),
      type: "POST",
      data: $target.serialize()
    }).done(function(response) {
      $(".answers_list").append(createAnswerRow(response));
      $("#show-answer-form").toggle()
      $("#add-answer").toggle()
    })
  });
});

var createAnswerRow = function(answer){

  var html = "<div class='row'>";
      html += "<div class='vote_container col-xs-2 col-sm-1'>";
      html += "<div class='row' id='cheese_icons'>";
      html += "<a rel='nofollow' data-method='post' href='/answers/" + answer.id + "/votes'><img src='/cheese_up.png' alt='Cheese up' /></a>";
      html += "<a href='/questions/" + answer.question_id + "><img src='/cheese_down.png' alt='Cheese down' /></a>";
      html += "</div>";
      html += "<div class='vote_count'>" + 0 + "</div>";
      html += "</div>";
      html += "<div class='answer col-xs-10 col-sm-11'>";
      html += "<strong>Answer:</strong><br>" + answer.content + "<br><br>";
      html += "By " +  answer.username + "<br>";
      html += "Edited " + answer.updated_at + "hrs ago<br>";
      html += "Answered " + answer.created_at + "hrs ago<br>";
      html += "<hr>";
      html += "<a href='/answers/" + answer.id + "/comments/new'>Add Comment</a>";
      html += "<hr>";
      html += "</div>";
      html += "</div>";
  return html
};
