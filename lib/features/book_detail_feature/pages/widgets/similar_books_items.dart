import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../cofing/routes/app_routes.dart';

class SimilarBooksItems extends StatelessWidget {
  const SimilarBooksItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.detailsScreen);
              },
              child: Container(
                width: 70.w,
                height: 112.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Book 1 High.png'),
                        fit: BoxFit.fill)),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: 10.w);
          },
          itemCount: 10),
    );
  }
}
