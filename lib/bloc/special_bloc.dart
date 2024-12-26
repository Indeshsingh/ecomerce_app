// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:ecomerce_app/model/special_model.dart';
// import 'package:ecomerce_app/repository/special_repo.dart';
// import 'package:equatable/equatable.dart';
// import 'package:meta/meta.dart';

// part 'special_event.dart';
// part 'special_state.dart';

// class SpecialBloc extends Bloc<SpecialEvent, SpecialState> {
//   final SpecialRepo specialRepo;
//   SpecialBloc(this.specialRepo) : super(SpecialInitial()) {
//     on<SpecialEvent>(_onSpecialEvent);
//   }
//   Future<void> _onSpecialEvent(
//       SpecialEvent event, Emitter<SpecialState> emit) async {
//     emit(SpecialLoading());
//     try {
//       // emit(SpecialLoading());
//       final success = await specialRepo.fetchSpecials();
//       if (success.isNotEmpty) {
//         //log("if suceess bloc");
//         emit(SpecialSuccess(specialModel: success));
//       } else {
//         emit(SpecialError(message: "Data not aviable!"));
//       }
//     } catch (e) {
//       throw Exception("catch bloc${e.toString()}");
//     }
//   }
// }

import 'package:ecomerce_app/repository/special_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'special_event.dart';
import 'special_state.dart';

class SpecialBloc extends Bloc<SpecialEvent, SpecialState> {
  final SpecialRepo repository;

  SpecialBloc(this.repository) : super(SpecialInitial()) {
    on<FetchProducts>(_onFetchProducts);
  }

  Future<void> _onFetchProducts(
      FetchProducts event, Emitter<SpecialState> emit) async {
    emit(SpecialLoading());
    try {
      final products = await repository.fetchProducts();
      emit(SpecialLoaded(products));
    } catch (e) {
      emit(SpecialError('Failed to load products: ${e.toString()}'));
    }
  }
}
