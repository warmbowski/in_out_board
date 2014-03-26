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
			# $(".sortable").sortable("refresh")
			
		receive: (e,ui) ->
			if $(this).attr('id') == 'in_office'
				in_office=true 
				working=true
				ui.item.removeClass "employee-not-working"
				ui.item.addClass "employee-working"
				working_html="<i class='fa fa-coffee'></i> working"
			else
				in_office=false
				working=false
				ui.item.removeClass "employee-working"
				ui.item.addClass "employee-not-working"
				working_html="<i class='fa fa-clock-o'></i> " + moment().startOf('day').hour(8).add('days',1).fromNow()
			employee_id=ui.item.attr('id').replace /employee_/, ""
			office_id=ui.item.parents().eq(2).attr('id').replace /office_/, ""
			return_day=moment().startOf('day').hour(8).add('days',1).format()
			# console.log(ui.item.children().eq(2).attr('class'))
			# console.log('In ' + in_office, 'On ' + working, 'Emp ' + employee_id, 'Ofc ' + office_id, 'Retn ' + return_day) 
			$.ajax '/statuses.json',
				type: 'POST'
				dataType: 'json'
				data: { status: { in_out: in_office, on_off: working, employee_id: employee_id, return: return_day }}
				error: (jqXHR, status, err) ->
					# console.log(jqXHR, status, err)
				success: (data, status, jqXHR) ->
					# console.log(data, status, jqXHR)
					ui.item.children().eq(2).html(working_html)
					# console.log($('.sortable').html(data))
			$.ajax 'employees/' + employee_id + '.json',
				type: 'PUT'
				dataType: 'json'
				data: { employee: { default_office_id: office_id }}
				error: (jqXHR, status, err) ->
					# console.log(jqXHR, status, err)
				success: (data, status, jqXHR) ->
					# console.log(data, status, jqXHR)


	# $("#dp").datepicker
	# 	buttonImage: ''
	# 	buttonImageOnly: false
	# 	changeMonth: true
	# 	showOn: 'both'
	# 		
	# $('.employee-working').click () ->
	# 	working_html="<i class='fa fa-coffee'></i> working"
	# 	this.children().eq(2).html(working_html)
	# 	