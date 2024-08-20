import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mypayments/utils/widgets/app.dart';
import 'package:mypayments/utils/widgets/custom_widgets.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 45.0.h, horizontal: 22.0.w),
          child: Column(
            children: [
              const Icon(
                PhosphorIcons.lock_bold,
                size: 50,
              ),
              Text(
                'Forget Password?',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                ),
              ),
              app.columnSpacer(),
              Text(
                'Enter your email or phone number',
                style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              Text(
                'to reset your password',
                style: TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              app.columnSpacer(),
              elevatedButton(message: 'Verify', callBack: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
