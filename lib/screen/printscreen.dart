import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:novindus_task/cont.dart';

class InvoiceScreen extends StatefulWidget {
  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(595, 842),
      builder: (context, child) => Scaffold(
        body: PageView(
          children: [
            SizedBox(
              width: 595.w,
              height: 842.h,
              child: Padding(
                padding:  EdgeInsets.only(left: 20.w,top: 30.h,right: 20.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Gap(20.h),
                      SingleChildScrollView(scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/logo.png',
                              width: 76.w,
                              height: 80.h,
                            ),
                            Gap(103.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'KUMARAKOM',
                                  style: FS10FW600,
                                ),
                                Text(
                                  'Cheepunkal P.O. Kumarakom, kottayam, Kerala - 686563',
                                  style: FS10FW6009A9A9A,
                                ),
                                Text('e-mail: unknown@gmail.com', style: FS10FW6009A9A9A),
                                Text('Mob: +91 9876543210 | +91 9876543210', style: FS10FW6009A9A9A),
                                Text(
                                  'GST No: 32AABCU9603R1ZW',
                                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Gap(20.h),
                      Text(
                        'Patient Details',
                        style: fs13fw600green,
                      ),
                      Gap(10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _detailRow(label: 'Name', value: 'Salih T'),
                              _detailRow(label: 'Address', value: 'Nadakkave, Kozhikode'),
                              _detailRow(label: 'WhatsApp Number', value: '+91 987654321'),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _detailRow(label: 'Booked On', value: '31/01/2024 | 12:12pm'),
                              _detailRow(label: 'Treatment Date', value: '21/02/2024'),
                              _detailRow(label: 'Treatment Time', value: '11:00 am'),
                            ],
                          ),
                        ],
                      ),
                      Gap(20.h),
                      
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Treatment', style: fs13fw600green),
                          Gap(20.w),
                          Text('Price', style: fs13fw600green),
                          Text('Male Count', style: fs13fw600green),
                          Text('Female Count', style: fs13fw600green),
                          Text('Total', style: fs13fw600green),
                        ],
                      ),
                      Gap(10.h),
                      _treatmentRow(
                        treatment: 'Panchakarma',
                        price: '₹230',
                        maleCount: '4',
                        femaleCount: '4',
                        total: '₹2,540',
                      ),
                      _treatmentRow(
                        treatment: 'Njavara Kizhi Treatment',
                        price: '₹230',
                        maleCount: '4',
                        femaleCount: '4',
                        total: '₹2,540',
                      ),
                      _treatmentRow(
                        treatment: 'Panchakarma',
                        price: '₹230',
                        maleCount: '4',
                        femaleCount: '6',
                        total: '₹2,540',
                      ),
                      Gap(20.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          _summaryRow(label: 'Total Amount', value: '₹7,620'),
                          _summaryRow(label: 'Discount', value: '₹500'),
                          _summaryRow(label: 'Advance', value: '₹1,200'),
                          _summaryRow(label: 'Balance', value: '₹5,920'),
                        ],
                      ),
                      Gap(20.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Thank you for choosing us',
                            style: fs16fw700green,
                          ),
                          Text(
                            'Your well-being is our commitment, and we\'re honored \n you\'ve entrusted us with your health journey',
                            style: FS10FW4009A9A9A,textAlign: TextAlign.end,
                          ),
                          Gap(20.h),
                          Image.asset(
                            'asset/sign.png',
                            width: 107.w,
                            height: 41.h,
                          ),
                          Gap(10.h),
                          Text(
                            'Booking amount is non-refundable, and it\'s important to arrive on the allotted time for your treatment',
                            style: FS10FW4009A9A9A,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _detailRow({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: FS10FW600,
          ),
          Text(
            value,
            style: FS10FW6009A9A9A,
          ),
        ],
      ),
    );
  }

  Widget _treatmentRow({
    required String treatment,
    required String price,
    required String maleCount,
    required String femaleCount,
    required String total,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(treatment, style: fs13fw500),
        Text(price, style: fs13fw500),
        Text(maleCount, style: fs13fw500),
        Text(femaleCount, style: fs13fw500),
        Text(total, style: fs13fw500),
      ],
    );
  }

  Widget _summaryRow({required String label, required String value}) {
    return Padding(
      padding: EdgeInsets.only(left: 303.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: fs13fw600,
          ),
          Text(value, style: fs13fw400),
        ],
      ),
    );
  }
}
