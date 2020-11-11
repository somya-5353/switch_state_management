import 'package:flutter/material.dart';

class CustomFlutterSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onToggle;
  final Color activeColor;
  final Color inactiveColor;
  final Color activeTextColor;
  final Color inactiveTextColor;
  final double width, height, toggleSize, valueFontSize, borderRadius, padding;
  final bool showOnOff;

  const CustomFlutterSwitch({
    Key key,
    this.value,
    this.onToggle,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
    this.activeTextColor = Colors.white70,
    this.inactiveTextColor = Colors.white70,
    this.width = 70.0,
    this.height = 35.0,
    this.toggleSize = 25.0,
    this.valueFontSize = 16.0,
    this.borderRadius = 20.0,
    this.padding = 4.0,
    this.showOnOff = false,
  }) : super(key: key);

  @override
  _CustomFlutterSwitchState createState() => _CustomFlutterSwitchState();
}

class _CustomFlutterSwitchState extends State<CustomFlutterSwitch>
    with SingleTickerProviderStateMixin {
  Animation _circleAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 60),
    );
    _circleAnimation = AlignmentTween(
      begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
      end: widget.value ? Alignment.centerLeft : Alignment.centerRight,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            widget.value == false
                ? widget.onToggle(true)
                : widget.onToggle(false);
          },
          child: Container(
            width: widget.width,
            height: widget.height,
            padding: EdgeInsets.all(widget.padding),
            decoration: BoxDecoration(
              border: Border.all(
                color: _circleAnimation.value == Alignment.centerLeft
                    ? Colors.transparent
                    : Theme.of(context).highlightColor,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(widget.borderRadius),
              color: _circleAnimation.value == Alignment.centerLeft
                  ? widget.inactiveColor
                  : widget.activeColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _circleAnimation.value == Alignment.centerRight
                    ? Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            widget.showOnOff ? "On" : "",
                            style: TextStyle(
                              color: widget.activeTextColor,
                              fontWeight: FontWeight.w900,
                              fontSize: widget.valueFontSize,
                            ),
                          ),
                        ),
                      )
                    : Container(),
                Align(
                  alignment: _circleAnimation.value,
                  child: Container(
                    width: widget.toggleSize,
                    height: widget.toggleSize,
                    decoration: BoxDecoration(
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15.0,
                        )
                      ],
                      shape: BoxShape.circle,
                      color: _circleAnimation.value == Alignment.centerLeft
                          ? Colors.white
                          : Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                _circleAnimation.value == Alignment.centerLeft
                    ? Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          alignment: Alignment.centerRight,
                          child: Text(
                            widget.showOnOff ? "Off" : "",
                            style: TextStyle(
                              color: widget.inactiveTextColor,
                              fontWeight: FontWeight.w900,
                              fontSize: widget.valueFontSize,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        );
      },
    );
  }
}
