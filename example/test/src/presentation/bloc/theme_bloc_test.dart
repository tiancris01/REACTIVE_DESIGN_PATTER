import 'package:example/src/presentation/bloc/theme_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void themeTest() {
  late ThemeBloc sut;

  setUp(() {
    sut = ThemeBloc();
  });

  group('App theme ', () {
    test('initial values are correct', () {
      expect(sut.stream.value, false);
    });

    test('toggle theme', () {
      sut.toggleTheme();
      expect(sut.stream.value, true);
    });

    test('toggle theme', () {
      sut.toggleTheme();
      expect(sut.stream.value, true);
      sut.toggleTheme();
      expect(sut.stream.value, false);
    });
  });
}
