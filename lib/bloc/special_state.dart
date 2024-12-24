part of 'special_bloc.dart';

@immutable
sealed class SpecialState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class SpecialInitial extends SpecialState {}

class SpecialLoading extends SpecialState {}

class SpecialSuccess extends SpecialState {
  final List<SpecialModel> specialModel;

  SpecialSuccess({this.specialModel = const []});

  SpecialSuccess copyWith({List<SpecialModel>? specialModel}) {
    return SpecialSuccess(specialModel: specialModel ?? this.specialModel);
  }
}

class SpecialError extends SpecialState {
  final String message;

  SpecialError({required this.message});
}
