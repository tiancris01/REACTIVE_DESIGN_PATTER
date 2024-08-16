import 'package:example/src/core/extentions/extensions.dart';
import 'package:example/src/presentation/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  final ThemeBloc themeBloc;
  const DashBoard({super.key, required this.themeBloc});

  @override
  Widget build(BuildContext context) {
    final themeFonts = Theme.of(context).appFonts;
    final themeColors = Theme.of(context).appColors;
    return Scaffold(
      appBar: AppBar(
        title: Text('SHOW CASES', style: themeFonts.latoBold18),
        actions: [
          IconButton(
            icon: Icon(
              themeBloc.isDarkMode ? Icons.light_mode_rounded : Icons.dark_mode,
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
          Card(
            shadowColor: themeColors.tertiary,
            elevation: 1.0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            child: ListTile(
              onTap: () {},
            ),
          ),
          Card(
            shadowColor: themeColors.tertiary,
            elevation: 1.0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            child: ListTile(
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
