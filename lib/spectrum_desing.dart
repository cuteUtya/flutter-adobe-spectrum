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
          75: Color(0xfdfdfdff),
          100: Color(0xf8f8f8ff),
          200: Color(0xe6e6e6ff),
          300: Color(0xd5d5d5ff),
          400: Color(0xb1b1b1ff),
          500: Color(0x909090ff),
          600: Color(0x6d6d6dff),
          700: Color(0x464646ff),
          800: Color(0x222222ff),
          900: Color(0x000000ff),
        });

        blue = const ColorTones(0xe0f2ffff, {
          100: Color(0xe0f2ffff),
          200: Color(0xcae8ffff),
          300: Color(0xb5deffff),
          400: Color(0x96cefdff),
          500: Color(0x78bbfaff),
          600: Color(0x59a7f6ff),
          700: Color(0x3892f3ff),
          800: Color(0x147af3ff),
          900: Color(0x0265dcff),
          1000: Color(0x0054b6ff),
          1100: Color(0x004491ff),
          1200: Color(0x003571ff),
          1300: Color(0x002754ff),
        });

        green = const ColorTones(0xcef8e0ff, {
          100: Color(0xcef8e0ff),
          200: Color(0xadf4ceff),
          300: Color(0x89ecbcff),
          400: Color(0x67dea8ff),
          500: Color(0x49cc93ff),
          600: Color(0x2fb880ff),
          700: Color(0x15a46eff),
          800: Color(0x008f5dff),
          900: Color(0x007a4dff),
          1000: Color(0x00653eff),
          1100: Color(0x005132ff),
          1200: Color(0x053f27ff),
          1300: Color(0x0a2e1dff),
        });

        orange = const ColorTones(0xffecccff, {
          100: Color(0xffecccff),
          200: Color(0xffdfadff),
          300: Color(0xfdd291ff),
          400: Color(0xffbb63ff),
          500: Color(0xffa037ff),
          600: Color(0xf68511ff),
          700: Color(0xe46f00ff),
          800: Color(0xcb5d00ff),
          900: Color(0xb14c00ff),
          1000: Color(0x953d00ff),
          1100: Color(0x7a2f00ff),
          1200: Color(0x612300ff),
          1300: Color(0x491901ff),
        });

        red = const ColorTones(0xffebe7ff, {
          100: Color(0xffebe7ff),
          200: Color(0xffddd6ff),
          300: Color(0xffcdc3ff),
          400: Color(0xffb7a9ff),
          500: Color(0xff9b88ff),
          600: Color(0xff7c65ff),
          700: Color(0xf75c46ff),
          800: Color(0xea3829ff),
          900: Color(0xd31510ff),
          1000: Color(0xb40000ff),
          1100: Color(0x930000ff),
          1200: Color(0x740000ff),
          1300: Color(0x590000ff),
        });

        celery = const ColorTones(0xcdfcbfff, {
          100: Color(0xcdfcbfff),
          200: Color(0xaef69dff),
          300: Color(0x96ee85ff),
          400: Color(0x72e06aff),
          500: Color(0x4ecf50ff),
          600: Color(0x27bb36ff),
          700: Color(0x07a721ff),
          800: Color(0x009112ff),
          900: Color(0x007c0fff),
          1000: Color(0x00670fff),
          1100: Color(0x00530dff),
          1200: Color(0x00400aff),
          1300: Color(0x003007ff),
        });

        chartreuse = const ColorTones(0xdbfc6eff, {
          100: Color(0xdbfc6eff),
          200: Color(0xcbf443ff),
          300: Color(0xbce92aff),
          400: Color(0xaad816ff),
          500: Color(0x98c50aff),
          600: Color(0x87b103ff),
          700: Color(0x769c00ff),
          800: Color(0x678800ff),
          900: Color(0x577400ff),
          1000: Color(0x486000ff),
          1100: Color(0x3a4d00ff),
          1200: Color(0x2c3b00ff),
          1300: Color(0x212c00ff),
        });

        fuchsia = const ColorTones(0xffe9fcff, {
          100: Color(0xffe9fcff),
          200: Color(0xffdafaff),
          300: Color(0xfec7f8ff),
          400: Color(0xfbaef6ff),
          500: Color(0xf592f3ff),
          600: Color(0xed74edff),
          700: Color(0xe055e2ff),
          800: Color(0xcd3aceff),
          900: Color(0xb622b7ff),
          1000: Color(0x9d039eff),
          1100: Color(0x800081ff),
          1200: Color(0x640664ff),
          1300: Color(0x470e46ff),
        });

        indigo = const ColorTones(0xedeeffff, {
          100: Color(0xedeeffff),
          200: Color(0xe0e2ffff),
          300: Color(0xd3d5ffff),
          400: Color(0xc1c4ffff),
          500: Color(0xacafffff),
          600: Color(0x9599ffff),
          700: Color(0x7e84fcff),
          800: Color(0x686df4ff),
          900: Color(0x5258e4ff),
          1000: Color(0x4046caff),
          1100: Color(0x3236a8ff),
          1200: Color(0x262986ff),
          1300: Color(0x1b1e64ff),
        });

        magenta = const ColorTones(0xffeaf1ff, {
          100: Color(0xffeaf1ff),
          200: Color(0xffdce8ff),
          300: Color(0xffcaddff),
          400: Color(0xffb2ceff),
          500: Color(0xff95bdff),
          600: Color(0xfa77aaff),
          700: Color(0xef5a98ff),
          800: Color(0xde3d82ff),
          900: Color(0xc82269ff),
          1000: Color(0xad0955ff),
          1100: Color(0x8e0045ff),
          1200: Color(0x700037ff),
          1300: Color(0x54032aff),
        });

        purple = const ColorTones(0xf6ebffff, {
          100: Color(0xf6ebffff),
          200: Color(0xeeddffff),
          300: Color(0xe6d0ffff),
          400: Color(0xdbbbfeff),
          500: Color(0xcca4fdff),
          600: Color(0xbd8bfcff),
          700: Color(0xae72f9ff),
          800: Color(0x9d57f4ff),
          900: Color(0x893de7ff),
          1000: Color(0x7326d3ff),
          1100: Color(0x5d13b7ff),
          1200: Color(0x470c94ff),
          1300: Color(0x33106aff),
        });

        seafoam = const ColorTones(0xcef7f3ff, {
          100: Color(0xcef7f3ff),
          200: Color(0xaaf1eaff),
          300: Color(0x8ce9e2ff),
          400: Color(0x65dad2ff),
          500: Color(0x3fc9c1ff),
          600: Color(0x0fb5aeff),
          700: Color(0x00a19aff),
          800: Color(0x008c87ff),
          900: Color(0x007772ff),
          1000: Color(0x00635fff),
          1100: Color(0x0c4f4cff),
          1200: Color(0x123c3aff),
          1300: Color(0x122c2bff),
        });

        yellow = const ColorTones(0xfbf198ff, {
          100: Color(0xfbf198ff),
          200: Color(0xf8e750ff),
          300: Color(0xf8d904ff),
          400: Color(0xe8c600ff),
          500: Color(0xd7b300ff),
          600: Color(0xc49f00ff),
          700: Color(0xb08c00ff),
          800: Color(0x9b7800ff),
          900: Color(0x856600ff),
          1000: Color(0x705300ff),
          1100: Color(0x5b4300ff),
          1200: Color(0x483300ff),
          1300: Color(0x362500ff),
        });
        break;

      case SpectrumTheme.dark:
        gray = const ColorTones(0x1d1d1dff, {
          50: Color(0x1d1d1dff),
          75: Color(0x262626ff),
          100: Color(0x323232ff),
          200: Color(0x3f3f3fff),
          300: Color(0x545454ff),
          400: Color(0x707070ff),
          500: Color(0x909090ff),
          600: Color(0xb2b2b2ff),
          700: Color(0xd1d1d1ff),
          800: Color(0xebebebff),
          900: Color(0xffffffff),
        });

        blue = const ColorTones(0x003877ff, {
          100: Color(0x003877ff),
          200: Color(0x00418aff),
          300: Color(0x004da3ff),
          400: Color(0x0059c2ff),
          500: Color(0x0367e0ff),
          600: Color(0x1379f3ff),
          700: Color(0x348ff4ff),
          800: Color(0x54a3f6ff),
          900: Color(0x72b7f9ff),
          1000: Color(0x8fcafcff),
          1100: Color(0xaedbfeff),
          1200: Color(0xcce9ffff),
          1300: Color(0xe8f6ffff),
        });

        green = const ColorTones(0x044329ff, {
          100: Color(0x044329ff),
          200: Color(0x004e2fff),
          300: Color(0x005c38ff),
          400: Color(0x006c43ff),
          500: Color(0x007d4eff),
          600: Color(0x008f5dff),
          700: Color(0x12a26cff),
          800: Color(0x2bb47dff),
          900: Color(0x43c78fff),
          1000: Color(0x5ed9a2ff),
          1100: Color(0x81e9b8ff),
          1200: Color(0xb1f4d1ff),
          1300: Color(0xdffaeaff),
        });

        orange = const ColorTones(0x662500ff, {
          100: Color(0x662500ff),
          200: Color(0x752d00ff),
          300: Color(0x893700ff),
          400: Color(0x9e4200ff),
          500: Color(0xb44e00ff),
          600: Color(0xca5d00ff),
          700: Color(0xe16d00ff),
          800: Color(0xf4810cff),
          900: Color(0xfe9a2eff),
          1000: Color(0xffb558ff),
          1100: Color(0xfdce88ff),
          1200: Color(0xffe1b3ff),
          1300: Color(0xfff2ddff),
        });

        red = const ColorTones(0x7b0000ff, {
          100: Color(0x7b0000ff),
          200: Color(0x8d0000ff),
          300: Color(0xa50000ff),
          400: Color(0xbe0403ff),
          500: Color(0xd71913ff),
          600: Color(0xea3829ff),
          700: Color(0xf65843ff),
          800: Color(0xff755eff),
          900: Color(0xff9581ff),
          1000: Color(0xffb0a1ff),
          1100: Color(0xffc9bdff),
          1200: Color(0xffded8ff),
          1300: Color(0xfff1eeff),
        });

        celery = const ColorTones(0x00450aff, {
          100: Color(0x00450aff),
          200: Color(0x00500cff),
          300: Color(0x005e0eff),
          400: Color(0x006d0fff),
          500: Color(0x007f0fff),
          600: Color(0x009112ff),
          700: Color(0x04a51eff),
          800: Color(0x22b833ff),
          900: Color(0x44ca49ff),
          1000: Color(0x69dc63ff),
          1100: Color(0x8eeb7fff),
          1200: Color(0xb4f7a2ff),
          1300: Color(0xddfdd3ff),
        });

        chartreuse = const ColorTones(0x304000ff, {
          100: Color(0x304000ff),
          200: Color(0x374a00ff),
          300: Color(0x415700ff),
          400: Color(0x4c6600ff),
          500: Color(0x597600ff),
          600: Color(0x668800ff),
          700: Color(0x759a00ff),
          800: Color(0x84ad01ff),
          900: Color(0x94c008ff),
          1000: Color(0xa6d312ff),
          1100: Color(0xb8e525ff),
          1200: Color(0xcdf547ff),
          1300: Color(0xe7fe9aff),
        });

        fuchsia = const ColorTones(0x6b036aff, {
          100: Color(0x6b036aff),
          200: Color(0x7b007bff),
          300: Color(0x900091ff),
          400: Color(0xa50da6ff),
          500: Color(0xb925b9ff),
          600: Color(0xcd39ceff),
          700: Color(0xdf51e0ff),
          800: Color(0xeb6eecff),
          900: Color(0xf48cf2ff),
          1000: Color(0xfaa8f5ff),
          1100: Color(0xfec2f8ff),
          1200: Color(0xffdbfaff),
          1300: Color(0xffeffcff),
        });

        indigo = const ColorTones(0x282c8cff, {
          100: Color(0x282c8cff),
          200: Color(0x2f34a3ff),
          300: Color(0x393fbbff),
          400: Color(0x464bd3ff),
          500: Color(0x555be7ff),
          600: Color(0x686df4ff),
          700: Color(0x7c81fbff),
          800: Color(0x9195ffff),
          900: Color(0xa7aaffff),
          1000: Color(0xbcbeffff),
          1100: Color(0xd0d2ffff),
          1200: Color(0xe2e4ffff),
          1300: Color(0xf3f3feff),
        });

        magenta = const ColorTones(0x76003aff, {
          100: Color(0x76003aff),
          200: Color(0x890042ff),
          300: Color(0xa0004dff),
          400: Color(0xb6125aff),
          500: Color(0xcb266dff),
          600: Color(0xde3d82ff),
          700: Color(0xed5795ff),
          800: Color(0xf972a7ff),
          900: Color(0xff8fb9ff),
          1000: Color(0xffaccaff),
          1100: Color(0xffc6daff),
          1200: Color(0xffdde9ff),
          1300: Color(0xfff0f5ff),
        });

        purple = const ColorTones(0x4c0d9dff, {
          100: Color(0x4c0d9dff),
          200: Color(0x5911b1ff),
          300: Color(0x691cc8ff),
          400: Color(0x7a2ddaff),
          500: Color(0x8c41e9ff),
          600: Color(0x9d57f3ff),
          700: Color(0xac6ff9ff),
          800: Color(0xbb87fbff),
          900: Color(0xca9ffcff),
          1000: Color(0xd7b6feff),
          1100: Color(0xe4ccfeff),
          1200: Color(0xefdfffff),
          1300: Color(0xf9f0ffff),
        });

        seafoam = const ColorTones(0x12413fff, {
          100: Color(0x12413fff),
          200: Color(0x0e4c49ff),
          300: Color(0x045a57ff),
          400: Color(0x006965ff),
          500: Color(0x007a75ff),
          600: Color(0x008c87ff),
          700: Color(0x009e98ff),
          800: Color(0x03b2abff),
          900: Color(0x36c5bdff),
          1000: Color(0x5dd6cfff),
          1100: Color(0x84e6dfff),
          1200: Color(0xb0f2ecff),
          1300: Color(0xdff9f6ff),
        });

        yellow = const ColorTones(0x4c3600ff, {
          100: Color(0x4c3600ff),
          200: Color(0x584000ff),
          300: Color(0x674c00ff),
          400: Color(0x775900ff),
          500: Color(0x886800ff),
          600: Color(0x9b7800ff),
          700: Color(0xae8900ff),
          800: Color(0xc09c00ff),
          900: Color(0xd3ae00ff),
          1000: Color(0xe4c200ff),
          1100: Color(0xf4d500ff),
          1200: Color(0xf9e85cff),
          1300: Color(0xfcf6bbff),
        });
        break;

      case SpectrumTheme.darkest:
        gray = const ColorTones(0x000000ff, {
          50: Color(0x000000ff),
          75: Color(0x0e0e0eff),
          100: Color(0x1d1d1dff),
          200: Color(0x303030ff),
          300: Color(0x4b4b4bff),
          400: Color(0x6a6a6aff),
          500: Color(0x8d8d8dff),
          600: Color(0xb0b0b0ff),
          700: Color(0xd0d0d0ff),
          800: Color(0xebebebff),
          900: Color(0xffffffff),
        });

        blue = const ColorTones(0x002651ff, {
          100: Color(0x002651ff),
          200: Color(0x00326aff),
          300: Color(0x004087ff),
          400: Color(0x004ea6ff),
          500: Color(0x005cc8ff),
          600: Color(0x066ce7ff),
          700: Color(0x1d80f5ff),
          800: Color(0x4096f3ff),
          900: Color(0x5eaaf7ff),
          1000: Color(0x7cbdfaff),
          1100: Color(0x98cefdff),
          1200: Color(0xb3defeff),
          1300: Color(0xceeaffff),
        });

        green = const ColorTones(0x0a2c1cff, {
          100: Color(0x0a2c1cff),
          200: Color(0x073b24ff),
          300: Color(0x004c2eff),
          400: Color(0x005d39ff),
          500: Color(0x006f45ff),
          600: Color(0x008252ff),
          700: Color(0x009562ff),
          800: Color(0x1ca872ff),
          900: Color(0x34bb84ff),
          1000: Color(0x4bcd95ff),
          1100: Color(0x67dea8ff),
          1200: Color(0x89ecbcff),
          1300: Color(0xb1f4d1ff),
        });

        orange = const ColorTones(0x481801ff, {
          100: Color(0x481801ff),
          200: Color(0x5c2000ff),
          300: Color(0x732b00ff),
          400: Color(0x8a3700ff),
          500: Color(0xa24400ff),
          600: Color(0xba5200ff),
          700: Color(0xd26200ff),
          800: Color(0xe87400ff),
          900: Color(0xf98917ff),
          1000: Color(0xffa23bff),
          1100: Color(0xffbc66ff),
          1200: Color(0xfdd291ff),
          1300: Color(0xffe2b5ff),
        });

        red = const ColorTones(0x570000ff, {
          100: Color(0x570000ff),
          200: Color(0x6e0000ff),
          300: Color(0x8a0000ff),
          400: Color(0xa70000ff),
          500: Color(0xc40706ff),
          600: Color(0xdd2118ff),
          700: Color(0xee4331ff),
          800: Color(0xf9634cff),
          900: Color(0xff816bff),
          1000: Color(0xff9e8cff),
          1100: Color(0xffb7a9ff),
          1200: Color(0xffcdc3ff),
          1300: Color(0xffdfd9ff),
        });

        celery = const ColorTones(0x002f07ff, {
          100: Color(0x002f07ff),
          200: Color(0x003d09ff),
          300: Color(0x004d0cff),
          400: Color(0x005f0fff),
          500: Color(0x00710fff),
          600: Color(0x00840fff),
          700: Color(0x009714ff),
          800: Color(0x0dab25ff),
          900: Color(0x2dbf3aff),
          1000: Color(0x50d052ff),
          1100: Color(0x73e06bff),
          1200: Color(0x93ed83ff),
          1300: Color(0xb4f7a2ff),
        });

        chartreuse = const ColorTones(0x202b00ff, {
          100: Color(0x202b00ff),
          200: Color(0x2a3800ff),
          300: Color(0x364800ff),
          400: Color(0x425800ff),
          500: Color(0x4f6900ff),
          600: Color(0x5d7b00ff),
          700: Color(0x6b8e00ff),
          800: Color(0x7aa100ff),
          900: Color(0x8ab403ff),
          1000: Color(0x9ac60bff),
          1100: Color(0xaad816ff),
          1200: Color(0xbbe829ff),
          1300: Color(0xcdf648ff),
        });

        fuchsia = const ColorTones(0x460e44ff, {
          100: Color(0x460e44ff),
          200: Color(0x5d095cff),
          300: Color(0x780078ff),
          400: Color(0x920093ff),
          500: Color(0xa913aaff),
          600: Color(0xbf2bbfff),
          700: Color(0xd341d5ff),
          800: Color(0xe45be5ff),
          900: Color(0xef78eeff),
          1000: Color(0xf695f3ff),
          1100: Color(0xfbaff6ff),
          1200: Color(0xfec7f8ff),
          1300: Color(0xffdcfaff),
        });

        indigo = const ColorTones(0x1a1d61ff, {
          100: Color(0x1a1d61ff),
          200: Color(0x23277dff),
          300: Color(0x2e329eff),
          400: Color(0x3a3fbdff),
          500: Color(0x494ed8ff),
          600: Color(0x5a60ebff),
          700: Color(0x6e73f6ff),
          800: Color(0x8488fdff),
          900: Color(0x999dffff),
          1000: Color(0xaeb1ffff),
          1100: Color(0xc2c4ffff),
          1200: Color(0xd4d5ffff),
          1300: Color(0xe3e4ffff),
        });

        magenta = const ColorTones(0x530329ff, {
          100: Color(0x530329ff),
          200: Color(0x6a0034ff),
          300: Color(0x850041ff),
          400: Color(0xa1004eff),
          500: Color(0xba165dff),
          600: Color(0xd12b72ff),
          700: Color(0xe34589ff),
          800: Color(0xf1619cff),
          900: Color(0xfc7cadff),
          1000: Color(0xff98bfff),
          1100: Color(0xffb3cfff),
          1200: Color(0xffcaddff),
          1300: Color(0xffdde9ff),
        });

        purple = const ColorTones(0x321068ff, {
          100: Color(0x321068ff),
          200: Color(0x430d8cff),
          300: Color(0x5610adff),
          400: Color(0x6a1dc8ff),
          500: Color(0x7e31deff),
          600: Color(0x9146ecff),
          700: Color(0xa25ef6ff),
          800: Color(0xb277faff),
          900: Color(0xc08ffcff),
          1000: Color(0xcea6fdff),
          1100: Color(0xdbbcfeff),
          1200: Color(0xe6cfffff),
          1300: Color(0xf0e0ffff),
        });

        seafoam = const ColorTones(0x122b2aff, {
          100: Color(0x122b2aff),
          200: Color(0x133937ff),
          300: Color(0x104946ff),
          400: Color(0x035b58ff),
          500: Color(0x006c68ff),
          600: Color(0x007f79ff),
          700: Color(0x00928cff),
          800: Color(0x00a59fff),
          900: Color(0x1ab9b2ff),
          1000: Color(0x42cac3ff),
          1100: Color(0x66dad3ff),
          1200: Color(0x8be8e1ff),
          1300: Color(0xb3f2edff),
        });

        yellow = const ColorTones(0x352400ff, {
          100: Color(0x352400ff),
          200: Color(0x442f00ff),
          300: Color(0x563e00ff),
          400: Color(0x674d00ff),
          500: Color(0x7a5c00ff),
          600: Color(0x8d6c00ff),
          700: Color(0xa17e00ff),
          800: Color(0xb49000ff),
          900: Color(0xc7a200ff),
          1000: Color(0xd8b500ff),
          1100: Color(0xe9c700ff),
          1200: Color(0xf7d804ff),
          1300: Color(0xf9e961ff),
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
	return ((blue | green << 8 | red << 16) | 1 << 24).toString(16).slice(1) + alpha;
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