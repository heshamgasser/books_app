
import 'package:book_app/features/home_feature/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_item_widget.dart';

class PopularBooks extends StatelessWidget {
  const PopularBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(itemBuilder: (context, index) {
        return BookItemWidget(randomBooks: HomeCubit.get(context).popularBooks[index],);
      }, separatorBuilder: (context, index) {
        return SizedBox(height: 18.h);
      }, itemCount: HomeCubit.get(context).popularBooks.length),
    );
  }
}
