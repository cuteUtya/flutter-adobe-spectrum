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
    ColorTones gray;
    ColorTones red;
    ColorTones fuchsia;
    ColorTones magenta;
    ColorTones blue;
    ColorTones purple;
    ColorTones seafoam;
    ColorTones orange;
    ColorTones yellow;
    ColorTones chartreuse;
    ColorTones green;
    ColorTones celery;
    ColorTones indigo;

    switch (theme) {
      case SpectrumTheme.light:
        gray = const ColorTones(0xffffffff, {
          50: Color(0xffffffff),
          75: Color(0xfffdfdfd),
          100: Color(0xfff8f8f8),
          200: Color(0xffe6e6e6),
          300: Color(0xffd5d5d5),
          400: Color(0xffb1b1b1),
          500: Color(0xff909090),
          600: Color(0xff6d6d6d),
          700: Color(0xff464646),
          800: Color(0xff222222),
          900: Color(0xff000000),
        });

        blue = const ColorTones(0xffe0f2ff, {
          100: Color(0xffe0f2ff),
          200: Color(0xffcae8ff),
          300: Color(0xffb5deff),
          400: Color(0xff96cefd),
          500: Color(0xff78bbfa),
          600: Color(0xff59a7f6),
          700: Color(0xff3892f3),
          800: Color(0xff147af3),
          900: Color(0xff0265dc),
          1000: Color(0xff0054b6),
          1100: Color(0xff004491),
          1200: Color(0xff003571),
          1300: Color(0xff002754),
        });

        green = const ColorTones(0xffcef8e0, {
          100: Color(0xffcef8e0),
          200: Color(0xffadf4ce),
          300: Color(0xff89ecbc),
          400: Color(0xff67dea8),
          500: Color(0xff49cc93),
          600: Color(0xff2fb880),
          700: Color(0xff15a46e),
          800: Color(0xff008f5d),
          900: Color(0xff007a4d),
          1000: Color(0xff00653e),
          1100: Color(0xff005132),
          1200: Color(0xff053f27),
          1300: Color(0xff0a2e1d),
        });

        orange = const ColorTones(0xffffeccc, {
          100: Color(0xffffeccc),
          200: Color(0xffffdfad),
          300: Color(0xfffdd291),
          400: Color(0xffffbb63),
          500: Color(0xffffa037),
          600: Color(0xfff68511),
          700: Color(0xffe46f00),
          800: Color(0xffcb5d00),
          900: Color(0xffb14c00),
          1000: Color(0xff953d00),
          1100: Color(0xff7a2f00),
          1200: Color(0xff612300),
          1300: Color(0xff491901),
        });

        red = const ColorTones(0xffffebe7, {
          100: Color(0xffffebe7),
          200: Color(0xffffddd6),
          300: Color(0xffffcdc3),
          400: Color(0xffffb7a9),
          500: Color(0xffff9b88),
          600: Color(0xffff7c65),
          700: Color(0xfff75c46),
          800: Color(0xffea3829),
          900: Color(0xffd31510),
          1000: Color(0xffb40000),
          1100: Color(0xff930000),
          1200: Color(0xff740000),
          1300: Color(0xff590000),
        });

        celery = const ColorTones(0xffcdfcbf, {
          100: Color(0xffcdfcbf),
          200: Color(0xffaef69d),
          300: Color(0xff96ee85),
          400: Color(0xff72e06a),
          500: Color(0xff4ecf50),
          600: Color(0xff27bb36),
          700: Color(0xff07a721),
          800: Color(0xff009112),
          900: Color(0xff007c0f),
          1000: Color(0xff00670f),
          1100: Color(0xff00530d),
          1200: Color(0xff00400a),
          1300: Color(0xff003007),
        });

        chartreuse = const ColorTones(0xffdbfc6e, {
          100: Color(0xffdbfc6e),
          200: Color(0xffcbf443),
          300: Color(0xffbce92a),
          400: Color(0xffaad816),
          500: Color(0xff98c50a),
          600: Color(0xff87b103),
          700: Color(0xff769c00),
          800: Color(0xff678800),
          900: Color(0xff577400),
          1000: Color(0xff486000),
          1100: Color(0xff3a4d00),
          1200: Color(0xff2c3b00),
          1300: Color(0xff212c00),
        });

        fuchsia = const ColorTones(0xffffe9fc, {
          100: Color(0xffffe9fc),
          200: Color(0xffffdafa),
          300: Color(0xfffec7f8),
          400: Color(0xfffbaef6),
          500: Color(0xfff592f3),
          600: Color(0xffed74ed),
          700: Color(0xffe055e2),
          800: Color(0xffcd3ace),
          900: Color(0xffb622b7),
          1000: Color(0xff9d039e),
          1100: Color(0xff800081),
          1200: Color(0xff640664),
          1300: Color(0xff470e46),
        });

        indigo = const ColorTones(0xffedeeff, {
          100: Color(0xffedeeff),
          200: Color(0xffe0e2ff),
          300: Color(0xffd3d5ff),
          400: Color(0xffc1c4ff),
          500: Color(0xffacafff),
          600: Color(0xff9599ff),
          700: Color(0xff7e84fc),
          800: Color(0xff686df4),
          900: Color(0xff5258e4),
          1000: Color(0xff4046ca),
          1100: Color(0xff3236a8),
          1200: Color(0xff262986),
          1300: Color(0xff1b1e64),
        });

        magenta = const ColorTones(0xffffeaf1, {
          100: Color(0xffffeaf1),
          200: Color(0xffffdce8),
          300: Color(0xffffcadd),
          400: Color(0xffffb2ce),
          500: Color(0xffff95bd),
          600: Color(0xfffa77aa),
          700: Color(0xffef5a98),
          800: Color(0xffde3d82),
          900: Color(0xffc82269),
          1000: Color(0xffad0955),
          1100: Color(0xff8e0045),
          1200: Color(0xff700037),
          1300: Color(0xff54032a),
        });

        purple = const ColorTones(0xfff6ebff, {
          100: Color(0xfff6ebff),
          200: Color(0xffeeddff),
          300: Color(0xffe6d0ff),
          400: Color(0xffdbbbfe),
          500: Color(0xffcca4fd),
          600: Color(0xffbd8bfc),
          700: Color(0xffae72f9),
          800: Color(0xff9d57f4),
          900: Color(0xff893de7),
          1000: Color(0xff7326d3),
          1100: Color(0xff5d13b7),
          1200: Color(0xff470c94),
          1300: Color(0xff33106a),
        });

        seafoam = const ColorTones(0xffcef7f3, {
          100: Color(0xffcef7f3),
          200: Color(0xffaaf1ea),
          300: Color(0xff8ce9e2),
          400: Color(0xff65dad2),
          500: Color(0xff3fc9c1),
          600: Color(0xff0fb5ae),
          700: Color(0xff00a19a),
          800: Color(0xff008c87),
          900: Color(0xff007772),
          1000: Color(0xff00635f),
          1100: Color(0xff0c4f4c),
          1200: Color(0xff123c3a),
          1300: Color(0xff122c2b),
        });

        yellow = const ColorTones(0xfffbf198, {
          100: Color(0xfffbf198),
          200: Color(0xfff8e750),
          300: Color(0xfff8d904),
          400: Color(0xffe8c600),
          500: Color(0xffd7b300),
          600: Color(0xffc49f00),
          700: Color(0xffb08c00),
          800: Color(0xff9b7800),
          900: Color(0xff856600),
          1000: Color(0xff705300),
          1100: Color(0xff5b4300),
          1200: Color(0xff483300),
          1300: Color(0xff362500),
        });
        break;

      case SpectrumTheme.darkest:
        gray = const ColorTones(0xff000000, {
          50: Color(0xff000000),
          75: Color(0xff0e0e0e),
          100: Color(0xff1d1d1d),
          200: Color(0xff303030),
          300: Color(0xff4b4b4b),
          400: Color(0xff6a6a6a),
          500: Color(0xff8d8d8d),
          600: Color(0xffb0b0b0),
          700: Color(0xffd0d0d0),
          800: Color(0xffebebeb),
          900: Color(0xffffffff),
        });

        blue = const ColorTones(0xff002651, {
          100: Color(0xff002651),
          200: Color(0xff00326a),
          300: Color(0xff004087),
          400: Color(0xff004ea6),
          500: Color(0xff005cc8),
          600: Color(0xff066ce7),
          700: Color(0xff1d80f5),
          800: Color(0xff4096f3),
          900: Color(0xff5eaaf7),
          1000: Color(0xff7cbdfa),
          1100: Color(0xff98cefd),
          1200: Color(0xffb3defe),
          1300: Color(0xffceeaff),
        });

        green = const ColorTones(0xff0a2c1c, {
          100: Color(0xff0a2c1c),
          200: Color(0xff073b24),
          300: Color(0xff004c2e),
          400: Color(0xff005d39),
          500: Color(0xff006f45),
          600: Color(0xff008252),
          700: Color(0xff009562),
          800: Color(0xff1ca872),
          900: Color(0xff34bb84),
          1000: Color(0xff4bcd95),
          1100: Color(0xff67dea8),
          1200: Color(0xff89ecbc),
          1300: Color(0xffb1f4d1),
        });

        orange = const ColorTones(0xff481801, {
          100: Color(0xff481801),
          200: Color(0xff5c2000),
          300: Color(0xff732b00),
          400: Color(0xff8a3700),
          500: Color(0xffa24400),
          600: Color(0xffba5200),
          700: Color(0xffd26200),
          800: Color(0xffe87400),
          900: Color(0xfff98917),
          1000: Color(0xffffa23b),
          1100: Color(0xffffbc66),
          1200: Color(0xfffdd291),
          1300: Color(0xffffe2b5),
        });

        red = const ColorTones(0xff570000, {
          100: Color(0xff570000),
          200: Color(0xff6e0000),
          300: Color(0xff8a0000),
          400: Color(0xffa70000),
          500: Color(0xffc40706),
          600: Color(0xffdd2118),
          700: Color(0xffee4331),
          800: Color(0xfff9634c),
          900: Color(0xffff816b),
          1000: Color(0xffff9e8c),
          1100: Color(0xffffb7a9),
          1200: Color(0xffffcdc3),
          1300: Color(0xffffdfd9),
        });

        celery = const ColorTones(0xff002f07, {
          100: Color(0xff002f07),
          200: Color(0xff003d09),
          300: Color(0xff004d0c),
          400: Color(0xff005f0f),
          500: Color(0xff00710f),
          600: Color(0xff00840f),
          700: Color(0xff009714),
          800: Color(0xff0dab25),
          900: Color(0xff2dbf3a),
          1000: Color(0xff50d052),
          1100: Color(0xff73e06b),
          1200: Color(0xff93ed83),
          1300: Color(0xffb4f7a2),
        });

        chartreuse = const ColorTones(0xff202b00, {
          100: Color(0xff202b00),
          200: Color(0xff2a3800),
          300: Color(0xff364800),
          400: Color(0xff425800),
          500: Color(0xff4f6900),
          600: Color(0xff5d7b00),
          700: Color(0xff6b8e00),
          800: Color(0xff7aa100),
          900: Color(0xff8ab403),
          1000: Color(0xff9ac60b),
          1100: Color(0xffaad816),
          1200: Color(0xffbbe829),
          1300: Color(0xffcdf648),
        });

        fuchsia = const ColorTones(0xff460e44, {
          100: Color(0xff460e44),
          200: Color(0xff5d095c),
          300: Color(0xff780078),
          400: Color(0xff920093),
          500: Color(0xffa913aa),
          600: Color(0xffbf2bbf),
          700: Color(0xffd341d5),
          800: Color(0xffe45be5),
          900: Color(0xffef78ee),
          1000: Color(0xfff695f3),
          1100: Color(0xfffbaff6),
          1200: Color(0xfffec7f8),
          1300: Color(0xffffdcfa),
        });

        indigo = const ColorTones(0xff1a1d61, {
          100: Color(0xff1a1d61),
          200: Color(0xff23277d),
          300: Color(0xff2e329e),
          400: Color(0xff3a3fbd),
          500: Color(0xff494ed8),
          600: Color(0xff5a60eb),
          700: Color(0xff6e73f6),
          800: Color(0xff8488fd),
          900: Color(0xff999dff),
          1000: Color(0xffaeb1ff),
          1100: Color(0xffc2c4ff),
          1200: Color(0xffd4d5ff),
          1300: Color(0xffe3e4ff),
        });

        magenta = const ColorTones(0xff530329, {
          100: Color(0xff530329),
          200: Color(0xff6a0034),
          300: Color(0xff850041),
          400: Color(0xffa1004e),
          500: Color(0xffba165d),
          600: Color(0xffd12b72),
          700: Color(0xffe34589),
          800: Color(0xfff1619c),
          900: Color(0xfffc7cad),
          1000: Color(0xffff98bf),
          1100: Color(0xffffb3cf),
          1200: Color(0xffffcadd),
          1300: Color(0xffffdde9),
        });

        purple = const ColorTones(0xff321068, {
          100: Color(0xff321068),
          200: Color(0xff430d8c),
          300: Color(0xff5610ad),
          400: Color(0xff6a1dc8),
          500: Color(0xff7e31de),
          600: Color(0xff9146ec),
          700: Color(0xffa25ef6),
          800: Color(0xffb277fa),
          900: Color(0xffc08ffc),
          1000: Color(0xffcea6fd),
          1100: Color(0xffdbbcfe),
          1200: Color(0xffe6cfff),
          1300: Color(0xfff0e0ff),
        });

        seafoam = const ColorTones(0xff122b2a, {
          100: Color(0xff122b2a),
          200: Color(0xff133937),
          300: Color(0xff104946),
          400: Color(0xff035b58),
          500: Color(0xff006c68),
          600: Color(0xff007f79),
          700: Color(0xff00928c),
          800: Color(0xff00a59f),
          900: Color(0xff1ab9b2),
          1000: Color(0xff42cac3),
          1100: Color(0xff66dad3),
          1200: Color(0xff8be8e1),
          1300: Color(0xffb3f2ed),
        });

        yellow = const ColorTones(0xff352400, {
          100: Color(0xff352400),
          200: Color(0xff442f00),
          300: Color(0xff563e00),
          400: Color(0xff674d00),
          500: Color(0xff7a5c00),
          600: Color(0xff8d6c00),
          700: Color(0xffa17e00),
          800: Color(0xffb49000),
          900: Color(0xffc7a200),
          1000: Color(0xffd8b500),
          1100: Color(0xffe9c700),
          1200: Color(0xfff7d804),
          1300: Color(0xfff9e961),
        });
        break;

      case SpectrumTheme.dark:
        gray = const ColorTones(0xff1d1d1d, {
          50: Color(0xff1d1d1d),
          75: Color(0xff262626),
          100: Color(0xff323232),
          200: Color(0xff3f3f3f),
          300: Color(0xff545454),
          400: Color(0xff707070),
          500: Color(0xff909090),
          600: Color(0xffb2b2b2),
          700: Color(0xffd1d1d1),
          800: Color(0xffebebeb),
          900: Color(0xffffffff),
        });

        blue = const ColorTones(0xff003877, {
          100: Color(0xff003877),
          200: Color(0xff00418a),
          300: Color(0xff004da3),
          400: Color(0xff0059c2),
          500: Color(0xff0367e0),
          600: Color(0xff1379f3),
          700: Color(0xff348ff4),
          800: Color(0xff54a3f6),
          900: Color(0xff72b7f9),
          1000: Color(0xff8fcafc),
          1100: Color(0xffaedbfe),
          1200: Color(0xffcce9ff),
          1300: Color(0xffe8f6ff),
        });

        green = const ColorTones(0xff044329, {
          100: Color(0xff044329),
          200: Color(0xff004e2f),
          300: Color(0xff005c38),
          400: Color(0xff006c43),
          500: Color(0xff007d4e),
          600: Color(0xff008f5d),
          700: Color(0xff12a26c),
          800: Color(0xff2bb47d),
          900: Color(0xff43c78f),
          1000: Color(0xff5ed9a2),
          1100: Color(0xff81e9b8),
          1200: Color(0xffb1f4d1),
          1300: Color(0xffdffaea),
        });

        orange = const ColorTones(0xff662500, {
          100: Color(0xff662500),
          200: Color(0xff752d00),
          300: Color(0xff893700),
          400: Color(0xff9e4200),
          500: Color(0xffb44e00),
          600: Color(0xffca5d00),
          700: Color(0xffe16d00),
          800: Color(0xfff4810c),
          900: Color(0xfffe9a2e),
          1000: Color(0xffffb558),
          1100: Color(0xfffdce88),
          1200: Color(0xffffe1b3),
          1300: Color(0xfffff2dd),
        });

        red = const ColorTones(0xff7b0000, {
          100: Color(0xff7b0000),
          200: Color(0xff8d0000),
          300: Color(0xffa50000),
          400: Color(0xffbe0403),
          500: Color(0xffd71913),
          600: Color(0xffea3829),
          700: Color(0xfff65843),
          800: Color(0xffff755e),
          900: Color(0xffff9581),
          1000: Color(0xffffb0a1),
          1100: Color(0xffffc9bd),
          1200: Color(0xffffded8),
          1300: Color(0xfffff1ee),
        });

        celery = const ColorTones(0xff00450a, {
          100: Color(0xff00450a),
          200: Color(0xff00500c),
          300: Color(0xff005e0e),
          400: Color(0xff006d0f),
          500: Color(0xff007f0f),
          600: Color(0xff009112),
          700: Color(0xff04a51e),
          800: Color(0xff22b833),
          900: Color(0xff44ca49),
          1000: Color(0xff69dc63),
          1100: Color(0xff8eeb7f),
          1200: Color(0xffb4f7a2),
          1300: Color(0xffddfdd3),
        });

        chartreuse = const ColorTones(0xff304000, {
          100: Color(0xff304000),
          200: Color(0xff374a00),
          300: Color(0xff415700),
          400: Color(0xff4c6600),
          500: Color(0xff597600),
          600: Color(0xff668800),
          700: Color(0xff759a00),
          800: Color(0xff84ad01),
          900: Color(0xff94c008),
          1000: Color(0xffa6d312),
          1100: Color(0xffb8e525),
          1200: Color(0xffcdf547),
          1300: Color(0xffe7fe9a),
        });

        fuchsia = const ColorTones(0xff6b036a, {
          100: Color(0xff6b036a),
          200: Color(0xff7b007b),
          300: Color(0xff900091),
          400: Color(0xffa50da6),
          500: Color(0xffb925b9),
          600: Color(0xffcd39ce),
          700: Color(0xffdf51e0),
          800: Color(0xffeb6eec),
          900: Color(0xfff48cf2),
          1000: Color(0xfffaa8f5),
          1100: Color(0xfffec2f8),
          1200: Color(0xffffdbfa),
          1300: Color(0xffffeffc),
        });

        indigo = const ColorTones(0xff282c8c, {
          100: Color(0xff282c8c),
          200: Color(0xff2f34a3),
          300: Color(0xff393fbb),
          400: Color(0xff464bd3),
          500: Color(0xff555be7),
          600: Color(0xff686df4),
          700: Color(0xff7c81fb),
          800: Color(0xff9195ff),
          900: Color(0xffa7aaff),
          1000: Color(0xffbcbeff),
          1100: Color(0xffd0d2ff),
          1200: Color(0xffe2e4ff),
          1300: Color(0xfff3f3fe),
        });

        magenta = const ColorTones(0xff76003a, {
          100: Color(0xff76003a),
          200: Color(0xff890042),
          300: Color(0xffa0004d),
          400: Color(0xffb6125a),
          500: Color(0xffcb266d),
          600: Color(0xffde3d82),
          700: Color(0xffed5795),
          800: Color(0xfff972a7),
          900: Color(0xffff8fb9),
          1000: Color(0xffffacca),
          1100: Color(0xffffc6da),
          1200: Color(0xffffdde9),
          1300: Color(0xfffff0f5),
        });

        purple = const ColorTones(0xff4c0d9d, {
          100: Color(0xff4c0d9d),
          200: Color(0xff5911b1),
          300: Color(0xff691cc8),
          400: Color(0xff7a2dda),
          500: Color(0xff8c41e9),
          600: Color(0xff9d57f3),
          700: Color(0xffac6ff9),
          800: Color(0xffbb87fb),
          900: Color(0xffca9ffc),
          1000: Color(0xffd7b6fe),
          1100: Color(0xffe4ccfe),
          1200: Color(0xffefdfff),
          1300: Color(0xfff9f0ff),
        });

        seafoam = const ColorTones(0xff12413f, {
          100: Color(0xff12413f),
          200: Color(0xff0e4c49),
          300: Color(0xff045a57),
          400: Color(0xff006965),
          500: Color(0xff007a75),
          600: Color(0xff008c87),
          700: Color(0xff009e98),
          800: Color(0xff03b2ab),
          900: Color(0xff36c5bd),
          1000: Color(0xff5dd6cf),
          1100: Color(0xff84e6df),
          1200: Color(0xffb0f2ec),
          1300: Color(0xffdff9f6),
        });

        yellow = const ColorTones(0xff4c3600, {
          100: Color(0xff4c3600),
          200: Color(0xff584000),
          300: Color(0xff674c00),
          400: Color(0xff775900),
          500: Color(0xff886800),
          600: Color(0xff9b7800),
          700: Color(0xffae8900),
          800: Color(0xffc09c00),
          900: Color(0xffd3ae00),
          1000: Color(0xffe4c200),
          1100: Color(0xfff4d500),
          1200: Color(0xfff9e85c),
          1300: Color(0xfffcf6bb),
        });
        break;
    }

    /// TODO implement themes

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

    typography = SpectrumTypograhy(this);

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
  dark,
  darkest,
}


