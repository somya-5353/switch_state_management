import 'package:flutter/material.dart';

class SwitchTileViewModel with ChangeNotifier {
  final String title;
  bool state;
  final int id;
  SwitchTileViewModel({
     this.title,
     this.id,
     this.state,
  });

  void toggleState() {
    this.state = !state;
    notifyListeners();
  }
}
