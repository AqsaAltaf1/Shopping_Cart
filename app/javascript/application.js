// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";
import "popper";
import "bootstrap";
import "jquery";
import "DataTable";

$(document).on("turbo:load", () => {
  $("#search-table").DataTable();
});



