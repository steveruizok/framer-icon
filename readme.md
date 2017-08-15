# Icon
	
## Introduction
A class for creating Material Design icons, with access to 1600 icons as SVGs.
Adapted from marcbachmann's https://www.npmjs.com/package/material-design-icons-svg.
	

## Installation
Download and place both **icon.coffee** and **icons.json** in your Framer project's modules folder.

Next, at the top of your project's code, type: 

```coffeescript
	{ Icon } = require "Icon"
```
Note that the { } are required!

## Usage

To create an icon, type:

```coffeescript
	myIcon = new Icon
```

You can set the icon and the icon's fill color.

```coffeescript
	myIcon = new Icon
		icon: 'cookie'
		color: '#945200'
```

You can change an existing icon's fill or icon.

```coffeescript
	myIcon.color = 'red' 
	myIcon.icon = 'cup'
```

Apart from that, you can use the Icon instance just like any other Layer instance.

```coffeescript
	myIcon = new Icon
		parent: myLayer
		height: 200, width 200

	myIcon.onTap -> print 'Hello world!'
```

## Troubleshooting

### I get the error: "TypeError: Object is not a constructor". What's up?

You've likely left off the curly brackets around `Icon` when you required the module. Ensure that your require line looks exactly like this: `{ Icon } = require "Icon"`.


### Why do I keep getting the "Icon not found?" error?

This module uses icons from https://materialdesignicons.com/. Unfortunately the icon names used are not always standard to the names Google uses. If you're getting errors, search for the icon at https://materialdesignicons.com/ – the icon you want may be listed there under a different name. If that's the case, use their name for the icon instead when creating your Icon instance.

A common example: `icon: "search"` won't work with this module, but `icon: "magnify"` will. ¯\_(ツ)_/¯
	
Enjoy! @steveruiok
