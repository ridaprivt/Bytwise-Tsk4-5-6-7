// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'Profile.dart';
import 'dart:math' as math;
import 'Animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
          debugShowCheckedModeBanner: false, home: MyHomePage());
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFF869ADF),
          body: Container(
            height: 100.h,
            width: 100.w,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                ScaleTransition(
                  scale: _animation,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/2.png',
                      height: 60.h,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.h,
                  child: Container(
                    padding: EdgeInsets.only(left: 7.w, right: 7.w, top: 1.2.h),
                    height: 60.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.sp),
                            topRight: Radius.circular(25.sp))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 0.6.h,
                                width: 22.w,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20.sp)),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Text('Sign In',
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.bold))),
                          SizedBox(height: 3.5.h),
                          Container(
                            padding: EdgeInsets.only(left: 2.w),
                            height: 5.3.h,
                            decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(20.sp),
                              border: Border.all(
                                  width: 0.2.w,
                                  color: Color.fromARGB(255, 206, 206, 206)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 15,
                                  offset: Offset(
                                      5, 12), // changes position of shadow
                                ),
                              ],
                            ),
                            child: TextField(
                              obscureText: false,
                              style: TextStyle(
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                hintText: 'Email',
                                contentPadding:
                                    EdgeInsets.only(top: 0.5.h, bottom: 1.h),
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.5.sp),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(0, 44, 44, 44))),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Color.fromARGB(0, 44, 44, 44),
                                )),
                                prefixIcon: Image.asset(
                                  'assets/lock.png',
                                  height: 5.h,
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Container(
                            padding: EdgeInsets.only(left: 2.w),
                            height: 5.3.h,
                            decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(20.sp),
                              border: Border.all(
                                  width: 0.2.w,
                                  color: Color.fromARGB(255, 206, 206, 206)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 15,
                                  offset: Offset(
                                      5, 12), // changes position of shadow
                                ),
                              ],
                            ),
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                hintText: 'Password',
                                contentPadding:
                                    EdgeInsets.only(top: 0.5.h, bottom: 2.h),
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.5.sp),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(0, 44, 44, 44))),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Color.fromARGB(0, 44, 44, 44),
                                )),
                                prefixIcon: Image.asset(
                                  'assets/lock.png',
                                  height: 5.h,
                                ),
                              ),
                              keyboardType: TextInputType.visiblePassword,
                            ),
                          ),
                          SizedBox(height: 1.5.h),
                          Text('  Forgot your Password?',
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontSize: 15.5.sp,
                                      fontWeight: FontWeight.w500))),
                          SizedBox(height: 3.h),
                          GestureDetector(
                            onTap: () {
                              Get.to(MyState());
                            },
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(left: 2.w),
                              height: 5.3.h,
                              decoration: BoxDecoration(
                                color: Color(0xFF869ADF),
                                borderRadius: BorderRadius.circular(20.sp),
                                border: Border.all(
                                    width: 0.2.w,
                                    color: Color.fromARGB(255, 206, 206, 206)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 15,
                                    offset: Offset(
                                        5, 12), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Text('Create Account',
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontSize: 16.5.sp,
                                          fontWeight: FontWeight.bold))),
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Container(
                              margin: EdgeInsets.only(left: 2.w, right: 2.w),
                              child: Divider(
                                color: Colors.grey,
                                height: 2.h,
                              )),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('  Do you have an account?',
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontSize: 15.5.sp,
                                          fontWeight: FontWeight.w500))),
                              Text(' Login',
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontSize: 15.7.sp,
                                          fontWeight: FontWeight.bold))),
                            ],
                          ),
                        ]),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
