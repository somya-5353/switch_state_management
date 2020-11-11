import 'package:flutter/material.dart';
import 'package:switch_state_management/providers/cc_switch_tile_model.dart';

class SwitchListViewModel with ChangeNotifier {
  List<SwitchTileViewModel> _switches = [
    SwitchTileViewModel(
        title: "Card Details",
        id: 0,
        state: true,
       ),
    SwitchTileViewModel(
        title: "Manage Card",
        id: 1,
        state: false,
        ),
    SwitchTileViewModel(
        title: "Transaction Limits",
        id: 2,
        state: true,
        )
  ];

  List<SwitchTileViewModel> get switchList {
     return List.of(_switches);
  }

  SwitchTileViewModel getById(int id) {
    return _switches.firstWhere((item) => item.id == id);
  }
}
