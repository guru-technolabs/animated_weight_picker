library animated_weight_picker;

import 'package:flutter/material.dart';
part 'src/utils.dart';
part 'src/enums.dart';
part 'src/wheel_model.dart';

class AnimatedWeightPicker extends StatefulWidget {
  // G1 START
  /// Start or Minimum value of a weight picker/value picker
  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final double min;

  /// End or Maximum value of a weight picker/value picker
  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final double max;

  /// Interval by value
  ///
  /// ```dart
  /// double division= value+division;
  /// 'division value increment for interval'
  /// ```
  ///
  /// Example No. 1)
  ///
  /// ```dart
  /// if (min = 0 && max = 10 && dividion = 0.1)
  /// ```
  ///
  /// Thene Value Picker Starts with the [10, 10.1, 10.2, 10.3 .....so on upto ... 9.8, 9.9, 10]
  ///
  /// Example No. 2)
  ///
  /// If [min = 0 && max = 10 && dividion = 0.5]
  ///
  /// Thene Value Picker Starts with the [10, 10.5, 11, 11.5 .....so on upto ... 8.5, 9, 9.5, 10]
  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final double division;
  // G1 END
  //
  // G1.5 START
  /// space between two value 1.0 meanse no space 1.0 + any value is decresing space between two value
  ///
  /// you can increase space by decreasing value
  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final double squeeze;
  // G1.5 END
  //
  // G2 START
  /// Centered or say selected value view [height] not a text [height] be aware
  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final double dialHeight;

  /// Centered or say selected value view [width/thickness] not a text width be aware
  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final double dialThickness;

  /// Centered or say selected value view [color] not a text [color] be aware
  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final Color dialColor;
  // G2 END
  //
  // G3 START
  /// interval at is use to set major interval
  /// ```dart
  /// if (min==0 && max==10 && majorIntervalAt==5)
  /// ```
  /// then major interval value you see in differt type of interface and majorinterval values are
  /// whole value list [0,0.5,1,.....,9.5,10]
  /// and you see major valur of [0,5,10] are highleted with diffrent height and color and text
  ///
  /// Basicaly There are three types of Interval
  /// 1. Major 2. Sub 3. Minor
  ///
  /// You can use this intervals to show different types of value prefers
  ///
  /// Major is use to show major important value interface
  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final int majorIntervalAt;

  /// Basicaly There are three types of Interval
  /// 1. Major 2. Sub 3. Minor
  ///
  /// You can use this intervals to show different types of value prefers
  ///
  /// Major is use to show major important value interface
  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final double majorIntervalHeight;

  /// Basicaly There are three types of Interval
  /// 1. Major 2. Sub 3. Minor
  ///
  /// You can use this intervals to show different types of value prefers
  ///
  /// Major is use to show major important value interface
  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final double majorIntervalThickness;

  /// Basicaly There are three types of Interval
  /// 1. Major 2. Sub 3. Minor
  ///
  /// You can use this intervals to show different types of value prefers
  ///
  /// Major is use to show major important value interface
  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final Color majorIntervalColor;

  /// Basicaly There are three types of Interval
  /// 1. Major 2. Sub 3. Minor
  ///
  /// You can use this intervals to show different types of value prefers
  ///
  /// Major is use to show major important value interface
  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final bool showMajorIntervalText;

  /// Basicaly There are three types of Interval
  /// 1. Major 2. Sub 3. Minor
  ///
  /// You can use this intervals to show different types of value prefers
  ///
  /// Major is use to show major important value interface
  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final double majorIntervalTextSize;

  /// Basicaly There are three types of Interval
  /// 1. Major 2. Sub 3. Minor
  ///
  /// You can use this intervals to show different types of value prefers
  ///
  /// Major is use to show major important value interface
  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final Color majorIntervalTextColor;
  // G3 END
  //
  // G4 START
  /// interval at is use to set sub interval
  /// ```dart
  /// if (min==0 && max==10 && subIntervalAt==5)
  /// ```
  /// then sub interval value you see in differt type of interface and subinterval values are
  /// whole value list [0,0.5,1,.....,9.5,10]
  /// and you see sub valur of [0,5,10] are highleted with diffrent height and color and text
  ///
  /// Basicaly There are three types of Interval
  /// 1. Major 2. Sub 3. Minor
  ///
  /// You can use this intervals to show different types of value prefers
  ///
  /// Sub is use to show value interface less important then majro value
  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final int subIntervalAt;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final double subIntervalHeight;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final double subIntervalThickness;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final Color subIntervalColor;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final bool showSubIntervalText;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final double subIntervalTextSize;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final Color subIntervalTextColor;
  // G4 END
  //
  // G5 START
  /// Basicaly There are three types of Interval
  /// 1. Major 2. Sub 3. Minor
  ///
  /// You can use this intervals to show different types of value prefers
  ///
  /// Minor is use to show value interface less important then sub value
  final double minorIntervalHeight;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final double minorIntervalThickness;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final Color minorIntervalColor;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final bool showMinorIntervalText;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final double minorIntervalTextSize;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final Color minorIntervalTextColor;
  // G5 END
  //
  // G6 START
  /// basicaly this is used to show dial or say selected value text in bottomCenter of Picker
  final bool showSelectedValue;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final Color selectedValueColor;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final TextStyle? selectedValueStyle;
  // G6 END
  //
  // G7 START
  /// Basicaly Text widget or Icon you should use
  final bool showSuffix;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final String suffixText;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final Color suffixTextColor;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final Widget? suffix;
  // G7 END
  /// By default intial value is [min] means minimum value == intial value of picker
  /// It's return selected value
  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  final Function(String newValue)? onChange;

