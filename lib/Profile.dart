// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'editProfile.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: GestureDetector(
        child: Container(
          height: 100.h,
          width: 100.w,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/bg.png',
                  height: 100.h,
                  width: 100.w,
                ),
              ),
              Container(
                padding: EdgeInsets.all(4.h),
                child: Column(
                  children: [
                    SizedBox(height: 3.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: Container(
                              height: 5.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                  color: Color(0xFF869ADF),
                                  borderRadius: BorderRadius.circular(30.sp)),
                              child: Image.asset(
                                'assets/3.png',
                                height: 3.h,
                              )),
                        ),
                        Text('Profile',
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 21.sp,
                                    fontWeight: FontWeight.w800))),
                        Container(
                            height: 5.5.h,
                            width: 11.w,
                            alignment: Alignment.centerRight,
                            decoration: BoxDecoration(
                                color: Color(0xFF869ADF),
                                borderRadius: BorderRadius.circular(13.sp)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/a.png',
                                  height: 1.h,
                                ),
                                Image.asset(
                                  'assets/a.png',
                                  height: 1.h,
                                ),
                                Image.asset(
                                  'assets/b.png',
                                  height: 0.9.h,
                                ),
                              ],
                            ))
                      ],
                    ),
                    SizedBox(height: 3.h),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(7.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.sp),
                                border: Border.all(
                                    color: Color(0xFF869ADF), width: 0.6.h)),
                            child: Image.asset(
                              'assets/me.png',
                              height: 15.5.h,
                            ),
                          ),
                          Positioned(
                            right: 0.w,
                            bottom: 0.h,
                            child: Container(
                                padding: EdgeInsets.all(10.sp),
                                height: 5.5.h,
                                width: 11.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Color(0xFF5E70AF),
                                    borderRadius: BorderRadius.circular(30.sp)),
                                child: Image.asset(
                                  'assets/cam.png',
                                  height: 4.h,
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text('Esra Torun',
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 21.sp, fontWeight: FontWeight.w700))),
                    SizedBox(height: 0.1.h),
                    Text('student',
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 19.sp, fontWeight: FontWeight.w400))),
                    SizedBox(height: 3.5.h),
                    GestureDetector(
                      onTap: () => Get.to(EditProfile()),
                      child: Container(
                        height: 5.5.h,
                        width: 38.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xFF869ADF),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 15,
                                offset:
                                    Offset(5, 12), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(30.sp)),
                        child: Text('Edit Profile',
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 17.5.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white))),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    info('Email', 'esrtm@gmail.com'),
                    SizedBox(height: 0.9.h),
                    info('Phone', '+90 (534) 460 3390'),
                    SizedBox(height: 0.9.h),
                    info('Date of birth', '11/12/2000'),
                    SizedBox(height: 0.9.h),
                    info('Username', '@torunesra8'),
                    SizedBox(height: 5.h),
                    Container(
                      padding: EdgeInsets.only(left: 17.w, right: 17.w),
                      child: SlideAction(
                        height: 6.7.h,
                        outerColor: Color(0xFF7386C7),
                        innerColor: Color(0xFFE3E5EC),
                        sliderButtonIcon: Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Image.asset(
                            'assets/arr.png',
                            height: 2.h,
                          ),
                        ),
                        borderRadius: 18.sp,
                        elevation: 10,
                        sliderRotate: false,
                        sliderButtonIconPadding: 16.7.sp,
                        sliderButtonYOffset: -6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Sign Out',
                              style: TextStyle(
                                  fontSize: 17.5.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SizedBox(width: 7.w)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  info(String one, String two) {
    return Container(
      padding: EdgeInsets.only(left: 7.w, right: 7.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(one,
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w500))),
              Text(two,
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold))),
            ],
          ),
          SizedBox(height: 0.4.h),
          Container(
              child: Divider(
            color: Color(0xFF869ADF),
            thickness: 4.sp,
          )),
        ],
      ),
    );
  }
}
