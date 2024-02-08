import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'detail_screen_state.dart';

class DetailScreenCubit extends Cubit<DetailScreenState> {
  DetailScreenCubit() : super(DetailScreenInitial());
}
