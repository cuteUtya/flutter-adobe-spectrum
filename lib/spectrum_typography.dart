import 'package:design_system_provider/desing_provider.dart';
import 'package:design_system_provider/desing_system.dart';
import 'package:design_system_provider/desing_typography.dart';
import 'package:flutter/cupertino.dart';

class SpectrumTypograhy extends TypographyData {
  SpectrumTypograhy(this.desing)
      : super(
          fontSize50: FontSize(desktop: 11, mobile: 13),
          fontSize75: FontSize(desktop: 12, mobile: 15),
          fontSize100: FontSize(desktop: 14, mobile: 17),
          fontSize200: FontSize(desktop: 16, mobile: 19),
          fontSize300: FontSize(desktop: 18, mobile: 22),
          fontSize400: FontSize(desktop: 20, mobile: 24),
          fontSize500: FontSize(desktop: 22, mobile: 27),
          fontSize600: FontSize(desktop: 25, mobile: 31),
          fontSize700: FontSize(desktop: 28, mobile: 34),
          fontSize800: FontSize(desktop: 32, mobile: 39),
          fontSize900: FontSize(desktop: 36, mobile: 44),
          fontSize1000: FontSize(desktop: 40, mobile: 49),
          fontSize1100: FontSize(desktop: 45, mobile: 55),
          fontSize1200: FontSize(desktop: 50, mobile: 62),
          fontSize1300: FontSize(desktop: 60, mobile: 70),
        );

  final DesingSystem desing;

  @override
  TextSpan text(
    String text, {
    required double size,
    TextSemantic semantic = TextSemantic.body,
    Color? color,
  }) {
    String fontFamily;

    switch (semantic) {
      case TextSemantic.code:
        color ??= desing.colors.gray.shade900;
        fontFamily = "Source Code Pro";
        break;

      case TextSemantic.heading:
        color ??= desing.colors.gray.shade900;
        fontFamily = "Adobe Clean";
        continue def;

      def:
      default:
        color ??= desing.colors.gray.shade800;
        fontFamily = "Adobe Clean";
        break;
    }

    return TextSpan(
      text: text,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: size,
        color: color,
        decoration: TextDecoration.none,
        fontWeight: semantic == TextSemantic.heading
            ? FontWeight.bold
            : FontWeight.normal,
        fontStyle: semantic == TextSemantic.detail
            ? FontStyle.italic
            : FontStyle.normal,
      ),
    );
  }
}
