$(document).ready(function() {
  $('.js--power').on('click', powerOnHandler)
  $('.js--forward').on('click', moveForwardHandler)
  $('.js--left').on('click', turnLeftHandler)
  $('.js--right').on('click', turnRightHandler)
  $('.js--dance').on('click', danceHandler)
  $('.js--clean').on('click', cleanHandler)
});

// For .dones, make jQuery event to display flash message?

const powerOnHandler = function(event){
  event.preventDefault()
  const $button = $(this)

  const promise = $.ajax({
    url: '/power'
  });

  promise.done(function(response) {
    console.log("Power pressed!")
  })
};

const moveForwardHandler = function(event){
  event.preventDefault()
  const $button = $(this)

  const promise = $.ajax({
    url: '/forward'
  });

  promise.done(function(response) {
    console.log("Moving forward!")
  })
};

const turnLeftHandler = function(event){
  event.preventDefault()
  const $button = $(this)

  const promise = $.ajax({
    url: '/left'
  });

  promise.done(function(response) {
    console.log("Rotating left!")
  })
};

const turnRightHandler = function(event){
  event.preventDefault()
  const $button = $(this)

  const promise = $.ajax({
    url: '/right'
  });

  promise.done(function(response) {
    console.log("Rotating right!")
  })
};

const danceHandler = function(event){
  event.preventDefault()
  const $button = $(this)

  const promise = $.ajax({
    url: '/dance'
  });

  promise.done(function(response) {
    console.log("Roomba dance!")
  })
};

const cleanHandler = function(event){
  event.preventDefault()
  const $button = $(this)

  const promise = $.ajax({
    url: '/clean'
  });

  promise.done(function(response) {
    console.log("Roomba is cleaning!")
  })
};
