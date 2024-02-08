import 'package:bloc/bloc.dart';
import 'package:book_app/core/utiles/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app.dart';

void main () async{
  Bloc.observer = MyBlocObserver();
   await ScreenUtil.ensureScreenSize();
  runApp(BookApp());


}