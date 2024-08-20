import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mypayments/constants/colors.dart';
import 'package:mypayments/utils/widgets/app.dart';
import 'package:mypayments/utils/widgets/custom_widgets.dart';
import 'package:mypayments/view_models/dashboard_view_model.dart';
import 'package:stacked/stacked.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      builder:
          (BuildContext context, DashboardViewModel viewModel, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: customColors.white,
                size: 40,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none,
                  color: customColors.white,
                  size: 30,
                ),
              ),
            ],
            backgroundColor: customColors.blu,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 23.0.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child:  Text(
                    '+Add Card',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp
                    ),
                  ),
                ),
                Container(
                  height: 150.h,
                  width: app.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1.0.r,
                        ),
                      ],
                      color: Colors.grey),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 15.0.h, horizontal: 20.0.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Card',
                              style: TextStyle(
                                fontSize: 19.sp,
                                color: customColors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        app.columnSpacer(height: 45.h),
                        Text(
                          '1234    5768     9876     4532',
                          style: TextStyle(
                              fontSize: 22.sp,
                              color: customColors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        app.columnSpacer(height: 4.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '10 / 27',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: customColors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Mr Prasad',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: customColors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                app.columnSpacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customContainer(
                        title: 'Your Balance',
                        cost: '180.00',
                        icon: PhosphorIcons.cardholder),
                    customContainer(
                      title: 'Total Spend',
                      cost: '150.00',
                      icon: PhosphorIcons.database_fill,
                    ),
                  ],
                ),
                app.columnSpacer(),
                customRow(title: 'Quick Actions', message: 'See All'),
                customList(dashBoard: viewModel),
                app.columnSpacer(height: 5.h),
                customRow(title: 'Recent Transactions', message: 'See All'),
              ],
            ),
          ),
        );
      },
    );
  }
}
