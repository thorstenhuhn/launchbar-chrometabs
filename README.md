# launchbar-chrometabs

Display tabs currently opened in Google Chrome using LaunchBar.

![Screenshot LaunchBar](http://raw.github.com/thorstenhuhn/launchbar-chrometabs/master/img/screenshot01.png)

## Installation

To benefit from version control and diff tools, the Applescript files are kept as plain text `.applescript` files and have to be compiled before being installed:

```bash
$ git clone https://github.com/thorstenhuhn/launchbar-chrometabs.git
$ make
$ make install
```

The last step copies the extension files to LaunchBar's default action location `~/Library/Application Support/LaunchBar/Actions`. Alternatively you can doubleclick on the `ChromeTabs.lbaction` folder in _Finder_.

## Usage

Depending on your system and installed apps and action it should be enough to type _chromet_ (or even _ct_) in LaunchBar's input prompt to call the action.

It is also possible to get there using LaunchBar's navigation feature starting with the associated _Google Chrome_ application and pressing the right arrow key.

![Screenshot Action Selection](http://raw.github.com/thorstenhuhn/launchbar-chrometabs/master/img/screenshot02.png)

## Limitations

Only _normal_ windows are investigated, incognito windows are intentionally skipped.

All tabs are displayed using the default _Google Chrome_ icon. There might be different ways to get a tabs favicon but they are currently considered as dirty hacks:

* Chrome's favicon cache `chrome://favicon/` seems to keep only small versions of icons (16x16) and I don't know howto access the cache from LaunchBar. Accessing it from within a chrome extension is discussed at [Stackoverflow](http://stackoverflow.com/q/10665321/934239) and said to be undocumented and unreliable.
* Chrome's internal database (located in `~/Library/Application Support/Google/Chrome/Default/Favicons` with Chrome Version 47) is locked and has to be copied to gain access. Location and structure might change and exporting the binary data to disk might become a performance issue.

