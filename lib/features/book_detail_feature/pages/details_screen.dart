import 'package:book_app/features/book_detail_feature/pages/widgets/book_detail.dart';
import 'package:book_app/features/book_detail_feature/pages/widgets/price_container.dart';
import 'package:book_app/features/book_detail_feature/pages/widgets/similar_books_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
        child: ListView(
          children: [
            BookDetail(),
            SizedBox(height: 30.h),
            PriceContainer(),
            SizedBox(height: 40.h),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also Like',
                  style: Theme.of(context).textTheme.bodySmall,
                )),
            SizedBox(height: 15.h),
            SimilarBooksItems()
          ],
        ),
      ),
    );
  }
}
