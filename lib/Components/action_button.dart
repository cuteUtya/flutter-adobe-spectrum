import 'package:adobe_spectrum/clickable_object.dart';
import 'package:design_system_provider/desing_colors.dart';
import 'package:design_system_provider/desing_components.dart';
import 'package:design_system_provider/desing_provider.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatefulWidget {
  const ActionButton({
    Key? key,
    this.label,
    this.onClick,
    this.hideLabel,
    this.icon,
    this.size = ButtonSize.medium,
    this.isQuiet = false,
    this.isSelected = false,
    this.isEmphasized = false,
    this.staticColor,
    this.selectedTextColor = Colors.black,
    this.isDisabled = false,
  }) : super(key: key);

  final String? label;
  final VoidCallback? onClick;
  final String? hideLabel;
  final IconData? icon;
  final ButtonSize size;
  final bool isQuiet;
  final bool isSelected;
  final bool isEmphasized;
  final ColorTones? staticColor;
  final Color selectedTextColor;
  final bool isDisabled;

  @override
  State<StatefulWidget> createState() => _ActionButtonState();
}

class _ActionButtonState extends ClickableObjectState<ActionButton> {
  @override
  void initState() {
    super.onClick = widget.onClick;
    super.initState();
  }

  Widget buildContent() {
    Widget result;
    Widget? text;
    Widget? icon;

    var textSize = Desing.of(context).typography.fontSize100.value;

    Color textColor;
    if (widget.isSelected) {
      textColor = widget.selectedTextColor;
    } else {
      textColor = widget.isDisabled
          ? Desing.of(context).colors.gray.shade500
          : (widget.isEmphasized
              ? Colors.white
              : Desing.of(context).colors.gray.shade800);
    }

    if (widget.label != null) {
      text = Text.rich(
        Desing.of(context).typography.text(
              widget.label!,
              size: textSize,
              color: textColor,
            ),
      );
    }
    if (widget.icon != null) {
      icon = Icon(
        widget.icon!,
        color: textColor,
        size: textSize,
      );
    }

    if (icon != null && text != null) {
      result = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: Desing.of(context).layout.spacing100.right,
            child: icon,
          ),
          text,
        ],
      );
    } else if (icon != null) {
      result = icon;
    } else if (text != null) {
      result = text;
    } else {
      result = const SizedBox();
    }

    return result;
  }

  Border? getBorder() {
    if (widget.isEmphasized || widget.isDisabled) return null;

    if (focus) {
      return Border.all(
        color: Desing.of(context).colors.accent.shade900,
        width: 2,
      );
    }

    if (widget.isQuiet) return null;

    return Border.all(
      color: Desing.of(context).colors.gray.shade600,
      width: 1,
    );
  }

  Color getFillColor() {
    if (widget.isDisabled && !widget.isQuiet) {
      return Desing.of(context).colors.gray.shade300;
    }

    if (widget.isEmphasized) {
      if (touch) {
        return Desing.of(context).colors.accent.shade1000;
      }
      if (hover || focus) {
        return Desing.of(context).colors.accent.shade900;
      }

      return Desing.of(context).colors.accent.shade800;
    }

    if (widget.isSelected) {
      return Desing.of(context).colors.gray.shade300;
    } else if (!widget.isEmphasized) {
      if (touch) {
        return Desing.of(context).colors.gray.shade300;
      }
    }

    if (widget.isQuiet) {
      if (touch) {
        return Desing.of(context).colors.gray.shade400;
      }

      return Colors.transparent;
    }

    return Desing.of(context).colors.gray.shade50;
  }

  @override
  Widget build(BuildContext context) {
    result = buildContent();

    var border = getBorder();

    result = Container(
      padding: widget.label == null
          ? const EdgeInsets.all(8)
          : const EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 12,
            ),
      decoration: BoxDecoration(
        border: border,
        color: getFillColor(),
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
      child: result,
    );

    if (border?.bottom.width == 1) {
      result = Container(
        margin: const EdgeInsets.all(1),
        child: result,
      );
    }

    result = Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        border: Border.all(
          color: focus && widget.isEmphasized
              ? Desing.of(context).colors.accent.shade800
              : Colors.transparent,
          width: 2,
        ),
      ),
      child: result,
    );

    if (widget.isDisabled) return result;

    return super.build(context);
  }
}
