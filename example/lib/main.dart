import 'package:example/src/core/theme/app_theme.dart';
import 'package:example/src/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:reactomic_design/atoms/bottons/reactomic_main_button.dart';

extension ThemeGetter on BuildContext {
  ThemeData get themeData => Theme.of(this);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeBloc themeBloc = ThemeBloc();

    return StreamBuilder<bool>(
      stream: themeBloc.themeStream,
      initialData: false,
      builder: (context, snapshot) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),
          home: TesterWidget(
            themeBloc: themeBloc,
          ),
          themeMode: snapshot.data == false ? ThemeMode.dark : ThemeMode.light,
        );
      },
    );
  }
}

class TesterWidget extends StatelessWidget {
  final ThemeBloc themeBloc;
  const TesterWidget({super.key, required this.themeBloc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactomic Design'),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          ReactomicMainButton(
            label: 'REGISTER',
            onPressed: () {
              themeBloc.toggleTheme();
            },
          ),
          const SizedBox(height: 16),
          ReactomicMainButton.outlined(
            stroke: 2.0,
            label: 'LOGIN',
            onPressed: () {
              themeBloc.toggleTheme();
            },
          ),
          // ElevatedButton.icon(onPressed: onPressed, label: label),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
