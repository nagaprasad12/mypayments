import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mypayments/utils/widgets/app.dart';
import 'package:mypayments/utils/widgets/custom_widgets.dart';

class AccountSuccess extends StatelessWidget {
  const AccountSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0.h, horizontal: 20.0.w),
          child: Column(
            children: [
              Text(
                'Congratulations',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                ),
              ),
              app.columnSpacer(),
              Text(
                'You account password\n successfully reset',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
              app.columnSpacer(),
              elevatedButton(message: 'Let\'s Start', callBack: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
