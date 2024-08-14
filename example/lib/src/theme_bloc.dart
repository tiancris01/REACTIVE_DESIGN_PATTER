import 'dart:async';

class ThemeBloc {
  final _themeController = StreamController<bool>.broadcast();
  Stream<bool> get themeStream => _themeController.stream;

  bool _isDarkMode = false;

  ThemeBloc() {
    _themeController.sink.add(_isDarkMode); // Emit initial value
  }

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    _themeController.sink.add(_isDarkMode);
  }

  void dispose() {
    _themeController.close();
  }
}
