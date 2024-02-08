import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:book_app/core/api/end_points.dart';
import 'package:book_app/features/home_feature/home_models/random_books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  List<RandomBooks> randomBooks = [];

  late RandomBooks detailsArgs;

  void getRandomBooks() {
    try {
      emit(GetRandomBookLoadingState());
      Uri url = Uri.https(ApiClass.baseUrl, ApiClass.randomBooks);

      http.get(
        url,
        headers: {
          ApiClass.APIKEYHeader: ApiClass.APIKEY,
          ApiClass.HostHeader: ApiClass.Host
        },
      ).then(
        (value) {
          var json = jsonDecode(value.body);
          randomBooks =
              (json as List).map((e) => RandomBooks.fromJson(e)).toList();
          emit(GetRandomBookSuccessState());
        },
      );
    } catch (error) {
      emit(
        GetRandomBookFailureState(error: error.toString()),
      );
    }
  }


  List<RandomBooks> popularBooks = [];

  void getPopularBooks() {
    try {
      emit(GetPopularBookLoadingState());
      Uri url = Uri.https(
        ApiClass.baseUrl,
        ApiClass.randomBooks,
        {
          ApiClass.greaterRate: ApiClass.greaterRateValue,
          ApiClass.smallerRate: ApiClass.smallerRateValue,
        },
      );

      http.get(
        url,
        headers: {
          ApiClass.APIKEYHeader: ApiClass.APIKEY,
          ApiClass.HostHeader: ApiClass.Host
        },
      ).then(
        (value) {
          var json = jsonDecode(value.body);
          popularBooks =
              (json as List).map((e) => RandomBooks.fromJson(e)).toList();
          emit(GetRandomBookSuccessState());
        },
      );
    } catch (error) {
      emit(
        GetPopularBookFailureState(error: error.toString()),
      );
    }
  }
}
