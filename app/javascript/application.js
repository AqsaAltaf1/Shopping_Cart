// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery.rateyo
import "@hotwired/turbo-rails";
import "controllers";
import "popper";
import "bootstrap";
import "jquery";
import "DataTable";

$(document).on("turbo:load", () => {
  $("#search-table").DataTable();
  $("#search-category").DataTable();
  $("#search-order").DataTable();
  $("#search-shop").DataTable();
  

  $(function () {
    $("#rateYo").rateYo()
    .on("rateyo.change", function (e, data) {
    var rating = data.rating;
    $(this).next().text(rating);
    $("#cashBack").val(rating);
    console.log(rating); 
    });       
  });


  $("#movie_rating").each( function() {
    var rating = $(this).attr("data-rating");
    console.log(rating)
    $(this).rateYo(
      {
          rating: rating,
          fullStar: true,
          readOnly: true,
          starWidth: "20px"
      }
    );
});


$(".product_rating").each( function() {
  var rating = $(this).attr("user_rating");
  console.log(rating)
  $(this).rateYo(
    {
        rating: rating,
        fullStar: true,
        readOnly: true,
        starWidth: "15px"
    }
  );
});

});



