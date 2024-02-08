import 'package:book_app/features/home_feature/home_models/random_books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../cofing/routes/app_routes.dart';
import '../../../../core/utiles/app_colors.dart';
import '../../../../core/utiles/app_string.dart';

class BookItemWidget extends StatelessWidget {
 RandomBooks randomBooks;


 BookItemWidget({required this.randomBooks});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.detailsScreen);
      },
      child: Row(
        children: [
          Container(
            height: 110.h,
            width: 70.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.r),
              image: DecorationImage(
                  image: NetworkImage(randomBooks.cover ?? ''),
                  fit: BoxFit.fill),
            ),
          ),
          SizedBox(width: 30.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  randomBooks.title ?? '',
                  style: Theme.of(context).textTheme.bodyMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 3.h),
                Text(
                  '${randomBooks.author?.firstName} ${randomBooks.author?.lastName}' ?? '',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    Text(
                      "19.99 SAR",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    Spacer(),
                    Icon(
                      Icons.star,
                      color: AppColors.ratingColor,
                      size: 30.r,
                    ),
                    SizedBox(width: 6.5.w),
                    Text(
                      randomBooks.rating.toString() ??'',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    // SizedBox(width: 9.w),
                    // Text(
                    //   '(2390)',
                    //   style: Theme.of(context).textTheme.bodySmall,
                    // )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
