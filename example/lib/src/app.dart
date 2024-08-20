import 'package:example/src/core/theme/app_colors/app_colors.dart';
import 'package:example/src/core/theme/app_fonts.dart/app_fonts.dart';
import 'package:example/src/core/theme/app_theme.dart';
import 'package:example/src/presentation/bloc/theme_bloc.dart';
import 'package:example/src/presentation/dashboad.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reactomic_design/foundations/colors_foundation.dart';

/// The main app widget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final lato = GoogleFonts.lato();
    final themeBloc = ThemeBloc();
    final appTheme = AppTheme(
      appColors: AppColors(
        primary: ColorsFoundation.primary,
        secondary: ColorsFoundation.secondary,
        tertiary: ColorsFoundation.tertiary,
        background: ColorsFoundation.white,
        surface: ColorsFoundation.white,
        error: ColorsFoundation.error,
        onPrimary: ColorsFoundation.white,
        onSecondary: ColorsFoundation.black,
        onBackground: ColorsFoundation.black,
        onSurface: ColorsFoundation.black,
        onError: ColorsFoundation.white,
      ),
      appFonts: AppFonts.google(lato),
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
