# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ -> 
	$( ".sortable" ).sortable
		connectWith: ".sortable"
		accept: "card"
		container: "drag-boundary"
		revert: "invalid"
		placeholder: "card-placeholder"
		start: ->
			picked=$(this).data().uiSortable.currentItem
			picked.addClass "card-rotate"
			$(this).data('picked',picked.attr('id'))
			console.log($(this).data().picked)
		stop: ->
			picked.removeClass "card-rotate"
			console.log($(this).data().picked)
		receive: ->
			
			io=$(this).attr('id')
			
			console.log(io)