/**
 * run on https://spectrum.adobe.com/page/color-palette/
 * 
 * function rgbHex(red, green, blue, alpha) {
	const isPercent = (red + (alpha || '')).toString().includes('%');

	if (typeof red === 'string') {
		[red, green, blue, alpha] = red.match(/(0?\.?\d{1,3})%?\b/g).map(component => Number(component));
	} else if (alpha !== undefined) {
		alpha = Number.parseFloat(alpha);
	}

	if (typeof red !== 'number' ||
		typeof green !== 'number' ||
		typeof blue !== 'number' ||
		red > 255 ||
		green > 255 ||
		blue > 255
	) {
		throw new TypeError('Expected three numbers below 256');
	}

	if (typeof alpha === 'number') {
		if (!isPercent && alpha >= 0 && alpha <= 1) {
			alpha = Math.round(255 * alpha);
		} else if (isPercent && alpha >= 0 && alpha <= 100) {
			alpha = Math.round(255 * alpha / 100);
		} else {
			throw new TypeError(`Expected alpha value (${alpha}) as a fraction or percentage`);
		}

		alpha = (alpha | 1 << 8).toString(16).slice(1); // eslint-disable-line no-mixed-operators
	} else {
		alpha = '';
	}

	// TODO: Remove this ignore comment.
	// eslint-disable-next-line no-mixed-operators
	return alpha + ((blue | green << 8 | red << 16) | 1 << 24).toString(16).slice(1) ;
}

const order = [
    'Gray',
    'Blue',
    'Green',
    'Orange',
    'Red',
    'Celery',
    'Chartreuse',
    'Cyan',
    'Fuchsia',
    'Indigo',
    'Magenta',
    'Purple',
    'Seafoam',
    'Yellow',
]

var table = document.getElementsByClassName('quietColorTable___3QqKC ')[0];
var clrs = Array.from(table.children).map((e) => {
    if(e.className != "spectrum-Table-head"){
        return Array.from(e.children).map((c) =>{
            var color = window.getComputedStyle(c.children[0].children[0].children[0].children[0], null).getPropertyValue('background-color');
            var components = color.replace('rgb(', '').replace(')', '').replaceAll(' ', '').split(','); 
            return {
                color: rgbHex(parseInt(components[0]), parseInt(components[1]), parseInt(components[2]), 1.0).replace('#', ''),
                shade: c.children[1].innerText.replace(/[a-zA-Z]* /, ''),
            }
        })
    }
});

clrs.shift();

var result = order.map((e) => {
    var index = order.indexOf(e);
    var s =  `${e.toLowerCase()} = const ColorTones(0x${clrs[index][0].color.toLowerCase()}, {\ \n`;

    clrs[index].forEach((clr) => {
            s += `    ${clr.shade}: Color(0x${clr.color}),\n`;
    })

    s += "});";
    return s;
}).join('\n\n');

console.log(result);
 */