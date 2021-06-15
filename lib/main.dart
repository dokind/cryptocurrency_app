import 'package:coin_base_clone/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'themes/custom_assets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textSize = Theme.of(context).textTheme;
    return MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        textTheme: Theme.of(context).textTheme.copyWith(
              // Big fish ,    96
              headline1: textSize.headline1!.copyWith(),
              // Big Stylish , 60
              headline2: textSize.headline2!.copyWith(),
              //               48
              headline3: textSize.headline3!.copyWith(),
              //   			   34
              headline4: textSize.headline4!.copyWith(),
              // * ListTile Title size Headline5, Roboto reg
              //               24
              headline5: textSize.headline5!.copyWith(
                color: Colors.white,
              ),
              // * App bar title size headline6,  Roboto medium
              //               20
              headline6: textSize.headline6!.copyWith(
                color: Colors.white,
              ),
              //      		   16
              subtitle1: textSize.subtitle1!.copyWith(
                color: Colors.white,
              ),
              //   			   14
              subtitle2: textSize.subtitle2!.copyWith(),
              //               14
              button: textSize.button!.copyWith(),
              //               12
              caption: textSize.caption!.copyWith(),
              //               10
              bodyText1: textSize.bodyText1!.copyWith(),
              // * subtitle size bodyText2 , Roboto Regular 14
              bodyText2: textSize.bodyText2!.copyWith(),
              // * overline in ListTile Etc, Roboto reg 10
              overline: textSize.overline!.copyWith(),
            ),
      ),
      theme: ThemeData.light().copyWith(
        textTheme: Theme.of(context).textTheme.copyWith(
              // Big fish ,    96
              headline1: textSize.headline1!.copyWith(),
              // Big Stylish , 60
              headline2: textSize.headline2!.copyWith(),
              //               48
              headline3: textSize.headline3!.copyWith(),
              //   			   34
              headline4: textSize.headline4!.copyWith(
                color: Colors.white,
              ),
              // * ListTile Title size Headline5, Roboto reg
              //               24
              headline5: textSize.headline5!.copyWith(color: Colors.white),
              // * App bar title size headline6,  Roboto medium
              //               20
              headline6: textSize.headline6!.copyWith(
                color: Colors.white,
              ),
              //      		   16
              subtitle1: textSize.subtitle1!.copyWith(
                color: Colors.white,
              ),
              //   			   14
              subtitle2: textSize.subtitle2!.copyWith(
                color: CustomColors.grey,
              ),
              //               14
              button: textSize.button!.copyWith(),
              //               12
              caption: textSize.caption!.copyWith(),
              //               10
              bodyText1: textSize.bodyText1!.copyWith(),
              // * subtitle size bodyText2 , Roboto Regular 14
              bodyText2: textSize.bodyText2!.copyWith(),
              // * overline in ListTile Etc, Roboto reg 10
              overline: textSize.overline!.copyWith(color: CustomColors.grey),
            ),
      ),
      themeMode: ThemeMode.system,
      home: MyHomeScreen(),
    );
  }
}

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_lightTheme);

  static final _lightTheme = ThemeData(
      fontFamily: 'Nunito',
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedIconTheme: IconThemeData(color: Colors.black54)),
      primarySwatch: Colors.grey,
      primaryColor: Colors.white,
      brightness: Brightness.light,
      backgroundColor: const Color(0xFF040404),
      accentIconTheme: IconThemeData(color: Colors.white),
      dividerColor: Colors.white54,
      iconTheme: IconThemeData(color: Colors.black54),
      primaryIconTheme: IconThemeData(color: Colors.black87));

  static final _darkTheme = ThemeData(
      fontFamily: 'Nunito',
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(color: Colors.white),
          unselectedIconTheme: IconThemeData(color: Colors.white38)),
      primarySwatch: Colors.grey,
      brightness: Brightness.dark,
      backgroundColor: const Color(0xFF212121),
      accentColor: Colors.white,
      dividerColor: Colors.black12,
      iconTheme: IconThemeData(color: Colors.white));

  void toggleTheme() {
    // emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
  }
}
