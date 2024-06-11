

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:novindus_task/cont.dart';
import 'package:novindus_task/screen/booking.dart';
import 'package:novindus_task/screen/login.dart';
import 'package:novindus_task/screen/printscreen.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  String _paymentOption = 'Cash';
  int maleCount = 1;
  int femaleCount = 1;
  String? selectedTreatment;
  DateTime date = DateTime.now();

  final TextEditingController _nameController = TextEditingController();
  TextEditingController _whatsappController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController branch = TextEditingController();
  TextEditingController _addressController3 = TextEditingController();
  TextEditingController _addressController4 = TextEditingController();

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 34.w),
              child: Text(
                'Register',
                style: FS24FW600,
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 12.h,
            ),
            Gap(30.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContainerExtract(
                      controller: _nameController,
                      height: 50.h,
                      width: 350.w,
                      text: 'Enter your Name',
                      text2: 'Name',
                      hintText: true,
                      icon: Icons.keyboard_arrow_down,
                      iconTag: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }

                        return null;
                      },
                    ),
                    
                    Gap(20.h),
                    ContainerExtract(
                      controller:_whatsappController ,
                      height: 50.h,
                      width: 350.w,
                      text: 'Enter your  Whatsapp Number',
                      text2: 'Name',
                      hintText: true,
                      icon: Icons.keyboard_arrow_down,
                      iconTag: false,
                      validator: (value) {
                        if (value == null || value.isEmpty || value.length<10) {
                          return 'Please enter your  Whatsapp Number';
                        }

                        return null;
                      },
                    ),
                    
                      
                    Gap(20.h),
                    ContainerExtract(
                      controller:_addressController ,
                      height: 50.h,
                      width: 350.w,
                      text: 'Enter your address',
                      text2: 'Name',
                      hintText: true,
                      icon: Icons.keyboard_arrow_down,
                      iconTag: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your address';
                        }

                        return null;
                      },
                    ),
                    
                    Gap(20.h),
                    ContainerExtract(
                      controller: location,
                      height: 50.h,
                      width: 350.w,
                      text: 'choose Location',
                      text2: 'Location',
                      hintText: true,
                      icon: Icons.keyboard_arrow_down,
                      iconTag: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Select your location';
                        }

                        return null;
                      },
                    ),
                    Gap(20.h),
                    ContainerExtract(
                      controller: branch,
                      height: 50.h,
                      width: 350.w,
                      text: 'Select the branch ',
                      text2: 'true',
                      hintText: true,
                      icon: Icons.keyboard_arrow_down,
                      iconTag: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Select your Branch';
                        }

                        return null;
                      },
                    ),
                    Gap(20.h),
                    Text(
                      'Treatments',
                      style: FS16FW400,
                    ),
                    Container(
                      height: 84.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 223, 223, 223),
                          borderRadius: BorderRadius.circular(8.5.r)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 10.h),
                            child: Row(
                              children: [
                                Text(
                                  '1.   Couple Combo package i..',
                                  style: FS18FW500,
                                ),
                                Gap(28.w),
                                Icon(
                                  Icons.cancel,
                                  color: Color.fromARGB(255, 237, 129, 121),
                                  size: 32.sp,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 45.w, top: 7.h),
                            child: Row(
                              children: [
                                Text(
                                  'Male',
                                  style: FS16FW400green,
                                ),
                                Gap(9.w),
                                Container(
                                  height: 26.h,
                                  width: 44.w,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(8.5.r),
                                      border: Border.all(color: Colors.grey)),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                    ),
                                  ),
                                ),
                                Gap(35.w),
                                Text(
                                  'Female',
                                  style: FS16FW400green,
                                ),
                                Gap(9.w),
                                Container(
                                  height: 26.h,
                                  width: 44.w,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(8.5.r),
                                      border: Border.all(color: Colors.grey)),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                    ),
                                  ),
                                ),
                                Gap(34.w),
                                Icon(
                                  Icons.edit_outlined,
                                  color: Color(0xff006837),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(10.h),
                    
                    
                      GestureDetector(
                          onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                              insetPadding: EdgeInsets.all(15),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 20.w, top: 48.h, right: 20.w),
                                child: Container(
                                  height: 424.h,
                                  width: 348.w,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ContainerExtract(
                                        controller: branch,
                                        height: 50.h,
                                        width: 350.w,
                                        text: 'Choose preferred treatment ',
                                        text2: 'Choose Treatment',
                                        hintText: true,
                                        icon: Icons.keyboard_arrow_down,
                                        iconTag: true,
                                        validator: (value) {
                                          // if (value == null || value.isEmpty) {
                                          //   return 'Choose preferred treatment';
                                          // }

                                          // return null;
                                        },
                                      ),
                                      Gap(20.h),
                                      showdilaoge(
                                        text: 'Male',
                                        text1: 'Add Patients',
                                      ),
                                      Gap(10.h),
                                      showdilaoge(
                                        text: 'Female ',
                                        text1: '',
                                      ),
                                      Gap(30.h),
                                      GestureDetector(
                                        onTap: () {
                                          if (_formKey.currentState
                                                  ?.validate() ??
                                              false) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    BookingPage(),
                                              ),
                                            );
                                          }
                                        },
                                        child: ContainExtractButton(
                                          text1: 'save',
                                          height: 50.h,
                                          width: 350.w,
                                          color: Color(0xff006837),
                                          textColor: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        );
                      },
                        child: ContainExtractButton(
                          text1: '+Add Treatments',
                          height: 50.h,
                          width: 350.w,
                          color: const Color.fromARGB(255, 155, 241, 158),
                          textColor: false,
                        ),
                      ),
                    
                    Gap(25.h),
                    ContainerExtract(
                      controller: branch,
                      height: 50.h,
                      width: 350.w,
                      text: ' ',
                      text2: 'Total Amount',
                      hintText: false,
                      icon: Icons.keyboard_arrow_down,
                      iconTag: false,
                      validator: (value) {
                        // if (value == null || value.isEmpty) {
                        //   return 'Enter Total Amount';
                        // }

                        // return null;
                      },
                    ),
                    Gap(20.h),
                    ContainerExtract(
                      controller: branch,
                      height: 50.h,
                      width: 350.w,
                      text: ' ',
                      text2: 'Discount Amount',
                      hintText: false,
                      icon: Icons.keyboard_arrow_down,
                      iconTag: false,
                      validator: (value) {
                        // if (value == null || value.isEmpty) {
                        //   return 'Enter  Discount Amount';
                        // }

                        // return null;
                      },
                    ),
                    Gap(20.h),
                    Text(
                      'Payment Option',
                      style: FS16FW400,
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Cash',
                          groupValue: _paymentOption,
                          onChanged: (value) {
                            setState(() {
                              _paymentOption = value!;
                            });
                          },
                        ),
                        Text('Cash'),
                        Radio<String>(
                          value: 'Card',
                          groupValue: _paymentOption,
                          onChanged: (value) {
                            setState(() {
                              _paymentOption = value!;
                            });
                          },
                        ),
                        Text('Card'),
                        Radio<String>(
                          value: 'UPI',
                          groupValue: _paymentOption,
                          onChanged: (value) {
                            setState(() {
                              _paymentOption = value!;
                            });
                          },
                        ),
                        Text('UPI'),
                      ],
                    ),
                    ContainerExtract(
                      controller: branch,
                      height: 50.h,
                      width: 350.w,
                      text: ' ',
                      text2: 'Advance Amount',
                      hintText: false,
                      icon: Icons.keyboard_arrow_down,
                      iconTag: false,
                      validator: (value) {
                        // if (value == null || value.isEmpty) {
                        //   return 'Enter Advance Amount';
                        // }

                        // return null;
                      },
                    ),
                    
                    Gap(20.h),
                    ContainerExtract(
                      controller: branch,
                      height: 50.h,
                      width: 350.w,
                      text: ' ',
                      text2: 'Balance Amount',
                      hintText: false,
                      icon: Icons.keyboard_arrow_down,
                      iconTag: false,
                      validator: (value) {
                        // if (value == null || value.isEmpty) {
                        //   return 'Enter Balance Amount';
                        // }

                        // return null;
                      },
                    ),
                    
                    Gap(20.h),
                    ContainerExtract(
                      controller: branch,
                      height: 50.h,
                      width: 350.w,
                      text: ' ',
                      text2: 'Treatment Date',
                      hintText: false,
                      icon: Icons.keyboard_arrow_down,
                      iconTag: true,
                      change: () async {
                        DateTime? date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2025),
                        );
                      },
                      validator: (value) {
                        // if (value == null || value.isEmpty) {
                        //   return 'Enter Treatment Date';
                        // }

                        // return null;
                      },
                    ),
                    
                    Gap(20.h),
                    Row(
                      children: [
                        ContainerExtract(
                      controller: branch,
                      height: 50.h,
                      width: 170.w,
                      text: 'Hour',
                      text2: 'Treatment Time ',
                      hintText: true,
                      icon: Icons.keyboard_arrow_down,
                      iconTag: true,
                      validator: (value) {
                        // if (value == null || value.isEmpty) {
                        //   return 'Enter Treatment Time';
                        // }

                        // return null;
                      },
                    ),
                        
                        Gap(10.w),ContainerExtract(
                      controller: branch,
                      height: 50.h,
                      width: 170.w,
                      text: 'Minutes',
                      text2: '',
                      hintText: false,
                      icon: Icons.keyboard_arrow_down,
                      iconTag: false,
                      validator: (value) {
                        // if (value == null || value.isEmpty) {
                        //   return 'Enter Minutes';
                        // }

                        // return null;
                      },
                    ),
                        
                      ],
                    ),
                    Gap(55.h),
                    GestureDetector(
                        onTap: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InvoiceScreen(),
                              ),
                            );
                          }
                        },
                        child: ContainExtractButton(
                          text1: 'save',
                          height: 50.h,
                          width: 350.w,
                          color: Color(0xff006837),
                          textColor: true,
                        ),
                      ),
                    Gap(68.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class showdilaoge extends StatelessWidget {
  const showdilaoge({
    super.key,
    required this.text,
    required this.text1,
  });
  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: 50.h,
          width: 124.w,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 240, 240, 240),
            borderRadius: BorderRadius.circular(8.5.r),
            border: Border.all(
              width: 0.85.w,
              color: Color.fromARGB(255, 202, 201, 201),
            ),
          ),child: Text(text,style: FS14FW300,),
        ),
       
        Gap(40.w),
        GestureDetector(
          onTap: () {},
          child: roundcontainer(
            icon: Icons.minimize,
          ),
        ),
        Gap(8.w),
       Container(
          height: 44.h,
          width: 48.w,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 240, 240, 240),
            borderRadius: BorderRadius.circular(8.5.r),
            border: Border.all(
              width: 0.85.w,
              color: Color.fromARGB(255, 202, 201, 201),
            ),
          ),child: Text('0',style: FS14FW300,),
        ),
        Gap(8.w),
        GestureDetector(
          onTap: () {},
          child: roundcontainer(
            icon: Icons.add,
          ),
        ),
      ],
    );
  }
}

class roundcontainer extends StatelessWidget {
  const roundcontainer({
    super.key,
    required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29.r), color: Color(0xff006837)),
      child: Icon(
        icon,
        size: 16.sp,
        color: Colors.white,
      ),
    );
  }
}