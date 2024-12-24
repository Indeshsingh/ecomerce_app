import 'package:bloc/bloc.dart';
import 'package:ecomerce_app/model/special_model.dart';
import 'package:ecomerce_app/repository/special_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'special_event.dart';
part 'special_state.dart';

class SpecialBloc extends Bloc<SpecialEvent, SpecialState> {
  final SpecialRepo specialRepo;
  SpecialBloc(this.specialRepo) : super(SpecialInitial()) {
    on<SpecialEvent>(_onSpecialEvent);
  }
  Future<void> _onSpecialEvent(
      SpecialEvent event, Emitter<SpecialState> emit) async {
    emit(SpecialLoading());
    try {
      // emit(SpecialLoading());
      final success = await specialRepo.fetchSpecials();
      if (success.isNotEmpty) {
        //log("if suceess bloc");
        emit(SpecialSuccess(specialModel: success));
      } else {
        emit(SpecialError(message: "Data not aviable!"));
      }
    } catch (e) {
      throw Exception("catch bloc${e.toString()}");
    }
  }
}
