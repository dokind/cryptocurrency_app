import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_lightTheme);

  static final _lightTheme = ThemeData.light().copyWith(
    textTheme: TextTheme(),
    primaryColor: Colors.yellow,
    accentColor: Colors.pink,

    // TODO
    // * Light Theme
    // Tip Use Material colors
  );
  static final _darkTheme = ThemeData.dark().copyWith();
  // var textTheme = Theme.of(context).textTheme;
  // static final _darkTheme = ThemeData.dark().copyWith(
  // TODO
  // * Light Theme
  // Tip Use Material colors

  // textTheme: Theme.of(context).textTheme.copyWith(
  //     headline1: Theme.of(context).textTheme.headline6!.copyWith()));
  void toggleTheme() {
    emit(
      state == _lightTheme ? _darkTheme : _lightTheme,
    );
    emit(
      state == _darkTheme ? _lightTheme : _darkTheme,
    );
    emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
    print("toggleTHime");
  }
}
