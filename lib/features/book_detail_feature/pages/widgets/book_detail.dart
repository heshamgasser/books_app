import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utiles/app_colors.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: 162.w,
          height: 243.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Image.asset('assets/images/Book 1 High.png'),
        ),
        SizedBox(height: 30.h),
        Align(
            alignment: Alignment.center,
            child: Text(
              'The Jungle Book',
              style: Theme.of(context).textTheme.bodyLarge,
            )),
        SizedBox(height: 5.h),
        Align(
            alignment: Alignment.center,
            child: Text(
              'Rudyard Kipling',
              style: Theme.of(context).textTheme.titleMedium,
            )),
        SizedBox(height: 14.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: AppColors.ratingColor,
              size: 30.r,
            ),
            SizedBox(width: 6.5.w),
            Text(
              '4.8',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(width: 9.w),
            Text(
              '(2390)',
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        )
      ],
    );
  }
}
