$(document).ready(function() {
  $('.js--power').on('click', powerOnHandler)
  $('.js--forward').on('click', moveForwardHandler)
  $('.js--left').on('click', turnLeftHandler)
  $('.js--pause').on('click', pauseHandler)
  $('.js--clean').on('click', cleanHandler)
});

// For .dones, make jQuery event to display flash message?

const powerOnHandler = function(){
  const $button = $(this)

  const promise = $.ajax({
    url: $button.attr('action')
  });

  promise.done(function(response) {
    console.log("Power pressed!")
  })
};

const moveForwardHandler = function(){
  const $button = $(this)

  const promise = $.ajax({
    url: $button.attr('action')
  });

  promise.done(function(response) {
    console.log("Moving forward!")
  })
};

const turnLeftHandler = function(){
  const $button = $(this)

  const promise = $.ajax({
    url: $button.attr('action')
  });

  promise.done(function(response) {
    console.log("Rotating left!")
  })
};

const pauseHandler = function(){
  const $button = $(this)

  const promise = $.ajax({
    url: $button.attr('action')
  });

  promise.done(function(response) {
    console.log("Roomba paused!")
  })
};

const cleanHandler = function(){
  const $button = $(this)

  const promise = $.ajax({
    url: $button.attr('action')
  });

  promise.done(function(response) {
    console.log("Roomba is cleaning!")
  })
};










