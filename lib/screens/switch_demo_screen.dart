import 'package:flutter/material.dart';
import 'package:switch_state_management/screens/handle_switch_state.dart';
import 'package:switch_state_management/views/responsive_payment_pending_card.dart';

class SwitchDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch State Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResponsivePaymentPendingCard(),
          Center(
              child: FlatButton(
                child: Text('Press Here'),
                color: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, ProviderSwitchScreen.routeName);
                },
              ),
          ),
        ],
      ),
    );
  }
}