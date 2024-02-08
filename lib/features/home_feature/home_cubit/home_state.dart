part of 'home_cubit.dart';

@immutable
abstract class HomeStates {}

class HomeInitialState extends HomeStates {}

class GetRandomBookLoadingState extends HomeStates {}

class GetRandomBookSuccessState extends HomeStates {}

class GetRandomBookFailureState extends HomeStates {
  String error;

  GetRandomBookFailureState({required this.error});
}

class GetPopularBookLoadingState extends HomeStates {}

class GetPopularBookSuccessState extends HomeStates {}

class GetPopularBookFailureState extends HomeStates {
  String error;

  GetPopularBookFailureState({required this.error});
}
