// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:bytwise_app/Animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Animation.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Stack(
        children: [
          Image.asset(
            'assets/bg.png',
            height: 100.h,
            width: 100.h,
          ),
          ListView(
            padding: EdgeInsets.all(0),
            children: [
              SizedBox(
                height: 30.h,
              ),
              Material(
                  child: SlideTransition(
                      position: _offsetAnimation,
                      child: Stack(
                        children: [
                          Container(
                            height: 70.h,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(57, 56, 10, 79),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.sp),
                                    topRight: Radius.circular(25.sp))),
                          ),
                          Column(
                            children: [
                              SizedBox(height: 2.h),
                              Container(
                                height: 68.h,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(128, 56, 10, 79),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25.sp),
                                        topRight: Radius.circular(25.sp))),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 4.h),
                              Container(
                                height: 66.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(194, 56, 10, 79),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25.sp),
                                        topRight: Radius.circular(25.sp))),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 7.5.h),
                                      Row(
                                        children: [
                                          SizedBox(width: 14.w),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Enter OTP send on',
                                                  style: GoogleFonts.roboto(
                                                      textStyle: TextStyle(
                                                          fontSize: 23.sp),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white)),
                                              SizedBox(height: 1.5.h),
                                              Text('*********3434',
                                                  style: GoogleFonts.roboto(
                                                      textStyle: TextStyle(
                                                          fontSize: 18.5.sp),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          const Color.fromARGB(
                                                              199,
                                                              255,
                                                              255,
                                                              255))),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 35, right: 35),
                                        height: 13.h,
                                        child: Form(
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            numberr(context),
                                            numberr(context),
                                            numberr(context),
                                            numberr(context),
                                            numberr(context),
                                          ],
                                        )),
                                      ),
                                      Text('Resend',
                                          style: GoogleFonts.roboto(
                                            textStyle:
                                                TextStyle(fontSize: 15.5.sp),
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                          )),
                                      SizedBox(height: 6.5.h),
                                      MaterialButton(
                                        onPressed: () {},
                                        minWidth: 1.w,
                                        padding: const EdgeInsets.all(0),
                                        child: Container(
                                          height: 6.h,
                                          width: 70.w,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFEC842),
                                            borderRadius:
                                                BorderRadius.circular(20.sp),
                                          ),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text('Sign Up',
                                                    style: GoogleFonts.roboto(
                                                        textStyle: TextStyle(
                                                            fontSize: 16.sp),
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black)),
                                              ]),
                                        ),
                                      ),
                                    ]),
                              ),
                            ],
                          )
                        ],
                      )))
            ],
          ),
        ],
      ),
    )));
  }

  numberr(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 6.5.h,
      width: 14.w,
      decoration: BoxDecoration(
          color: Color.fromARGB(77, 217, 217, 217),
          borderRadius: BorderRadius.circular(30.sp)),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        style: TextStyle(
            fontSize: 22.sp, fontWeight: FontWeight.w900, color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(0, 255, 255, 255))),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Color.fromARGB(0, 255, 255, 255),
          )),
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        textAlign: TextAlign.center,
      ),
    );
  }
}
