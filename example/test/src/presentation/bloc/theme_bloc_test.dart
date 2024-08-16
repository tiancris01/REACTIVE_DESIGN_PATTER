import 'package:example/src/presentation/bloc/theme_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void themeTest() {
  late ThemeBloc sut;

  setUp(() {
    sut = ThemeBloc();
  });

  group('App theme ', () {
    test('intial values should be correct', () {
      expect(sut.isDarkMode, false);
    });

    test('toggle theme should be switch to dark', () {
      sut.toggleTheme();
      expect(sut.isDarkMode, true);
    });

    test('toggle theme should be switch back to light', () {
      sut.toggleTheme();
      expect(sut.isDarkMode, true);
      sut.toggleTheme();
      expect(sut.isDarkMode, false);
    });
  });
}
