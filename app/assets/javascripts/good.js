$(function() {
  function destroyBuildHTML(data){
    var html = `<form class="heart-icon__on" action="/goods/${data.item_id}" accept-charset="UTF-8" method="post">
                    <i class="heart-icon__not-push glyphicon glyphicon-heart"></i>
                  </form>
                  <span class="heart-icon__text">
                  ${data.length} 
                  </span>`
    return html;
  }

  function addLengthHTML(data){
    var html = `<span class="heart-icon__text">
                  ${data.length} 
                  </span>`
    return html;
  }

  $(document).on('click', '.heart-icon__on', function(e) {
    e.preventDefault();
    var url = $(this).attr('action');
    var formData = new FormData(this);
    $.ajax({
      url: url,
      type: "post",
      dataType: 'json',
      data: formData,
      processData: false,
      contentType: false
    })
    .done(function(data){
      $('#' + data.item_id).find('.heart-icon__on').removeClass("heart-icon__on").addClass("heart-icon__off");  
      $('#' + data.item_id).find('.heart-icon__not-push' ).removeClass("heart-icon__not-push").addClass("heart-icon__push");  

      var insertHTML = addLengthHTML(data);
      if (data.length == 1) {
         $('#' + data.item_id).find('.heart-icon__off').append(insertHTML); 
      }else{
         $('#' + data.item_id).find('.heart-icon__text').text(data.length);
      }
      data.length = "";
    })
    .fail(function(){
      console.log('heart-icon__on error');
    })
  });

  $(document).on('click', '.heart-icon__off', function(e) {
    e.preventDefault();
    var url = $(this).attr('action');
    var formData = new FormData(this);
    $.ajax({
      url: url,
      type: "delete",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      $('#' + data.item_id).find('.heart-icon__off').removeClass("heart-icon__off").addClass("heart-icon__on");  
      $('#' + data.item_id).find('.heart-icon__push').removeClass("heart-icon__push").addClass("heart-icon__not-push");
      if (data.length == 0) data.length = "";
      $('#' + data.item_id).find('.heart-icon__text').text(data.length);
    })
    .fail(function(){
      console.log('heart-icon__off error');
    })
  });
})