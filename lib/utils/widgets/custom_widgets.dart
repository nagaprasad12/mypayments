import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mypayments/constants/colors.dart';
import 'package:mypayments/utils/widgets/app.dart';
import 'package:mypayments/view_models/dashboard_view_model.dart';

Widget elevatedButton({
  required String message,
  required VoidCallback? callBack,
  bool isFullWidth = true,
  Color? backgroundColor,
  bool showGradient = true,
  IconData? icon,
  Color? iconColor,
  Color? textColor,
  bool isBold = false,
  EdgeInsets? edgeInsets,
  double? fontSize,
  double? borderRadius,
  bool showElevation = false,
}) {
  return Container(
    width: isFullWidth ? app.width : 90.w,
    decoration: showGradient
        ? BoxDecoration(
            borderRadius: BorderRadius.circular(12.0.r),
            color: customColors.blu,
          )
        : null,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        backgroundColor: showGradient
            ? Colors.transparent
            : backgroundColor ?? customColors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
        ),
        padding: EdgeInsets.zero,
        elevation: showElevation ? 2 : 0,
      ),
      onPressed: callBack,
      child: Text(
        message,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            color: customColors.white,
            fontSize: 20.sp),
      ),
    ),
  );
}

Widget formFieldLabel({
  required String label,
  bool isRequired = false,
  isBold = false,
  Color? color,
  double? fontSize,
}) {
  return isRequired
      ? RichText(
          text: TextSpan(
            text: label,
            style: TextStyle(
              fontSize: fontSize ?? 16.sp,
              fontWeight: isBold ? FontWeight.w500 : null,
              color: customColors.labelsColor,
            ),
            children: const [
              TextSpan(
                text: ' *',
                style: TextStyle(
                  color: Colors.red,
                ),
              )
            ],
          ),
        )
      : Text(
          label,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: fontSize ?? 16.sp,
            fontWeight: isBold ? FontWeight.w500 : null,
            color: color ?? customColors.labelsColor,
          ),
        );
}

Widget customContainer(
    {required String title, required String cost, required IconData icon}) {
  return Container(
    height: 95.h,
    width: 145.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            blurRadius: 1.0.r,
          ),
        ],
        color: CupertinoColors.systemGrey2),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 45,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: customColors.white,
              fontSize: 16.sp,
            ),
          ),
          Text(
            cost,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: customColors.white,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget customRow({required String title, required String message}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 19.sp,
            color: customColors.black),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: customColors.blu,
        ),
        onPressed: () {},
        child: Text(
          message,
          style: TextStyle(
            fontSize: 16.sp,
            color: customColors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ],
  );
}

Widget customList({
  required DashboardViewModel dashBoard,
}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: List.generate(
        dashBoard.menuItems.length,
        (index) => Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 6.0.h,horizontal: 8.0.w),
              height: 45.h,
              width: 55.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0.r),
                color: Colors.grey,
              ),
              child: Icon(
                dashBoard.menuItems[index].iconData,
                size: 40,
              ),
            ),
            Text(
              dashBoard.menuItems[index].title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                color: customColors.blu,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
