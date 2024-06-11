import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:novindus_task/screen/login.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          )),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "asset/splash.png",
            height: MediaQuery.sizeOf(context).height,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}
