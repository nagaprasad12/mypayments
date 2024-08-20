import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mypayments/constants/colors.dart';
import 'package:mypayments/constants/strings.dart';
import 'package:mypayments/utils/widgets/app.dart';
import 'package:mypayments/utils/widgets/custom_widgets.dart';
import 'package:mypayments/utils/widgets/password_text_field.dart';
import 'package:mypayments/utils/widgets/text_form_field.dart';
import 'package:mypayments/view_models/login_screen_view_model.dart';
import 'package:stacked/stacked.dart';

class LoginScreenView extends StatefulWidget {
  const LoginScreenView({super.key});

  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginScreenViewModel>.reactive(
      viewModelBuilder: () => LoginScreenViewModel(),
      builder: (context, viewModel, child) {
        return SafeArea(
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 35.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      customStrings.login,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        color: customColors.black,
                      ),
                    ),
                  ),
                  formFieldLabel(label: 'Email'),
                  app.columnSpacer(height: 4.h),
                  TextFormFieldWidget(
                    controller: viewModel.emailController,
                    isLabelFloating: false,
                    hasBorder: true,
                    hint: 'Enter Your Email',
                    prefixIcon: const Icon(
                      PhosphorIcons.envelope,
                      size: 23,
                    ),
                  ),
                  app.columnSpacer(),
                  formFieldLabel(label: 'Password'),
                  app.columnSpacer(height: 4.h),
                  PasswordFieldWidget(
                    controller: viewModel.passwordController,
                  ),
                  app.columnSpacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Remember Me',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                        ),
                      ),
                      Text(
                        'Forget Password?',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                  app.columnSpacer(),
                  elevatedButton(message: customStrings.login, callBack: () {}),
                  app.columnSpacer(),
                  Center(
                    child: Text(
                      'Or Continue With',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  app.columnSpacer(),
                  RichText(
                    text: TextSpan(
                      text: 'Don\'t Have An Account?',
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                      children: [
                        TextSpan(
                            text: ' Sign up',
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                            recognizer: TapGestureRecognizer()..onTap = () {}),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
