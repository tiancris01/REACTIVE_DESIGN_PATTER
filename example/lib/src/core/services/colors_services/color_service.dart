import 'package:example/src/core/theme/app_colors/app_colors.dart';
import 'package:reactomic_design/foundations/colors_foundation.dart';

abstract interface class IAppColors {
  AppColors setAppColors();
}

class LocalColors implements IAppColors {
  @override
  AppColors setAppColors() {
    return AppColors(
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
    );
  }
}

class RemoteColors implements IAppColors {
  @override
  AppColors setAppColors() {
    // TODO: implement setAppColors
    throw UnimplementedError();
  }
}

class ColorService {
  final IAppColors _appColors;

  ColorService(this._appColors);

  AppColors getAppColors() {
    return _appColors.setAppColors();
  }
}
