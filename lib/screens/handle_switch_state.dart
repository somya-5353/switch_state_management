import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switch_state_management/providers/cc_switch_list_model.dart';
import 'package:switch_state_management/views/custom_switch_tile.dart';

class ProviderSwitchScreen extends StatelessWidget {
  static const routeName = '/ProviderSwitchScreen';

  @override
  Widget build(BuildContext context) {
    final switchData = Provider.of<SwitchListViewModel>(context);
    final switches = switchData.switchList;

    return Scaffold(
        body: Column(
      children: [
        Flexible(
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: switches.length,
            itemBuilder: (cix, index) => ChangeNotifierProvider.value(
              value: switches[index],
              child: CustomSwitchTile(
                  title: switches[index].title,
                  value: switches[index].state,
                  switchId: switches[index].id),
            ),
          ),
        ),
        FlatButton(
          child: Text('BACK'),
          color: Colors.blue,
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        )
      ],
    ));
  }
}
