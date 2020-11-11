import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switch_state_management/providers/cc_switch_tile_model.dart';
import 'package:switch_state_management/views/custom_flutter_switch.dart';

class AnimatedSwitch extends StatelessWidget {
  final double height;
  final double width;
  final double padding;
  final double toggleSize;
  final double borderRadius;
  final bool value;

  AnimatedSwitch({this.height, this.width, this.padding, this.toggleSize,
    this.borderRadius, @required this.value});

  @override
  Widget build(BuildContext context) {
    final switchProvider = Provider.of<SwitchTileViewModel>(context, listen: false);
    return CustomFlutterSwitch(
      height: height,
      width: width,
      padding: padding,
      toggleSize: toggleSize,
      borderRadius: borderRadius,
      activeColor: Theme.of(context).toggleableActiveColor,
      inactiveColor: Theme.of(context).accentColor,
      value: value,
      onToggle: (_) {
          switchProvider.toggleState();
        });

  }
}