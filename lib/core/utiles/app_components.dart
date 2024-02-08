
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cofing/routes/app_routes.dart';

class AppComponents {

  static Widget unDefinedRoute (BuildContext context){
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.warning, size: 100.r, color: Colors.red,),
          SizedBox(height: 10.h),
          Text('Failed to Load Page'),
            SizedBox(height: 10.h),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, AppRoutes.homeScreen);
              },
              child: Text(
                'Home Screen',
                style: Theme.of(context)
                    .textTheme.bodyMedium!.copyWith(color: Colors.black),),),
        ],
      ),),
    );

  }



static void helperSnackBar (BuildContext context, String message){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
       message,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    ),
  );
}


}