  /// Initial value of a weight picker/value picker
  /// it's determine the initial position of picker
  /// ```dart
  ///
  /// 'Added by @prasetya4di'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  final double? initialValue;

  /// ```dart
  ///
  /// 'Developed by GuruTechnolabs'
  /// ```
  /// https://www.gurutechnolabs.com/
  /// Web & App Development Company
  ///
  /// ```dart
  /// Weight Picker/ Value Picker
  /// ```
  /// Allow user to select value in spinner/ animated form
  const AnimatedWeightPicker({
    super.key,
    //
    required this.min,
    required this.max,
    //
    this.division = 0.5,
    //
    //
    this.squeeze = 2.5,
    //
    this.dialHeight = 50,
    this.dialThickness = 1.5,
    this.dialColor = Colors.green,
    //
    this.majorIntervalAt = 10,
    this.majorIntervalHeight = 18,
    this.majorIntervalThickness = 1,
    this.majorIntervalColor = Colors.grey,
    this.showMajorIntervalText = true,
    this.majorIntervalTextSize = 15,
    this.majorIntervalTextColor = Colors.grey,
    //
    this.minorIntervalHeight = 10,
    this.minorIntervalThickness = 1,
    this.minorIntervalColor = Colors.grey,
    this.showMinorIntervalText = false,
    this.minorIntervalTextSize = 15,
    this.minorIntervalTextColor = Colors.grey,
    //
    this.subIntervalAt = 5,
    this.subIntervalHeight = 15,
    this.subIntervalThickness = 1,
    this.subIntervalColor = Colors.grey,
    this.showSubIntervalText = false,
    this.subIntervalTextSize = 5,
    this.subIntervalTextColor = Colors.grey,
    //
    this.showSelectedValue = true,
    this.selectedValueColor = Colors.green,
    this.selectedValueStyle,
    //
    this.showSuffix = true,
    this.suffixText = 'Kg',
    this.suffixTextColor = Colors.green,
    this.suffix,
    //
    this.onChange,
    //
    this.initialValue,
  })  : assert(!(max < min)),
        assert(!(min == max)),
        assert(!(max < 1)),
        assert(!(min < 0)),
        assert(!(max > 1000)),
        assert(!(dialHeight > 110 || dialHeight < 3)),
        assert(!(dialThickness > 5 || dialThickness < 0.5)),
        assert(!(majorIntervalHeight > 110 || majorIntervalHeight < 3)),
        assert(!(majorIntervalAt > max || majorIntervalAt < 1)),
        assert(!(majorIntervalThickness > 5 || majorIntervalThickness < 0.5)),
        assert(!(minorIntervalHeight > 110 || minorIntervalHeight < 3)),
        assert(!(minorIntervalThickness > 5 || minorIntervalThickness < 0.5)),
        assert(!(subIntervalAt > max || subIntervalAt < 1)),
        assert(!(subIntervalHeight > 110 || subIntervalHeight < 3)),
        assert(!(subIntervalThickness > 5 || subIntervalThickness < 0.5)),
        assert(!(majorIntervalTextSize > 20 || majorIntervalTextSize < 1)),
        assert(!(minorIntervalTextSize > 20 || minorIntervalTextSize < 1)),
        assert(!(subIntervalTextSize > 20 || subIntervalTextSize < 1)),
        assert(!(division < 0.1 || division > 1)),
        assert(squeeze > 0),
        assert(!(initialValue != null &&
            (initialValue < min || initialValue > max)));

  @override
  State<AnimatedWeightPicker> createState() => _AnimatedWeightPickerState();
}

class _AnimatedWeightPickerState extends State<AnimatedWeightPicker> {
  final int _divisionPrecision = 1;
  final int _valuePrecision = 1;

  final List<WheelModel> _valueList = [];
  int _selectedIndex = 0;

