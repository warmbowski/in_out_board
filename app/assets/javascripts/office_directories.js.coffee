# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery -> $( ".card" ).draggable({ containment: ".span10", axis: "x", opacity: 0.5, zIndex: 100, snap: true });