import 'package:flutter/material.dart';
import 'package:switch_state_management/views/custom_switch_tile.dart';

class SwitchListView extends StatelessWidget {

  final List<int> switchIdList;
  final int itemCount;
  final List<String> listOfTitle;
  final List<bool> switchState;


  const SwitchListView({
    Key key,
    this.switchIdList,
    @required this.itemCount,
    @required this.listOfTitle,
    @required this.switchState,
  }) ;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return CustomSwitchTile(title: listOfTitle[index], fontSize: 14,
            value:switchState[index], switchId: switchIdList[index],);
      },
    );
  }
}