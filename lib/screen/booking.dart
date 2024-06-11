import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:novindus_task/screen/register.dart';

class BookingPage extends StatefulWidget {
  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  DateTime date = DateTime.now();
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'asset/bell.png',
              height: 28.h,
              width: 28.w,
            ),
          ),
          Gap(20.w)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 240, 240, 240),
                      borderRadius: BorderRadius.circular(8.5.r),
                      border: Border.all(
                        width: 0.85.w,
                        color: Color.fromARGB(255, 202, 201, 201),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: TextFormField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search for treatments',
                          hintStyle: TextStyle(fontSize: 14.sp),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a search term';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ),
                Gap(15.w),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                    
                    },
                    child: Container(
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: Color(0xff006837),
                        borderRadius: BorderRadius.circular(8.5.r),
                      ),
                      child: Center(
                        child: Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Gap(28.h),
            Row(
              children: [
                Text(
                  'Sort by:',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Gap(116.w),
                GestureDetector(
                  onTap: () async {
                    date = await showDatePicker(
                          context: context,
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2025),
                        ) ??
                        DateTime.now();

                    setState(() {});
                  },
                  child: Container(
                    height: 39.h,
                    width: 169.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xff6E97AE)),
                      borderRadius: BorderRadius.circular(33.r),
                    ),
                    child: Row(
                      children: [
                        Gap(7.w),
                        Text(
                          '${DateFormat('dd-MM-yyyy').format(date)}',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Gap(50.w),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 20.sp,
                          color: Color(0xff6E97AE),
                        ),
                        Gap(10.w),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Gap(13.h),
            Divider(
              color: Colors.grey,
            ),
            Gap(14.h),
            Expanded(
              child: ListView(
                children: [
                  
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 46.h),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ),
                  );
                },
                child: Container(
                  height: 50.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                    color: Color(0xff006837),
                    borderRadius: BorderRadius.circular(8.5.r),
                  ),
                  child: Center(
                    child: Text(
                      'Register Now',
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
