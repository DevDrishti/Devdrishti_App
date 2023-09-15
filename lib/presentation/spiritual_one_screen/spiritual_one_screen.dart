import 'package:flutter/material.dart';
import 'package:devdrishti_app/core/app_export.dart';
import 'package:devdrishti_app/widgets/custom_elevated_button.dart';
import 'package:devdrishti_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SpiritualOneScreen extends StatelessWidget {
  SpiritualOneScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController edittextController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 44.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 32.v),
                      Text("Spiritual Tourism",
                          style: CustomTextStyles
                              .headlineMediumOnPrimaryContainer),
                      SizedBox(height: 17.v),
                      SizedBox(
                          width: 206.h,
                          child: Text("Register as a Holistic\nGuide",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleLarge)),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h, top: 13.v),
                          child:
                              Text("Name of the organisation", style: theme.textTheme.labelLarge)),
                      CustomTextFormField(
                          controller: nameController,
                          margin:
                              EdgeInsets.only(left: 9.h, top: 3.v, right: 9.h)),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h, top: 15.v),
                          child: Text("Phone Number",
                              style: theme.textTheme.labelLarge)),
                      CustomTextFormField(
                          controller: phoneNumberController,
                          margin:
                              EdgeInsets.only(left: 9.h, top: 3.v, right: 9.h)),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h, top: 14.v),
                          child: Text("Email Id",
                              style: theme.textTheme.labelLarge)),
                      CustomTextFormField(
                          controller: emailController,
                          margin:
                              EdgeInsets.only(left: 9.h, top: 4.v, right: 9.h)),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h, top: 14.v),
                          child: Text("Admin Password",
                              style: theme.textTheme.labelLarge)),
                      CustomTextFormField(
                          controller: passwordController,
                          margin:
                              EdgeInsets.only(left: 9.h, top: 4.v, right: 9.h)),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h, top: 14.v),
                          child: Text("ID Proof",
                              style: theme.textTheme.labelLarge)),
                      CustomTextFormField(
                          controller: edittextController,
                          margin:
                              EdgeInsets.only(left: 9.h, top: 4.v, right: 9.h)),
                      Container(
                          height: 20.v,
                          width: 54.h,
                          margin: EdgeInsets.only(left: 9.h, top: 15.v),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("Address",
                                    style: theme.textTheme.labelLarge)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("Address",
                                    style: theme.textTheme.labelLarge))
                          ])),
                      CustomTextFormField(
                          controller: addressController,
                          margin:
                              EdgeInsets.only(left: 9.h, top: 3.v, right: 9.h),
                          textInputAction: TextInputAction.done),
                      CustomElevatedButton(
                          width: 146.h,
                          text: "Register Now",
                          margin: EdgeInsets.only(top: 63.v, right: 9.h),
                          buttonStyle: CustomButtonStyles.fillBlueGray,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnPrimary,
                          onTap: () {
                            onTapRegisternow(context);
                          },
                          alignment: Alignment.centerRight)
                    ]))));
  }

  onTapRegisternow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.spiritualtwoScreen);
  }
}
