import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ColorEvent {}

class RedColorEvent extends ColorEvent {}

class BlueColorEvent extends ColorEvent {}

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc() : super(Colors.red) {
    on<RedColorEvent>((event, emit) => emit(Colors.red));
    on<BlueColorEvent>((event, emit) => emit(Colors.blue));
  }
}
