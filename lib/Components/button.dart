import 'package:adobe_spectrum/spectrum_typography.dart';
import 'package:design_system_provider/desing_colors.dart';
import 'package:design_system_provider/desing_components.dart';
import 'package:design_system_provider/desing_provider.dart';
import 'package:design_system_provider/desing_typography.dart';
import 'package:adobe_spectrum/clickable_object.dart';
import 'package:flutter/material.dart';

class AdobeButton extends StatefulWidget {
  const AdobeButton({
    Key? key,
    this.label,
    this.hideLabel,
    this.icon,
    this.onClick,
    this.variant = ButtonVariant.callToAction,
    this.staticColor,
    this.style = SpectrumButtonStyle.fill,
    this.size = ButtonSize.medium,
    this.justified = false,
    this.isPending = false,
    this.isDisabled = false,
  }) : super(key: key);

  final String? label;
  final String? hideLabel;
  final VoidCallback? onClick;
  final IconData? icon;
  final ButtonVariant variant;
  final MaterialColor? staticColor;
  final SpectrumButtonStyle style;
  final ButtonSize size;
  final bool justified;
  final bool isPending;
  final bool isDisabled;

  //TODO: static colors, hide label, pending state

  @override
  State<StatefulWidget> createState() => _AdobeButtonState();
}

class _AdobeButtonState extends ClickableObjectState<AdobeButton> {
  late var design = Desing.of(context);

  late ColorTones mainColor = getMainColor();

  ColorTones getMainColor() {
    switch (widget.variant) {
      case ButtonVariant.callToAction:
        return design.colors.accent;
      case ButtonVariant.negative:
        return design.colors.red;
      case ButtonVariant.primary:
        return design.colors.gray;
      case ButtonVariant.secondary:
        return design.colors.gray;
    }
  }

  Color getTextColor(Color buttonColor) {
    if (widget.isDisabled) {
      return design.colors.gray.shade500;
    } else {
      if (widget.variant == ButtonVariant.secondary) {
        return Colors.black;
      }

      if (widget.style == SpectrumButtonStyle.fill) {
        return Colors.white;
      } else {
        return buttonColor;
      }
    }
  }

  Color getFillColor(Color buttonColor) {
    if (touch) return getHightlighetFillColor(buttonColor);

    if (hover || focus) {
      return getHoverFillColor(buttonColor);
    }

    return Colors.transparent;
  }

  Color getButtonColor() {
    if (widget.isDisabled) {
      return design.colors.gray.shade200;
    } else {
      if (touch) {
        return getHightlighetButtonColor();
      } else if (hover || focus) {
        return getHoverButtonColor();
      } else {
        return getIdleButtonColor();
      }
    }
  }

  Color getHoverButtonColor() {
    switch (widget.variant) {
      case ButtonVariant.callToAction:
        return mainColor.shade500;
      case ButtonVariant.negative:
        return mainColor.shade900;
      case ButtonVariant.primary:
        return Colors.black;
      case ButtonVariant.secondary:
        return mainColor.shade300;
    }
  }

  Color getHoverFillColor(Color buttonColor) {
    if (widget.variant == ButtonVariant.secondary) return mainColor.shade200;
    return buttonColor.withOpacity(0.15);
  }

  Color getHightlighetButtonColor() {
    switch (widget.variant) {
      case ButtonVariant.callToAction:
        return mainColor.shade400;
      case ButtonVariant.negative:
        return mainColor.shade1000;
      case ButtonVariant.primary:
        return Colors.black;
      case ButtonVariant.secondary:
        return mainColor.shade500;
    }
  }

  Color getHightlighetFillColor(Color buttonColor) {
    if (widget.variant != ButtonVariant.secondary) {
      return buttonColor.withOpacity(0.30);
    }

    return mainColor.shade400;
  }

  Color getIdleButtonColor() {
    switch (widget.variant) {
      case ButtonVariant.callToAction:
        return mainColor.shade600;
      case ButtonVariant.negative:
        return mainColor.shade800;
      case ButtonVariant.primary:
        return mainColor.shade800;
      case ButtonVariant.secondary:
        return mainColor.shade200;
    }
  }

  @override
  void initState() {
    super.onClick = widget.onClick;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color buttonColor = Colors.transparent;
    //used only with outline style
    Color? fillColor;
    Color textColor;

    double buttonRadius = <ButtonSize, double>{
      ButtonSize.small: 12,
      ButtonSize.medium: 16,
      ButtonSize.large: 20,
      ButtonSize.extraLarge: 24,
    }[widget.size]!;

    buttonColor = getButtonColor();
    textColor = getTextColor(buttonColor);
    fillColor = getFillColor(buttonColor);

    var horizontalPadding = <ButtonSize, double>{
      ButtonSize.small: 12,
      ButtonSize.medium: 16,
      ButtonSize.large: 20,
      ButtonSize.extraLarge: 24,
    }[widget.size]!;

    var verticalPadding = <ButtonSize, double>{
      ButtonSize.small: 4,
      ButtonSize.medium: 6,
      ButtonSize.large: 9,
      ButtonSize.extraLarge: 12,
    }[widget.size]!;

    var decoration = BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(buttonRadius)),
    );

    if (widget.style == SpectrumButtonStyle.fill) {
      decoration = decoration.copyWith(color: buttonColor);
    } else {
      // because border generate outside phisical object border
      verticalPadding -= 2;
      horizontalPadding -= 2;
      decoration = decoration.copyWith(
        color: fillColor,
        border: Border.all(
          color: buttonColor,
          width: 2,
        ),
      );
    }

    var fontSize = {
      ButtonSize.small: design.typography.fontSize75,
      ButtonSize.medium: design.typography.fontSize100,
      ButtonSize.large: design.typography.fontSize200,
      ButtonSize.extraLarge: design.typography.fontSize300,
    }[widget.size]!
        .value;

    Widget content = widget.label == null
        ? const SizedBox()
        : Text.rich(
            design.typography.text(
              widget.label!,
              color: textColor,
              semantic: TextSemantic.heading,
              size: fontSize,
            ),
            textAlign: TextAlign.center,
          );

    if (widget.icon != null) {
      content = Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: widget.label != null
                ? design.layout.spacing100.right
                : EdgeInsets.zero,
            child: Icon(
              widget.icon,
              size: fontSize,
              color: textColor,
            ),
          ),
          content,
        ],
      );
    }

    result = AnimatedContainer(
      //TODO get real duration
      duration: const Duration(milliseconds: 150),
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: widget.label == null ? verticalPadding : horizontalPadding,
      ),
      decoration: decoration,
      child: content,
    );

    result = AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(buttonRadius + 4)),
        border: Border.all(
          color: focus ? design.colors.accent.shade700 : Colors.transparent,
          width: 2,
        ),
      ),
      child: widget.label == null
          ? result
          : ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: <ButtonSize, double>{
                ButtonSize.small: 54,
                ButtonSize.medium: 72,
                ButtonSize.large: 90,
                ButtonSize.extraLarge: 108,
              }[widget.size]!),
              child: result,
            ),
    );

    if (widget.isDisabled) return result;

    return super.build(context);
  }
}

enum ButtonVariant {
  callToAction,
  primary,
  secondary,
  negative,
}

enum SpectrumButtonStyle {
  fill,
  outline,
}
