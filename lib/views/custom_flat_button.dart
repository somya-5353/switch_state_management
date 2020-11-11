import 'package:flutter/material.dart';
import 'package:switch_state_management/views/payment_pending_card.dart';

class CustomFlatButton extends StatelessWidget {
  final String buttonTitle;
  final buttonState state;
  final void completionHandler;
  final double height;
  final double width;

  CustomFlatButton({@required this.buttonTitle, @required this.state,
    this.completionHandler, @required this.height, @required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:width,
      height:height,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        color: Theme.of(context).primaryColor,
        textColor: Theme.of(context).toggleableActiveColor,
        disabledColor: Theme.of(context).accentColor,
        disabledTextColor: Theme.of(context).toggleableActiveColor,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.blueAccent,
        onPressed: state == buttonState.disable ? null : () => completionHandler,
        child: Text(
          buttonTitle,
          style: TextStyle(fontSize: 10.0,
            color: Theme.of(context).toggleableActiveColor,
          ),
        ),
      ),
    );
  }
}