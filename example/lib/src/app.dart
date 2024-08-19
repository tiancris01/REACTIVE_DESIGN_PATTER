import 'package:example/src/core/theme/app_theme.dart';
import 'package:example/src/presentation/bloc/theme_bloc.dart';
import 'package:example/src/presentation/dashboad.dart';
import 'package:flutter/material.dart';

/// The main app widget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final themeBloc = ThemeBloc();

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
          theme: AppTheme.light(),
          // dark theme for the app
          darkTheme: AppTheme.dark(),
          home: DashBoard(themeBloc: themeBloc),
          debugShowCheckedModeBanner: false,

          /// Thememode is switched based on the stream value
          themeMode:
              (snapshot.data == false) ? ThemeMode.light : ThemeMode.dark,
        );
      },
    );
  }
}
