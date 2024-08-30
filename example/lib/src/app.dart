import 'package:example/src/core/services/colors_services/color_service.dart';
import 'package:example/src/core/theme/app_fonts.dart/app_fonts.dart';
import 'package:example/src/core/theme/app_theme.dart';
import 'package:example/src/presentation/bloc/theme_bloc.dart';
import 'package:example/src/presentation/dashboad.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// The main app widget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final themeBloc = ThemeBloc();
    final lato = GoogleFonts.lato();
    //TODO: Find a better way to instantiate the color and fonst
    final colorService = ColorService(LocalColors());
    final appTheme = AppTheme(
      appColors: colorService.getAppColors(),
      appFonts: AppFonts.fromGoogle(lato),
    );

    /// Theme bloc instance
    return StreamBuilder<bool>(
      stream: themeBloc.stream,
      // initialData: false,
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return const CircularProgressIndicator();
        }
        return MaterialApp(
          title: 'Flutter Demo',
          // light theme for the app
          theme: appTheme.toThemeData(
            snapshot.data == false ? LightScheme() : DarkScheme(),
          ),
          // dark theme for the app
          home: DashBoard(themeBloc: themeBloc),
          debugShowCheckedModeBanner: false,

          /// Thememode is switched based on the stream value
        );
      },
    );
  }
}
