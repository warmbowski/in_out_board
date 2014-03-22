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
		opacity: "0.6"
		start: ->
			$(this).data().uiSortable.currentItem.addClass "card-rotate"
			
		stop: ->
			$(this).data().uiSortable.currentItem.removeClass "card-rotate"
			
		receive: (e,ui) ->
			if $(this).attr('id') == 'in_office'
				in_office=true 
				working=true
			else
				in_office=false
				working=false
			employee_id=ui.item.attr('id').replace /employee_/, ""
			console.log(in_office, working, employee_id) 
			$.ajax '/statuses.json',
				type: 'POST'
				data: { status: { in_out: in_office, on_off: working, employee_id: employee_id }}
				dataType: 'json'
				#contentType: 'application/json; charset=utf-8'
				error: (err1, err2, err3) ->
					console.log$(err1, err2, err3)
				success: (succ1, succ2, succ3) ->
					console.log$(succ1, succ2, succ3)
