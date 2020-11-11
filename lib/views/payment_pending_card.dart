import 'package:flutter/material.dart';
import 'custom_flat_button.dart';

enum buttonState { able, disable }

class PaymentPendingCard extends StatelessWidget {
  final double width;
  final double buttonHeight;
  final double buttonWidth;
  final double elevation;
  final String title;
  final String dueDateString;
  final String buttonTitle;
  final String amount;
  final String viewCardTitle;
  final String backgroundImage;

  PaymentPendingCard(
      {@required this.width,
      @required this.title,
      @required this.dueDateString,
      @required this.buttonTitle,
      @required this.amount,
      @required this.viewCardTitle,
      this.backgroundImage,
      @required this.elevation,
      @required this.buttonHeight,
      @required this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: width,
        child: Card(
          borderOnForeground: true,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Theme.of(context).primaryColor, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.all(20.0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      child: Text(title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold)),
                    ),
                    Text(amount,
                        style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  dueDateString,
                  style: TextStyle(
                      fontSize: 10,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      viewCardTitle,
                      style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                    CustomFlatButton(
                      buttonTitle: buttonTitle,
                      state: buttonState.disable,
                      height: buttonHeight,
                      width: buttonWidth,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
