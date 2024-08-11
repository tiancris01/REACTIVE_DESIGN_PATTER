import 'package:flutter/material.dart';
import 'package:reactomic_design/atoms/bottons/reactomic_main_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TesterWidget(),
    );
  }
}

class TesterWidget extends StatelessWidget {
  const TesterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactomic Design'),
      ),
      body: ReactomicMainButton(
        label: 'REGISTER',
        onPressed: () {},
      ),
    );
  }
}
