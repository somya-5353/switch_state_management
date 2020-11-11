import 'package:flutter/material.dart';

class PrimaryCardWidget extends StatelessWidget  {
  final double height;
  final double width;
  final double elevation;
  final String title;
  final String amount;
  final String maskedCardNumber;
  final String cardHolderName;
  final String cardType;

  PrimaryCardWidget({@required this.height, @required this.width, @required this.elevation, @required this.title, @required this.amount, @required this.cardHolderName, @required this.cardType, @required this.maskedCardNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width:width,
      child: Card(
        borderOnForeground: true,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Theme.of(context).primaryColor, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 25, 12, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style:TextStyle(fontSize: 10, color: Theme.of(context).primaryColor, fontWeight: FontWeight.w400,)),
              Text(amount, style:TextStyle(fontSize: 14, color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Text(maskedCardNumber, style:TextStyle(fontSize: 14, color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(cardHolderName, style:TextStyle(fontSize: 12, color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold)),
                  Text(cardType, style:TextStyle(fontSize: 14, color: Theme.of(context).primaryColor, fontWeight: FontWeight.w400)),
                ],
              )
              ]
        ),
    ),
      ),
    );
  }


}