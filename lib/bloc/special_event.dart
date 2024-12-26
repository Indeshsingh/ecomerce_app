// part of 'special_bloc.dart';

// @immutable
// sealed class SpecialEvent extends Equatable {
//   const SpecialEvent();
//   @override
//   // TODO: implement props
//   List<Object?> get props => [];
// }

// class FetchSpecial extends SpecialEvent {}

abstract class SpecialEvent {}

class FetchProducts extends SpecialEvent {}
