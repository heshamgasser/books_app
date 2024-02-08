import 'package:book_app/core/utiles/app_components.dart';
import 'package:book_app/features/home_feature/home_cubit/home_cubit.dart';
import 'package:book_app/features/home_feature/pages/widgets/popular_books.dart';
import 'package:book_app/features/home_feature/pages/widgets/books_slider_item.dart';
import 'package:book_app/features/home_feature/pages/widgets/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utiles/app_images.dart';
import '../../../core/utiles/app_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()
        ..getRandomBooks()
        ..getPopularBooks(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is GetRandomBookLoadingState ||
              state is GetPopularBookLoadingState) {
            const Center(child: CircularProgressIndicator());
          } else if (state is GetRandomBookFailureState) {
            AppComponents.helperSnackBar(context, state.error);
          } else if (state is GetPopularBookFailureState) {
            AppComponents.helperSnackBar(context, state.error);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Image.asset(AppImages.appLogo),
              actions: [
                IconButton(
                  onPressed: () {
                    showSearch(context: context, delegate: SearchScreen());
                  },
                  icon: Icon(Icons.search),
                ),
              ],
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BooksSliderItems(),
                  SizedBox(height: 50.h),
                  Text(
                    AppStrings.popular_books,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 19.h),
                  PopularBooks(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