  late final FixedExtentScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    createWeightList(onInit: true);
  }

  void createWeightList({required bool onInit}) {
    _valueList.clear();
    double current = widget.min;
    double interval = widget.division.toPrecision(_divisionPrecision);

    int mjInterval = 0;
    int subInterval = widget.subIntervalAt;
    int mnInterval = 1;
    int currentIndex = 0;

    do {
      _valueList.add(
        WheelModel(
          current.toPrecision(_valuePrecision).trimTrallingZero(),
          currentIndex == 0
              ? INTERVAL_TYPE.MINOR
              : mjInterval == currentIndex
                  ? INTERVAL_TYPE.MAJOR
                  : subInterval == currentIndex
                      ? INTERVAL_TYPE.SUB
                      : mnInterval == currentIndex
                          ? INTERVAL_TYPE.MINOR
                          : INTERVAL_TYPE.NONE,
        ),
      );
      if (currentIndex == mjInterval) mjInterval += widget.majorIntervalAt;
      if (currentIndex == subInterval) subInterval += widget.subIntervalAt * 2;
      if (currentIndex == mnInterval) mnInterval += 1;

      currentIndex++;
      current += interval;

      if (widget.initialValue != null &&
          current.toPrecision(_valuePrecision) == widget.initialValue) {
        _selectedIndex = currentIndex;
      }
    } while (current.toPrecision(2) <= widget.max);

    _scrollController =
        FixedExtentScrollController(initialItem: _selectedIndex);
    if (!onInit) setState(() {});
  }

  @override
  void didUpdateWidget(covariant AnimatedWeightPicker old) {
    super.didUpdateWidget(old);
    if (old.max == widget.max &&
        old.min == widget.min &&
        old.division.toPrecision(_divisionPrecision) ==
            widget.division.toPrecision(_divisionPrecision)) return;
    createWeightList(onInit: false);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 110,
          width: double.infinity,
          child: RotatedBox(
            quarterTurns: -45,
            child: ListWheelScrollView.useDelegate(
              physics: const FixedExtentScrollPhysics(),
              controller: _scrollController,
              offAxisFraction: 2,
              perspective: 0.003,
              itemExtent: 30,
              squeeze: widget.squeeze,
              overAndUnderCenterOpacity: 1,
              clipBehavior: Clip.none,
              onSelectedItemChanged: (index) {
                setState(() => _selectedIndex = index);
                if (widget.onChange == null) return;
                widget.onChange!(_valueList[index].value);
              },
              renderChildrenOutsideViewport: true,
              childDelegate: ListWheelChildLoopingListDelegate(
                children: List<Widget>.generate(
                  _valueList.length,
                  growable: false,
                  (index) {
                    bool isSelected = _selectedIndex == index;
                    bool isMajorInterval = !isSelected &&
                        _valueList[index].interval == INTERVAL_TYPE.MAJOR &&
                        (_selectedIndex != 0 || _valueList.length - 1 != index);
                    bool isSubInterval = !isSelected &&
                        !isMajorInterval &&
                        _valueList[index].interval == INTERVAL_TYPE.SUB &&
                        index != _valueList.length - 1;
                    bool isMinorInterval = !isSelected &&
                        !isMajorInterval &&
                        !isSubInterval &&
                        (_valueList[index].interval == INTERVAL_TYPE.MINOR ||
                            index == _valueList.length - 1);

                    return RotatedBox(
                      quarterTurns: 45,
                      child: Container(
                        height: double.infinity,
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: isSelected
                                  ? widget.dialHeight
                                  : isMajorInterval
                                      ? widget.majorIntervalHeight
                                      : isSubInterval
                                          ? widget.subIntervalHeight
                                          : isMinorInterval
                                              ? widget.minorIntervalHeight
                                              : null,
                              child: VerticalDivider(
                                thickness: isSelected
                                    ? widget.dialThickness
                                    : isMajorInterval
                                        ? widget.majorIntervalThickness
                                        : isSubInterval
                                            ? widget.subIntervalThickness
                                            : isMinorInterval
                                                ? widget.minorIntervalThickness
                                                : null,
                                color: isSelected
                                    ? widget.dialColor
                                    : isMajorInterval
                                        ? widget.majorIntervalColor
                                        : isSubInterval
                                            ? widget.subIntervalColor
                                            : isMinorInterval
                                                ? widget.minorIntervalColor
                                                : null,
                                endIndent: 0,
                                indent: 0,
                              ),
                            ),
                            if ((widget.showMajorIntervalText && isMajorInterval) ||
                                (widget.showMinorIntervalText &&
                                    isMinorInterval) ||
                                (widget.showSubIntervalText && isSubInterval))
                              Text(
                                _valueList[index].value,
                                maxLines: 1,
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                  fontSize: _valueList[index].value.length >= 4
                                      ? 12
                                      : isMajorInterval
                                          ? widget.majorIntervalTextSize
                                          : isSubInterval
                                              ? widget.subIntervalTextSize
                                              : widget.minorIntervalTextSize,
                                  color: isMajorInterval
                                      ? widget.majorIntervalTextColor
                                      : isSubInterval
                                          ? widget.subIntervalTextColor
                                          : widget.minorIntervalTextColor,
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        if (widget.showSelectedValue)
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                _valueList[_selectedIndex].value,
                style: widget.selectedValueStyle ??
                    TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      height: 1,
                      color: widget.selectedValueColor,
                    ),
              ),
              if (widget.showSuffix && widget.suffix == null)
                Text(widget.suffixText,
                    style: TextStyle(color: widget.suffixTextColor))
              else if (widget.showSuffix && widget.suffix != null)
                widget.suffix!
            ],
          ),
      ],
    );
  }
}
