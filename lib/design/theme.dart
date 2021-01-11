import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'text.dart';

mixin AppTheme {
  /// Default theme of the app
  static final ThemeData main = ThemeData(
    primaryColor: AppColors.backgroundColor,
    backgroundColor: AppColors.backgroundColor,
    canvasColor: AppColors.backgroundColor,
    accentColor: AppColors.defaultColor,
    focusColor: AppColors.defaultColor,
    splashColor: AppColors.defaultColor.withOpacity(0.2),
    highlightColor: AppColors.defaultColor.withOpacity(0.1),
    appBarTheme: AppBarTheme(
        color: AppColors.ikeaBlue,
        textTheme: TextTheme(
            headline6: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white)),
    textTheme: mainTextTheme,
    fontFamily: 'Noto Sans Ikea',
    iconTheme: const IconThemeData(color: AppColors.defaultColor),
    buttonTheme: const ButtonThemeData(buttonColor: AppColors.backgroundColor),
  );

  /// Theme to be used for buttons or other touchable widgets
  static final ThemeData touchable = main.copyWith(
    primaryColor: AppColors.touchableColor,
    backgroundColor: AppColors.touchableColor,
    accentColor: AppColors.touchableColor,
    focusColor: AppColors.touchableColor,
    splashColor: AppColors.touchableColor.withOpacity(0.2),
    highlightColor: AppColors.touchableColor.withOpacity(0.1),
    iconTheme: const IconThemeData(color: AppColors.touchableColor),
    textTheme: touchableTextTheme,
    primaryTextTheme: touchableTextTheme,
    buttonTheme: const ButtonThemeData(
        buttonColor: AppColors.backgroundColor,
        textTheme: ButtonTextTheme.primary,
        colorScheme: ColorScheme.light(
          primary: AppColors.touchableColor,
        )),
  );

  /// Theme to be used for buttons or other touchable widgets
  static final ThemeData appBarTheme = main.copyWith(
    primaryColor: AppColors.backgroundColor,
    backgroundColor: AppColors.backgroundColor,
    canvasColor: AppColors.backgroundColor,
    accentColor: AppColors.defaultColor,
    focusColor: AppColors.defaultColor,
    splashColor: AppColors.defaultColor.withOpacity(0.2),
    highlightColor: AppColors.defaultColor.withOpacity(0.1),
    appBarTheme: AppBarTheme(
        color: Colors.white,
        textTheme: TextTheme(
            headline6: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black)),
    textTheme: mainTextTheme,
    iconTheme: const IconThemeData(color: AppColors.defaultColor),
    buttonTheme: const ButtonThemeData(buttonColor: AppColors.backgroundColor),
  );

  /// Theme to be used for buttons or other touchable widgets
  /// that need to outstand over others
  static final ThemeData prominent = main.copyWith(
    primaryColor: AppColors.touchableColor,
    backgroundColor: AppColors.touchableColor,
    accentColor: AppColors.touchableColor,
    focusColor: AppColors.touchableColor,
    splashColor: AppColors.touchableColor.withOpacity(0.2),
    highlightColor: AppColors.touchableColor.withOpacity(0.1),
    iconTheme: const IconThemeData(color: AppColors.touchableColor),
    textTheme: touchableTextTheme,
    primaryTextTheme: touchableTextTheme,
    buttonTheme: const ButtonThemeData(
        buttonColor: AppColors.touchableColor,
        textTheme: ButtonTextTheme.primary,
        colorScheme: ColorScheme.light(
          primary: AppColors.touchableColor,
        )),
  );

  static final SliderThemeData sliderliderTheme = SliderThemeData(
    trackHeight: 1.0,
    activeTrackColor: AppColors.ikeaBlue,
    inactiveTrackColor: AppColors.backgroundGrey,
    showValueIndicator: ShowValueIndicator.always,
    rangeThumbShape: RoundRangeSliderThumbShape(
      enabledThumbRadius: TextSizes.small,
      disabledThumbRadius: TextSizes.small,
    ),
    overlayColor: Colors.white,
    thumbColor: AppColors.ikeaBlue,
    valueIndicatorColor: Colors.transparent,
    valueIndicatorTextStyle: TextStyle(
        color: AppColors.defaultColor,
        fontSize: TextSizes.small,
        fontWeight: FontWeight.bold,
        fontFamily: 'Noto Sans Ikea'),
  );

  static const TextStyle _baseMainTextStyle = TextStyle(
    color: AppColors.defaultColor,
    fontSize: TextSizes.normal,
    letterSpacing: 0.5,
  );

  // ignore: public_member_api_docs
  static final TextStyle normalText = _baseMainTextStyle.copyWith();

  // ignore: public_member_api_docs
  static final TextStyle boldText = _baseMainTextStyle.copyWith(
    fontWeight: FontWeight.w700,
  );

  // ignore: public_member_api_docs
  static final TextStyle touchableText =
      _baseMainTextStyle.copyWith(color: AppColors.touchableColor);

  // ignore: public_member_api_docs
  static final TextStyle touchableBoldText = touchableText.copyWith(
    fontWeight: FontWeight.w700,
  );

  static final TextStyle headLine6Grey = mainTextTheme.headline6.copyWith(
    color: Colors.grey,
  );

  static final TextStyle headLine6BoldGrey = mainTextTheme.headline6
      .copyWith(color: Colors.grey, fontWeight: FontWeight.bold);

  static final TextStyle headLine6Bold = mainTextTheme.headline6.copyWith(
    fontWeight: FontWeight.bold,
  );

  static final TextStyle bodyText1Bold = mainTextTheme.bodyText1.copyWith(
    fontWeight: FontWeight.bold,
  );

  static final TextStyle bodyText1BoldIkeaBlue = mainTextTheme.bodyText1
      .copyWith(fontWeight: FontWeight.bold, color: AppColors.ikeaBlue);

  static final TextStyle bodyText2Grey = mainTextTheme.bodyText2.copyWith(
    color: Colors.grey,
  );

  static final TextStyle referenceStyleBody1 = mainTextTheme.bodyText1
      .copyWith(color: Colors.white, backgroundColor: Colors.black);

  static final TextStyle factsLittleCell = mainTextTheme.overline.copyWith(
      color: Colors.white, backgroundColor: Colors.black, letterSpacing: 0.4);

  /// Standard style for texts in the app (based on material guidelines)
  static final TextTheme mainTextTheme = TextTheme(
    headline1: _baseMainTextStyle.copyWith(
      fontSize: 96,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    headline2: _baseMainTextStyle.copyWith(
      fontSize: 60,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    headline3: _baseMainTextStyle.copyWith(
      fontSize: 48,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
    ),
    headline4: _baseMainTextStyle.copyWith(
      fontSize: 34,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headline5: _baseMainTextStyle.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.0,
    ),
    headline6: _baseMainTextStyle.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    subtitle1: _baseMainTextStyle.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    subtitle2: _baseMainTextStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.10,
    ),
    bodyText1: _baseMainTextStyle.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyText2: _baseMainTextStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    button: _baseMainTextStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.75,
    ),
    caption: _baseMainTextStyle.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    overline: _baseMainTextStyle.copyWith(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  );

  /// Text theme for touchable text that need to be more visible
  static final TextTheme touchableTextTheme = mainTextTheme.copyWith(
    headline1:
        mainTextTheme.headline1.copyWith(color: AppColors.touchableColor),
    headline2:
        mainTextTheme.headline2.copyWith(color: AppColors.touchableColor),
    headline3:
        mainTextTheme.headline3.copyWith(color: AppColors.touchableColor),
    headline4:
        mainTextTheme.headline4.copyWith(color: AppColors.touchableColor),
    headline5:
        mainTextTheme.headline5.copyWith(color: AppColors.touchableColor),
    headline6:
        mainTextTheme.headline6.copyWith(color: AppColors.touchableColor),
    subtitle1:
        mainTextTheme.subtitle1.copyWith(color: AppColors.touchableColor),
    subtitle2:
        mainTextTheme.subtitle2.copyWith(color: AppColors.touchableColor),
    bodyText1:
        mainTextTheme.bodyText1.copyWith(color: AppColors.touchableColor),
    bodyText2:
        mainTextTheme.bodyText2.copyWith(color: AppColors.touchableColor),
    button: mainTextTheme.button.copyWith(color: AppColors.touchableColor),
    caption: mainTextTheme.caption.copyWith(color: AppColors.touchableColor),
    overline: mainTextTheme.caption.copyWith(color: AppColors.touchableColor),
  );
}
