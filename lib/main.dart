import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switch_state_management/providers/cc_switch_list_model.dart';
import 'package:switch_state_management/screens/handle_switch_state.dart';
import 'package:switch_state_management/screens/switch_demo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SwitchListViewModel>(
            create: (context) => SwitchListViewModel()),
      ],
      child: MaterialApp(
        title: 'Switch State Management',
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.light,
          primaryColor: Colors.blue[800],
          accentColor: Colors.grey[400],
          toggleableActiveColor: Colors.white,
        ),
        home: SwitchDemoScreen(),
        routes: {
          ProviderSwitchScreen.routeName: (ctx) => ProviderSwitchScreen(),
        },
      ),
    );
  }
}
