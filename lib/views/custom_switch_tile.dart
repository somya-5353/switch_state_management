import 'package:flutter/material.dart';
import 'package:switch_state_management/views/animated_switch.dart';

class CustomSwitchTile extends StatelessWidget {
  final int switchId;
  final String title;
  final double fontSize;
  bool value;

  CustomSwitchTile({
      this.switchId,
      this.title,
      this.fontSize,
      @required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: Theme.of(context).textTheme.bodyText1.fontSize,
            color: Theme.of(context).textTheme.bodyText2.color,
          )),
          AnimatedSwitch(
            height: 20.0,
            width: 40.0,
            padding: 1.0,
            toggleSize: 20.0,
            borderRadius: 20.0,
            value: value,
          ),
        ],
      ),
    );
  }
}
