import 'bloc/dashboard_bloc.dart';
import 'models/dashboard_model.dart';
import 'package:flutter/material.dart';
import 'package:payment/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
      create: (context) => DashboardBloc(DashboardState(
        dashboardModelObj: DashboardModel(),
      ))
        ..add(DashboardInitialEvent()),
      child: DashboardPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillWhiteA700,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 34,
                          top: 29,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: getSize(
                                59,
                              ),
                              width: getSize(
                                59,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.blueGray100,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    29,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                49,
                              ),
                              width: getHorizontalSize(
                                92,
                              ),
                              margin: getMargin(
                                left: 13,
                                top: 6,
                                bottom: 3,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "lbl_hello".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular16,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "lbl_mahnoor".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: getHorizontalSize(
                            327,
                          ),
                          margin: getMargin(
                            left: 34,
                            top: 19,
                            right: 32,
                          ),
                          decoration: AppDecoration.fillDeeppurple600.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: getPadding(
                                    left: 18,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 17,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_total_balance".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular14,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 4,
                                              ),
                                              child: Text(
                                                "lbl_25_000_40".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansSemiBold32,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgReply,
                                        height: getVerticalSize(
                                          80,
                                        ),
                                        width: getHorizontalSize(
                                          82,
                                        ),
                                        margin: getMargin(
                                          left: 54,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse184,
                                height: getVerticalSize(
                                  28,
                                ),
                                width: getHorizontalSize(
                                  55,
                                ),
                                margin: getMargin(
                                  top: 29,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 31,
                          top: 8,
                        ),
                        child: Text(
                          "msg_recent_transactions".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold16,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            left: 34,
                            top: 6,
                            right: 32,
                          ),
                          padding: getPadding(
                            left: 12,
                            top: 8,
                            right: 12,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.outlineBlack90007.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgRisendplanefill,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 12,
                                  top: 2,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "lbl_23100012".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold16,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "lbl_250_00".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold16Red400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          194,
                        ),
                        width: getHorizontalSize(
                          367,
                        ),
                        margin: getMargin(
                          top: 6,
                        ),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: getMargin(
                                  right: 3,
                                  bottom: 1,
                                ),
                                color: ColorConstant.greenA400,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    130,
                                  ),
                                  width: getHorizontalSize(
                                    156,
                                  ),
                                  decoration:
                                      AppDecoration.fillGreenA400.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.whiteA70033,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder39,
                                          ),
                                          child: Container(
                                            height: getVerticalSize(
                                              95,
                                            ),
                                            width: getHorizontalSize(
                                              78,
                                            ),
                                            padding: getPadding(
                                              left: 9,
                                              top: 27,
                                              right: 9,
                                              bottom: 27,
                                            ),
                                            decoration: AppDecoration
                                                .fillWhiteA70033
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder39,
                                            ),
                                            child: Stack(
                                              children: [
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgUpload,
                                                  height: getVerticalSize(
                                                    39,
                                                  ),
                                                  width: getHorizontalSize(
                                                    37,
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 12,
                                            bottom: 14,
                                          ),
                                          child: Text(
                                            "lbl_transfer".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold25,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: getSize(
                                  100,
                                ),
                                width: getSize(
                                  100,
                                ),
                                margin: getMargin(
                                  top: 13,
                                  right: 96,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      50,
                                    ),
                                  ),
                                  border: Border.all(
                                    color: ColorConstant.whiteA7004c,
                                    width: getHorizontalSize(
                                      1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: getMargin(
                                  left: 37,
                                ),
                                color: ColorConstant.lightBlue700,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    130,
                                  ),
                                  width: getHorizontalSize(
                                    156,
                                  ),
                                  decoration:
                                      AppDecoration.fillLightblue700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          height: getVerticalSize(
                                            95,
                                          ),
                                          width: getHorizontalSize(
                                            78,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.whiteA70033,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                39,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 12,
                                            bottom: 11,
                                          ),
                                          child: Text(
                                            "lbl_deposit".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold25,
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown,
                                        height: getVerticalSize(
                                          43,
                                        ),
                                        width: getHorizontalSize(
                                          37,
                                        ),
                                        alignment: Alignment.bottomRight,
                                        margin: getMargin(
                                          right: 9,
                                          bottom: 23,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                margin: getMargin(
                                  left: 40,
                                  bottom: 153,
                                ),
                                padding: getPadding(
                                  left: 12,
                                  top: 8,
                                  right: 12,
                                  bottom: 8,
                                ),
                                decoration:
                                    AppDecoration.outlineBlack90007.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant
                                          .imgRisendplanefillLightBlue700,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 12,
                                        top: 2,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "lbl_23100327".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterSemiBold16,
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "lbl_250_00".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterSemiBold16Red400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: getSize(
                                  100,
                                ),
                                width: getSize(
                                  100,
                                ),
                                margin: getMargin(
                                  top: 9,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      50,
                                    ),
                                  ),
                                  border: Border.all(
                                    color: ColorConstant.whiteA7004c,
                                    width: getHorizontalSize(
                                      1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 31,
                            top: 19,
                            right: 36,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: ColorConstant.deepPurple600,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    130,
                                  ),
                                  width: getHorizontalSize(
                                    156,
                                  ),
                                  decoration:
                                      AppDecoration.fillDeeppurple600.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.whiteA70033,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder39,
                                          ),
                                          child: Container(
                                            height: getVerticalSize(
                                              95,
                                            ),
                                            width: getHorizontalSize(
                                              78,
                                            ),
                                            padding: getPadding(
                                              left: 5,
                                              top: 21,
                                              right: 5,
                                              bottom: 21,
                                            ),
                                            decoration: AppDecoration
                                                .fillWhiteA70033
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder39,
                                            ),
                                            child: Stack(
                                              children: [
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCheckmark,
                                                  height: getVerticalSize(
                                                    45,
                                                  ),
                                                  width: getHorizontalSize(
                                                    46,
                                                  ),
                                                  alignment:
                                                      Alignment.bottomRight,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgFrame14339,
                                        height: getVerticalSize(
                                          58,
                                        ),
                                        width: getHorizontalSize(
                                          62,
                                        ),
                                        alignment: Alignment.topLeft,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 12,
                                            bottom: 10,
                                          ),
                                          child: Text(
                                            "lbl_request".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold25,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  156,
                                ),
                                margin: getMargin(
                                  left: 14,
                                ),
                                decoration: AppDecoration.fillCyan500.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        bottom: 12,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: getVerticalSize(
                                              58,
                                            ),
                                            width: getHorizontalSize(
                                              62,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  29,
                                                ),
                                              ),
                                              border: Border.all(
                                                color:
                                                    ColorConstant.whiteA7004c,
                                                width: getHorizontalSize(
                                                  1,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: getPadding(
                                                top: 21,
                                              ),
                                              child: Text(
                                                "lbl_faqs".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold25,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: getMargin(
                                        left: 1,
                                        top: 35,
                                      ),
                                      color: ColorConstant.whiteA70033,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder39,
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          95,
                                        ),
                                        width: getHorizontalSize(
                                          78,
                                        ),
                                        padding: getPadding(
                                          left: 19,
                                          top: 22,
                                          right: 19,
                                          bottom: 22,
                                        ),
                                        decoration: AppDecoration
                                            .fillWhiteA70033
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder39,
                                        ),
                                        child: Stack(
                                          children: [
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgQuestion,
                                              height: getVerticalSize(
                                                46,
                                              ),
                                              width: getHorizontalSize(
                                                28,
                                              ),
                                              alignment: Alignment.bottomRight,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          126,
                        ),
                        width: double.maxFinite,
                        margin: getMargin(
                          top: 8,
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: getVerticalSize(
                                  115,
                                ),
                                width: double.maxFinite,
                                decoration: BoxDecoration(),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: getSize(
                                  75,
                                ),
                                width: getSize(
                                  75,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.lightBlue700,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      37,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgSolarobjectsc,
                              height: getVerticalSize(
                                41,
                              ),
                              width: getHorizontalSize(
                                42,
                              ),
                              alignment: Alignment.topCenter,
                              margin: getMargin(
                                top: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
