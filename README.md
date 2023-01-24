# Flutter Animated Weight Picker

<a href="https://pub.dev/packages/animated_weight_picker"><img src="https://img.shields.io/pub/v/animated_weight_picker.svg?label=animated_weight_picker" alt="animated_weight_picker version"></a>
<a href="https://developer.android.com" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-android-blue">
</a>
<a href="https://developer.apple.com/ios/" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-iOS-blue"></a>

<a href="https://github.com/guru-technolabs/animated_weight_picker/blob/main/LICENSE" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/github/license/guru-technolabs/animated_weight_picker"></a>



![Header image](https://github.com/guru-technolabs/animated_weight_picker/doc/template-1.png)

## Supported Platforms

| ANDROID | IOS |
|---|:---:|

## Intro

A Flutter plugin for showing animated weight picker.
To get weight or any type of value from user.

- [Features](#features)
- [Getting started](#getting-started)
    - [Installation](#installation)
    - [Usage and Examples](#usage-and-examples)
- [Options](#options)

## Features

* The AnimatedWeightPicker is a Flutter package that allows for the selection of weight values in an animated and visually appealing way.
* The package provides a customizable weight picker widget that can be easily integrated into any Flutter project.
* The widget supports both metric and imperial weight units, and allows for the selection of values in increments as small as 0.
* It also includes features such as the ability to set a custom minimum and maximum value, and the ability to customize the appearance of the picker.

## Getting started

### Installation

To install the ```animated_weight_picker``` package in your Flutter project,
add the following line to your pubspec.yaml file
```dart
dependencies:
  animated_weight_picker: ^1.0.0
```  

Then run ```flutter pub get``` to update your dependencies.

To use the package in your code, add the following import statement
```dart
import 'package:animated_weight_picker/animated_weight_picker.dart';
``` 
You can then use the AnimatedWeightPicker widget in your code.

## Usage and Examples

<p>
  <img src="https://github.com/guru-technolabs/animated_weight_picker/doc/example-1.gif"
    alt="An animated image of the weight picker UI" height="400"/>
  &nbsp;&nbsp;&nbsp;&nbsp;
</p>

```dart
// use in statefull widget or in stateless widget in stateless widget you need 
// a statemanagement service or you are unable to change value in setState
final double min = 0;
final double max = 10;
String selectedValue = '';
@override              
void initState() {
  selectedValue = min.toString();
  super.initState();
}
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Animated Weight Picker'),
    ),
    body: Center(
      child: AnimatedWeightPicker(
        min: min,
        max: max,
        onChange: (newValue) {
          setState(() {
            selectedValue = newValue;
          });
        },
      ),
    ),
  );
}
```


## Options

### For Animated Weight Picker:

| Option | Description | Type | Required |
|---|---|---|:---:|
[min](#) | Start or Minimum value of a weight picker/value picker | double | Yes 
[max](#) | End or Maximum value of a weight picker/value picker | double | Yes 
[division](#) | Interval by value | double | No 
[squeeze](#) | Space between two value | double | No 
[dialHeight](#) | Height of the centered or selected value view | double | No 
[dialThickness](#) | Width/thickness of the centered or selected value view | double | No 
[dialColor](#) | Color of the centered or selected value view | Color | No 
[majorIntervalAt](#) | Number of intervals between major intervals | int | No 
[majorIntervalHeight](#) | Height of the major intervals | double | No 
[majorIntervalThickness](#) | Width/thickness of the major intervals | double | No 
[majorIntervalColor](#) | Color of the major intervals | Color | No 
[showMajorIntervalText](#) | Whether to show text on major intervals | bool | No 
[majorIntervalTextSize](#) | Text size on major intervals | double | No 
[majorIntervalTextColor](#) | Text color on major intervals | Color | No 
[subIntervalAt](#) | Number of intervals between sub intervals | int | No 
[subIntervalHeight](#) | Height of the sub intervals | double | No 
[subIntervalThickness](#) | Width/thickness of the sub intervals | double | No 
[subIntervalColor](#) | Color of the sub intervals | Color | No 
[showSubIntervalText](#) | Whether to show text on sub intervals | bool | No 
[subIntervalTextSize](#) | Text size on sub intervals | double | No 
[subIntervalTextColor](#) | Text color on sub intervals | Color | No 
[minorIntervalHeight](#) | Height of the minor intervals | double | No 
[minorIntervalThickness](#) | Width/thickness of the minor intervals | double | No 
[minorIntervalColor](#) | Color of the minor intervals | Color | No 
[showMinorIntervalText](#) | Whether to show text on minor intervals | bool | No 
[minorIntervalTextSize](#) | Text size on minor intervals | double | No 
[minorIntervalTextColor](#) | Text color on minor intervals | Color | No 
[showSelectedValue](#) | Whether to show selected value | bool | No 
[selectedValueColor](#) | Color of the selected value | Color | No 
[selectedValueStyle](#) | Style of the selected value text | TextStyle | No 
[showSuffix](#) | Whether to show suffix | bool | No 
[suffixText](#) | Text of the suffix | String | No 
[suffixTextColor](#) | Color of the suffix text | Color | No 
[suffix](#) | Custom suffix widget | Widget | No 
[onChange](#) | Callback function when value is changed | Function(String newValue) | No 



# LICENSE!

Animated Weight Picker is [MIT-licensed](https://github.com/guru-technolabs/animated_weight_picker/blob/main/LICENSE "MIT-licensed").

---


## Thanks

If something is missing or you want to add some feature, feel free to open a ticket or contribute!