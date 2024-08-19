import 'package:example/src/core/extentions/extensions.dart';
import 'package:example/src/presentation/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:reactomic_design/atoms/bottons/reactomic_main_button.dart';

class DashBoard extends StatelessWidget {
  final ThemeBloc themeBloc;
  const DashBoard({super.key, required this.themeBloc});

  @override
  Widget build(BuildContext context) {
    final themeFonts = Theme.of(context).appFonts;
    // final themeColors = Theme.of(context).appColors;
    return Scaffold(
      appBar: AppBar(
        title: Text('SHOW CASES', style: themeFonts.latoBold18),
        actions: [
          IconButton(
            icon: Icon(
              themeBloc.stream.value
                  ? Icons.light_mode_rounded
                  : Icons.dark_mode,
            ),
            onPressed: () {
              themeBloc.toggleTheme();
            },
          )
        ],
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          /* ReactomicMainButton(
            label: 'REGISTER',
            onPressed: () {},
          ), */
        ],
      ),
    );
  }
}
