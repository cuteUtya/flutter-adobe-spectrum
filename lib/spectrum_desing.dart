import 'package:adobe_spectrum/spectrum_typography.dart';
import 'package:design_system_provider/desing_colors.dart';
import 'package:design_system_provider/desing_components.dart';
import 'package:design_system_provider/desing_layout.dart';
import 'package:design_system_provider/desing_system.dart';
import 'package:design_system_provider/desing_typography.dart';
import 'package:flutter/material.dart';

class Spectrum implements DesingSystem {
  Spectrum({
    SpectrumTheme theme = SpectrumTheme.light,
  }) {
    /// TODO implement themes
    var gray = const ColorTones(0xfff, {
      50: Color(0xffffffff),
      75: Color(0xfffafafa),
      100: Color(0xfff5f5f5),
      200: Color(0xffeaeaea),
      300: Color(0xffe1e1e1),
      400: Color(0xffcacaca),
      500: Color(0xffb3b3b3),
      600: Color(0xff8e8e8e),
      700: Color(0xff6e6e6e),
      800: Color(0xff4b4b4b),
      900: Color(0xff2c2c2c),
    });

    var red = const ColorTones(0xffFF9B88, {
      100: Color(0xffFFEBE7),
      200: Color(0xffFFDDD6),
      300: Color(0xffFFCDC3),
      400: Color(0xffFFB7A9),
      500: Color(0xffFF9B88),
      600: Color(0xffFF7C65),
      700: Color(0xffF75C46),
      800: Color(0xffEA3829),
      900: Color(0xffD31510),
      1000: Color(0xffB40000),
      1100: Color(0xff930000),
      1200: Color(0xff740000),
      1300: Color(0xff590000),
      1400: Color(0xff430000),
    });

    var orange = const ColorTones(0xffFFA037, {
      100: Color(0xffFFECCC),
      200: Color(0xffFFDFAD),
      300: Color(0xffFDD291),
      400: Color(0xffFFBB63),
      500: Color(0xffFFA037),
      600: Color(0xffF68511),
      700: Color(0xffE46F00),
      800: Color(0xffCB5D00),
      900: Color(0xffB14C00),
      1000: Color(0xff953D00),
      1100: Color(0xff7A2F00),
      1200: Color(0xff612300),
      1300: Color(0xff491901),
      1400: Color(0xff351201),
    });

    var yellow = const ColorTones(0xffD7B300, {
      100: Color(0xffFBF198),
      200: Color(0xffF8E750),
      300: Color(0xffF8D904),
      400: Color(0xffE8C600),
      500: Color(0xffD7B300),
      600: Color(0xffC49F00),
      700: Color(0xffB08C00),
      800: Color(0xff9B7800),
      900: Color(0xff856600),
      1000: Color(0xff705300),
      1100: Color(0xff5B4300),
      1200: Color(0xff483300),
      1300: Color(0xff362500),
      1400: Color(0xff281A00),
    });

    var chartreuse = const ColorTones(0xff85D044, {
      400: Color(0xff85D044),
      500: Color(0xff7CC33F),
      600: Color(0xff73B53A),
      700: Color(0xff6AA834),
    });

    var green = const ColorTones(0xff2D9D78, {
      400: Color(0xff2D9D78),
      500: Color(0xff268E6C),
      600: Color(0xff12805C),
      700: Color(0xff107154),
    });

    var celery = const ColorTones(0xff44B556, {
      400: Color(0xff44B556),
      500: Color(0xff3DA74E),
      600: Color(0xff379947),
      700: Color(0xff318B40),
    });

    var seafoam = const ColorTones(0xff1B959A, {
      400: Color(0xff1B959A),
      500: Color(0xff16878C),
      600: Color(0xff0F797D),
      700: Color(0xff096C6F),
    });

    var blue = const ColorTones(0xff2680EB, {
      100: Color(0xffE0F2FF),
      200: Color(0xffCAE8FF),
      300: Color(0xffB5DEFF),
      400: Color(0xff96CEFD),
      500: Color(0xff78BBFA),
      600: Color(0xff78BBFA),
      700: Color(0xff3892F3),
      800: Color(0xff147AF3),
      900: Color(0xff0265DC),
      1000: Color(0xff0054B6),
      1100: Color(0xff004491),
      1200: Color(0xff003571),
      1300: Color(0xff002754),
      1400: Color(0xff001C3C),
    });

    var indigo = const ColorTones(0xff6767EC, {
      400: Color(0xff6767EC),
      500: Color(0xff5C5CE0),
      600: Color(0xff5151D3),
      700: Color(0xff4646C6),
    });

    var purple = const ColorTones(0xff9256D9, {
      400: Color(0xff9256D9),
      500: Color(0xff864CCC),
      600: Color(0xff7A42BF),
      700: Color(0xff6F38B1),
    });

    var fuchsia = const ColorTones(0xffC038CC, {
      400: Color(0xffC038CC),
      500: Color(0xffB130BD),
      600: Color(0xffA228AD),
      700: Color(0xff93219E),
    });

    var magenta = const ColorTones(0xffD83790, {
      400: Color(0xffD83790),
      500: Color(0xffCE2783),
      600: Color(0xffBC1C74),
      700: Color(0xffAE0E66),
    });

    colors = ColorData(
      accent: blue,
      gray: gray,
      red: red,
      orange: orange,
      yellow: yellow,
      chartreuse: chartreuse,
      green: green,
      celery: celery,
      seafoam: seafoam,
      blue: blue,
      indigo: indigo,
      purple: purple,
      fuchsia: fuchsia,
      magenta: magenta,
    );

    typography = SpectrumTypograhy();

    layout = LayoutData(
      spacing50: Spacing(2),
      spacing75: Spacing(4),
      spacing100: Spacing(8),
      spacing200: Spacing(12),
      spacing300: Spacing(16),
      spacing400: Spacing(24),
      spacing500: Spacing(32),
      spacing600: Spacing(40),
      spacing700: Spacing(48),
      spacing800: Spacing(64),
      spacing900: Spacing(80),
      spacing1000: Spacing(96),
    );
  }

  @override
  late ColorData colors;

  @override
  late LayoutData layout;

  @override
  late TypographyData typography;

  @override
  late ComponentsData components;
}

enum SpectrumTheme {
  light,
  lightest,
  dark,
  darkest,
}
