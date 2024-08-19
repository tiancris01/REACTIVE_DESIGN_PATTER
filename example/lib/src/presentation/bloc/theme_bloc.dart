import 'package:rxdart/subjects.dart';

class ThemeBloc {
  static final ThemeBloc _singleton = ThemeBloc._internal();
  ThemeBloc._internal();
  factory ThemeBloc() => _singleton;

  final stream = BehaviorSubject<bool>.seeded(false);

  void toggleTheme() {
    stream.add(!stream.value);
  }

  /* 
  /// Stream controller for theme
  final _themeController = StreamController<bool>.broadcast();

  /// this exposes the [_themeController] stream
  Stream<bool> get stream => _themeController.stream;

  /// boolen value to check if dark mode is enabled
  bool _isDarkMode = false;

  /// getter for [_isDarkMode]
  bool get isDarkMode => _isDarkMode;

  ThemeBloc() {
    _themeController.sink.add(_isDarkMode);
  }

  void init() {
    _themeController.sink.add(_isDarkMode);
  }

  /// Function to toggle theme
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    _themeController.sink.add(_isDarkMode);
  }

  /// Function to dispose the stream
  void dispose() {
    _themeController.close();
  }
 */
}
