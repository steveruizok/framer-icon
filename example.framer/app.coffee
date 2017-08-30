{ Icon } = require 'Icon'

new Icon
	x: Align.center
	y: Align.center(-100)

new Icon
	point: Align.center
	action: -> print _.random(5)

checkbox = new Icon
	x: Align.center
	y: Align.center(100)
	toggle: true
	action: -> print _.random(5)

checkbox.on "change:isOn", (isOn) ->
	@icon = if isOn then 'checkbox-marked' else 'checkbox-blank-outline'

new Icon
	x: Align.center
	y: Align.center(200)
	toggle: true
	disabled: true
	action: -> print _.random(5)