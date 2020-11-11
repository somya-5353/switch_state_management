import 'package:flutter/material.dart';
import 'package:switch_state_management/screens/handle_switch_state.dart';

class SwitchDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch State Demo'),
      ),
      body: Center(
          child: FlatButton(
            child: Text('Press Here'),
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, ProviderSwitchScreen.routeName);
            },
          )
      ),
    );
  }
}