import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:switch_state_management/utils/size_config.dart';
import 'package:switch_state_management/views/payment_pending_card.dart';

class ResponsivePaymentPendingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        // Check the sizing information here and return your UI
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          debugPrint("desktop");
          return Center(
            child: PaymentPendingCard(
                width: SizeConfig.blockSizeHorizontal * 35 ,
                title: "John Doe",
                dueDateString: "Due Date: 12/12/2020",
                buttonTitle: "Platinum",
                amount: "\$ 70000.00",
                viewCardTitle: "Total Outstanding Amount",
                elevation: 12,
                buttonHeight: 50,
                buttonWidth: 100),
          );
        }
        if(sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          debugPrint("tablet");
          return Center(
            child: PaymentPendingCard(
                width: SizeConfig.blockSizeHorizontal * 55 ,
                title: "John Doe",
                dueDateString: "Due Date: 12/12/2020",
                buttonTitle: "Platinum",
                amount: "\$ 70000.00",
                viewCardTitle: "Total Outstanding Amount",
                elevation: 12,
                buttonHeight: 50,
                buttonWidth: 100),
          );
        }
        if(sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          debugPrint("mobile");
          return Center(
            child: PaymentPendingCard(
                width: SizeConfig.blockSizeHorizontal * 80 ,
                title: "John Doe",
                dueDateString: "Due Date: 12/12/2020",
                buttonTitle: "Platinum",
                amount: "\$ 70000.00",
                viewCardTitle: "Total Outstanding Amount",
                elevation: 12,
                buttonHeight: 50,
                buttonWidth: 80),
          );
        }
        return Container(color:Colors.purple);
      },
    );
  }
}