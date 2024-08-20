import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mypayments/constants/colors.dart';
import 'package:mypayments/constants/strings.dart';
import 'package:mypayments/utils/widgets/app.dart';
import 'package:mypayments/utils/widgets/custom_widgets.dart';

class LandingScreenView extends StatelessWidget {
  const LandingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                customStrings.welcomeBag,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w500,
                  color: customColors.black,
                ),
              ),
              app.columnSpacer(height: 35.h),
              elevatedButton(message: customStrings.signup, callBack: () {}),
              app.columnSpacer(height: 18.h),
              elevatedButton(message: customStrings.login, callBack: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
