// $(".grid-item").click(function() {
//     alert("jQuery works!");
// });

// external js: masonry.pkgd.js

var $grid = $('.grid').masonry({
  columnWidth: 124,
  itemSelector: '.grid-item'
});

$grid.on( 'click', '.grid-item-content', function( event ) {
  $( event.currentTarget ).children('.thumb').toggleClass('is-expanded');
  $( event.currentTarget ).parent('.grid-item').toggleClass('is-expanded');
  $( event.currentTarget ).toggleClass('is-expanded');
  $( event.currentTarget ).children('.drink-name').toggleClass('is-expanded');
  $( event.currentTarget ).children('.details').children('.drink-name-big').toggleClass('is-expanded');
  
  $grid.masonry();
});
