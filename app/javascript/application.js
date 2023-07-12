// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
import "@hotwired/turbo-rails"
import "controllers"
import "popper"
import "bootstrap"

function Data(){
  if (confirm("you need to login first")) {
     window.location.href ='/users/sign_in';
  }
}