// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:bytwise_app/Profile.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';

class MyState extends StatefulWidget {
  const MyState({super.key});
  @override
  State<MyState> createState() => _MyState();
}

class _MyState extends State<MyState> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 5),
    vsync: this,
  )..repeat();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Profile(controllers: _controller)));
  }
}
