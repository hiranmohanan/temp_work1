import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/appcolros.dart';
import '../../../constants/appstrings.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.gray,
        appBar: AppBar(
          backgroundColor: AppColors.gray,
          title: Text(AppString.welcome),
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.h),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.h),
                alignment: Alignment.center,
                child: Text(
                  "Register new user",
                  style: TextStyle(fontSize: 25, color: AppColors.white),
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              TextFormField(
                  decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.white,
                border: OutlineInputBorder(),
                hintText: "eneter your name",
              )),
              SizedBox(
                height: 3.h,
              ),
              TextFormField(
                  decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.white,
                border: OutlineInputBorder(),
                hintText: "phone number",
              )),
              SizedBox(
                height: 3.h,
              ),
              TextFormField(
                  decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.white,
                border: OutlineInputBorder(),
                hintText: "email",
              )),
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
                        "Create Account",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ))));
  }
}
