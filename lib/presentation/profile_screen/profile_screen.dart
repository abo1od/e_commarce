import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:e_commarce_abo1od/core/app_export.dart';
import 'package:e_commarce_abo1od/widgets/app_bar/appbar_leading_image.dart';
import 'package:e_commarce_abo1od/widgets/app_bar/appbar_subtitle.dart';
import 'package:e_commarce_abo1od/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            ProfileBloc(ProfileState(profileModelObj: ProfileModel()))
              ..add(ProfileInitialEvent()),
        child: ProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 36.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgProfilePicture72x72,
                                      height: 72.adaptSize,
                                      width: 72.adaptSize,
                                      radius: BorderRadius.circular(36.h)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 16.h, top: 9.v, bottom: 14.v),
                                      child: Column(children: [
                                        Text("lbl_dominic_ovo".tr,
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 8.v),
                                        Text("lbl_dominic_ovo2".tr,
                                            style: theme.textTheme.bodySmall)
                                      ]))
                                ])),
                        SizedBox(height: 32.v),
                        _buildProfileDetailOption1(context),
                        _buildProfileDetailOption2(context),
                        _buildProfileDetailOption3(context),
                        _buildProfileDetailOption4(context),
                        SizedBox(height: 5.v),
                        _buildProfileDetailOption5(context)
                      ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "lbl_profile".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildProfileDetailOption1(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgGenderIcon,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              child: Text("lbl_gender".tr, style: theme.textTheme.labelLarge)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
              child: Text("lbl_male".tr, style: theme.textTheme.bodySmall)),
          CustomImageView(
              imagePath: ImageConstant.imgRightIcon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 16.h))
        ]));
  }

  /// Section Widget
  Widget _buildProfileDetailOption2(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgDateIcon,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 2.v),
              child:
                  Text("lbl_birthday".tr, style: theme.textTheme.labelLarge)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
              child:
                  Text("lbl_12_12_2000".tr, style: theme.textTheme.bodySmall)),
          CustomImageView(
              imagePath: ImageConstant.imgRightIcon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 16.h))
        ]));
  }

  /// Section Widget
  Widget _buildProfileDetailOption3(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgMailPrimary,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              child: Text("lbl_email".tr, style: theme.textTheme.labelLarge)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 4.v),
              child: Text("msg_rex4dom_gmail_com".tr,
                  style: theme.textTheme.bodySmall)),
          CustomImageView(
              imagePath: ImageConstant.imgRightIcon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 16.h))
        ]));
  }

  /// Section Widget
  Widget _buildProfileDetailOption4(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCreditCardIcon,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              child: Text("lbl_phone_number".tr,
                  style: theme.textTheme.labelLarge)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
              child: Text("lbl_307_555_0133".tr,
                  style: theme.textTheme.bodySmall)),
          CustomImageView(
              imagePath: ImageConstant.imgRightIcon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 16.h))
        ]));
  }

  /// Section Widget
  Widget _buildProfileDetailOption5(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapProfileDetailOption5(context);
        },
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgLockPrimary,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 4.v),
                  child: Text("lbl_change_password".tr,
                      style: theme.textTheme.labelLarge)),
              Spacer(),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  child: Text("msg".tr, style: theme.textTheme.bodySmall)),
              CustomImageView(
                  imagePath: ImageConstant.imgRightIcon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 16.h))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the changePasswordScreen when the action is triggered.
  onTapProfileDetailOption5(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.changePasswordScreen,
    );
  }
}
