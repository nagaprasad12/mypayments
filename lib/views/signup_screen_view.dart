import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mypayments/utils/widgets/app.dart';
import 'package:mypayments/utils/widgets/custom_widgets.dart';
import 'package:mypayments/utils/widgets/password_text_field.dart';
import 'package:mypayments/utils/widgets/text_form_field.dart';
import 'package:mypayments/view_models/signup_screen_view_model.dart';
import 'package:stacked/stacked.dart';

class SignupScreenView extends StatefulWidget {
  const SignupScreenView({super.key});

  @override
  State<SignupScreenView> createState() => _SignupScreenViewState();
}

class _SignupScreenViewState extends State<SignupScreenView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignupScreenViewModel>.reactive(
      viewModelBuilder: () => SignupScreenViewModel(),
      builder: (BuildContext context, viewModel, Widget? child) {
        return SafeArea(
          child: Scaffold(
            body: Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 25.0.h, horizontal: 25.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                  app.columnSpacer(),
                  formFieldLabel(label: 'Name'),
                  app.columnSpacer(height: 3.h),
                  TextFormFieldWidget(
                    controller: viewModel.nameController,
                    prefixIcon: const Icon(
                      PhosphorIcons.identification_card_thin,
                      size: 30,
                    ),
                    hasBorder: true,
                    hint: 'Enter Your Name',
                    isLabelFloating: false,
                  ),
                  formFieldLabel(label: 'Email'),
                  app.columnSpacer(height: 3.h),
                  TextFormFieldWidget(
                    controller: viewModel.emailController,
                    prefixIcon: const Icon(
                      PhosphorIcons.envelope,
                      size: 30,
                    ),
                    hasBorder: true,
                    hint: 'Enter Your Email',
                    isLabelFloating: false,
                  ),
                  formFieldLabel(label: 'Phone Number'),
                  app.columnSpacer(height: 3.h),
                  TextFormFieldWidget(
                    controller: viewModel.phoneNoController,
                    prefixIcon: const Icon(
                      PhosphorIcons.phone,
                      size: 30,
                    ),
                    hasBorder: true,
                    hint: 'Enter Your Your Phone Number',
                    isLabelFloating: false,
                  ),
                  formFieldLabel(label: 'Password'),
                  app.columnSpacer(height: 3.h),
                  PasswordFieldWidget(
                    controller: viewModel.passwordController,
                  ),
                  formFieldLabel(label: 'Confirm Password'),
                  app.columnSpacer(height: 3.h),
                  PasswordFieldWidget(
                    controller: viewModel.conformPasswordController,
                  ),
                  app.columnSpacer(),
                  elevatedButton(message: 'Sign Up', callBack: () {}),
                  app.columnSpacer(height: 5.h),
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
                      text: 'Already Have An Account?',
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                      children: [
                        TextSpan(
                            text: ' Log In',
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
