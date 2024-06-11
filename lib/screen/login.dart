import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:novindus_task/cont.dart';
import 'package:novindus_task/screen/booking.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "asset/home.png",
                  width: MediaQuery.sizeOf(context).width,
                  height: 217.h,
                ),
                Positioned(
                  top: 86.h,
                  left: 167.w,
                  child: Image.asset(
                    "asset/logo1.png",
                    height: 84.h,
                    width: 80.w,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h, left: 20.w, right: 20.w),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login Or Register To Book\nYour Appointments',
                        style: FS24FW600,
                      ),
                      Gap(30.h),
                      ContainerExtract(
                        controller: _emailController,
                        height: 50.h,
                        width: 350.w,
                        text: 'Enter your email',
                        text2: 'Email',
                        hintText: true,
                        icon: Icons.email,
                        iconTag: false,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          } else if (!RegExp(
                                  r'^[^@\s]+@[^@\s]+\.[^@\s]+$')
                              .hasMatch(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                      Gap(30.h),
                      ContainerExtract(
                        controller: _passwordController,
                        height: 50.h,
                        width: 350.w,
                        text: 'Enter your password',
                        text2: 'Password',
                        hintText: true,
                        icon: Icons.lock,
                        iconTag:false,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                      ),
                      Gap(84.h),
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BookingPage(),
                              ),
                            );
                          }
                        },
                        child: ContainExtractButton(
                          text1: 'Login',
                          height: 50.h,
                          width: 350.w,
                          color: Color(0xff006837),
                          textColor: true,
                        ),
                      ),
                      Gap(104.h),
                      Text.rich(
                        TextSpan(
                          text:
                              'By creating or logging into an account you are agreeing \nwith our ',
                          style: FS12FW300black,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Terms and Conditions',
                              style: FS12FW500blue,
                            ),
                            TextSpan(
                              text: ' and ',
                              style: FS12FW300black,
                            ),
                            TextSpan(
                              text: 'Privacy Policy.',
                              style: FS12FW500blue,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContainExtractButton extends StatelessWidget {
  const ContainExtractButton({
    super.key,
    required this.text1,
    required this.height,
    required this.width,
    required this.color,
    required this.textColor,
  });
  final String text1;
  final double height;
  final double width;
  final Color color;
  final bool textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.5.r),
      ),
      child: Center(
        child: textColor
            ? Text(
                text1,
                style: FS17FW600white,
              )
            : Text(
                text1,
                style: FS15FW500,
              ),
      ),
    );
  }
}

class ContainerExtract extends StatelessWidget {
  const ContainerExtract({
    super.key,
    required this.text,
    required this.height,
    required this.width,
    required this.text2,
    required this.hintText,
    required this.icon,
    required this.iconTag,
    required this.validator,
    required this.controller, this.change, 
  });

  final String text;
  final String text2;
  final double height;
  final double width;
  final bool hintText;
  final IconData icon;
  final bool iconTag;
  final String? Function(String?) validator;
  final TextEditingController controller;
  final void Function()? change;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Text(
            text2,
            style: FS16FW400,
          ),
        ),
        Gap(6.h),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 240, 240, 240),
            borderRadius: BorderRadius.circular(8.5.r),
            border: Border.all(
              width: 0.85.w,
              color: Color.fromARGB(255, 202, 201, 201),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: text,
                hintStyle: FS14FW300,
                suffixIcon: iconTag
                    ? Icon(
                        icon,
                        color: Color(0xff006837),
                        size: 30.sp,
                      )
                    : null,
              ),
              validator: validator,
            ),
          ),
        ),
      ],
    );
  }
}
