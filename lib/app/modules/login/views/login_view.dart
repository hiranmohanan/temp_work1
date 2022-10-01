// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mvvm_trial/app/constants/appcolros.dart';
import 'package:mvvm_trial/app/constants/appstrings.dart';
import 'package:mvvm_trial/app/theme/texttheme.dart';
import 'package:sizer/sizer.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.gray,
        appBar: AppBar(
          backgroundColor: AppColors.gray,
          title: Text(AppString.welcome),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 5.h,
                child: Text(
                  AppString.hello,
                ),
              ),
              SizedBox(
                height: 5.h,
                width: 85.w,
                child: Container(
                    decoration: BoxDecoration(
                        //color: AppColors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                          color: AppColors.white,
                        )),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: AppString.phone,
                        border: InputBorder.none,
                      ),
                      textAlign: TextAlign.center,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 50.w,
                  height: 6.h,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.purple,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 9),
                      child: Text(
                        AppString.otpsend,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 15,
                  child: Text(
                    AppString.signup,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
