import 'bloc/list_category_bloc.dart';
import 'models/list_category_model.dart';
import 'package:e_commarce_abo1od/core/app_export.dart';
import 'package:e_commarce_abo1od/widgets/app_bar/appbar_leading_image.dart';
import 'package:e_commarce_abo1od/widgets/app_bar/appbar_subtitle.dart';
import 'package:e_commarce_abo1od/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ListCategoryScreen extends StatelessWidget {
  const ListCategoryScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ListCategoryBloc>(
        create: (context) => ListCategoryBloc(
            ListCategoryState(listCategoryModelObj: ListCategoryModel()))
          ..add(ListCategoryInitialEvent()),
        child: ListCategoryScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ListCategoryBloc, ListCategoryState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: mediaQueryData.size.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(top: 10.v),
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: Column(children: [
                            _buildCategoryOption1(context),
                            _buildCategoryOption2(context),
                            _buildCategoryOption3(context),
                            _buildCategoryOption4(context),
                            _buildCategoryOption5(context),
                            _buildCategoryOption6(context),
                            _buildCategoryOption7(context),
                            _buildCategoryOption8(context),
                            _buildCategoryOption9(context),
                            _buildCategoryOption10(context),
                            _buildCategoryOption11(context)
                          ]))))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "lbl_category".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildCategoryOption1(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeftPrimary,
              height: 24.adaptSize,
              width: 24.adaptSize,
              onTap: () {
                onTapImgArrowLeft(context);
              }),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              child: Text("lbl_shirt".tr,
                  style: CustomTextStyles.labelLargePrimary))
        ]));
  }

  /// Section Widget
  Widget _buildCategoryOption2(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgBikiniIcon,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              child: Text("lbl_bikini".tr, style: theme.textTheme.labelLarge))
        ]));
  }

  /// Section Widget
  Widget _buildCategoryOption3(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgClock,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              child: Text("lbl_dress".tr, style: theme.textTheme.labelLarge))
        ]));
  }

  /// Section Widget
  Widget _buildCategoryOption4(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgManWorkEquipment,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 2.v),
              child: Text("lbl_work_equipment".tr,
                  style: theme.textTheme.labelLarge))
        ]));
  }

  /// Section Widget
  Widget _buildCategoryOption5(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgTrash,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              child:
                  Text("lbl_man_pants".tr, style: theme.textTheme.labelLarge))
        ]));
  }

  /// Section Widget
  Widget _buildCategoryOption6(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgTicket,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              child:
                  Text("lbl_man_shoes".tr, style: theme.textTheme.labelLarge))
        ]));
  }

  /// Section Widget
  Widget _buildCategoryOption7(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgForward,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              child: Text("lbl_man_underwear".tr,
                  style: theme.textTheme.labelLarge))
        ]));
  }

  /// Section Widget
  Widget _buildCategoryOption8(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgAirplane,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              child:
                  Text("lbl_man_t_shirt".tr, style: theme.textTheme.labelLarge))
        ]));
  }

  /// Section Widget
  Widget _buildCategoryOption9(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgTrashPrimary,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 4.v),
              child:
                  Text("lbl_woman_bag".tr, style: theme.textTheme.labelLarge))
        ]));
  }

  /// Section Widget
  Widget _buildCategoryOption10(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgWomanPantsIcon,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              child:
                  Text("lbl_woman_pants".tr, style: theme.textTheme.labelLarge))
        ]));
  }

  /// Section Widget
  Widget _buildCategoryOption11(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgWomanShoesIcon,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 2.v),
              child:
                  Text("lbl_high_heels".tr, style: theme.textTheme.labelLarge))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
