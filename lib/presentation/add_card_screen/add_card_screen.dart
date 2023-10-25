import 'bloc/add_card_bloc.dart';
import 'models/add_card_model.dart';
import 'package:e_commarce_abo1od/core/app_export.dart';
import 'package:e_commarce_abo1od/core/utils/validation_functions.dart';
import 'package:e_commarce_abo1od/widgets/app_bar/appbar_leading_image.dart';
import 'package:e_commarce_abo1od/widgets/app_bar/appbar_subtitle.dart';
import 'package:e_commarce_abo1od/widgets/app_bar/custom_app_bar.dart';
import 'package:e_commarce_abo1od/widgets/custom_elevated_button.dart';
import 'package:e_commarce_abo1od/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddCardScreen extends StatelessWidget {
  AddCardScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddCardBloc>(
        create: (context) =>
            AddCardBloc(AddCardState(addCardModelObj: AddCardModel()))
              ..add(AddCardInitialEvent()),
        child: AddCardScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v),
                    child: Column(children: [
                      _buildCardHolder(context,
                          cardHolderName: "lbl_card_number".tr),
                      SizedBox(height: 24.v),
                      _buildSecurityCode(context,
                          securityCode: "lbl_expiration_date".tr),
                      SizedBox(height: 29.v),
                      _buildSecurityCode(context,
                          securityCode: "lbl_security_code".tr),
                      SizedBox(height: 23.v),
                      _buildCardHolder(context,
                          cardHolderName: "lbl_card_holder2".tr),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildAddCardButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "lbl_add_card".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildAddCardButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_add_card".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        onPressed: () {
          onTapAddCardButton(context);
        });
  }

  /// Common widget
  Widget _buildSecurityCode(
    BuildContext context, {
    required String securityCode,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(securityCode,
          style: theme.textTheme.titleSmall!
              .copyWith(color: theme.colorScheme.onPrimary.withOpacity(1))),
      SizedBox(height: 11.v),
      BlocSelector<CustomBloc, CustomState, TextEditingController?>(
          selector: (state) => state.securityCodeController,
          builder: (context, securityCodeController) {
            return CustomTextFormField(
                controller: securityCodeController,
                hintText: "lbl_security_code".tr,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v));
          })
    ]);
  }

  /// Common widget
  Widget _buildCardHolder(
    BuildContext context, {
    required String cardHolderName,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(cardHolderName,
          style: theme.textTheme.titleSmall!
              .copyWith(color: theme.colorScheme.onPrimary.withOpacity(1))),
      SizedBox(height: 12.v),
      BlocSelector<CustomBloc, CustomState, TextEditingController?>(
          selector: (state) => state.cardNumberController,
          builder: (context, cardNumberController) {
            return CustomTextFormField(
                controller: cardNumberController,
                hintText: "msg_enter_card_number".tr,
                textInputType: TextInputType.number,
                validator: (value) {
                  if (!isNumeric(value)) {
                    return "err_msg_please_enter_valid_number".tr;
                  }
                  return null;
                });
          })
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the creditCardAndDebitScreen when the action is triggered.
  onTapAddCardButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.creditCardAndDebitScreen,
    );
  }
}
