# rgbToHex

convert r g b value to hex string
Eg:
r = 0
g = 0
b = 0
Output = #000000

#Get it using pub
pub is a tool for managing Dart packages.

More about: https://www.dartlang.org/tools/pub/cmd/pub-global#running-a-script-from-your-path

To get rgbToHex from github using pub
```
pub global activate --source git https://github.com/xadkile/rgbToHex.git
```

To run rgbToHex

```
pub global run rgbToHex:main <red value> <green value> <blue value>
```

Eg:

```
pub global run rgbToHex:main 1 2 3
output = #010203
```