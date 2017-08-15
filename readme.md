# Icon
	
## Introduction
A class for creating Material Design icons, with access to 1600 icons as SVGs.
Adapted from marcbachmann's https://www.npmjs.com/package/material-design-icons-svg.
	

## Installation
Download and place icon.coffee and icons.json in your project's modules folder.
At the top of your project, type: "{Icon} = require "icon"


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

### Why do I keep getting the "Icon not found?" error?

The icon names used by this module are not always standard to Google's listings. If you're getting errors, search for the icon at https://materialdesignicons.com/. It may be listed there under a different name. If that's the case, use their name for the icon instead when creating your Icon instance.

A common example: `icon: "search"` won't work, but `icon: "magnify"` will. ¯\_(ツ)_/¯
	
Enjoy! @steveruiok