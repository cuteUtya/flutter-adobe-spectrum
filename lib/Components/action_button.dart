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
    this.justified = false,
    this.isSelected = false,
    this.isEmphasized = false,
    this.staticColor,
    this.selectedTextColor,
    this.isDisabled = false,
    this.orientation = Axis.horizontal,
    this.groupPosition,
    this.enableFocus = true,
  }) : super(key: key);

  final String? label;
  final VoidCallback? onClick;
  final String? hideLabel;
  final IconData? icon;
  // TODO Adobe didn't drawed variant's with different sizes so i don't implemented it
  final ButtonSize size;
  final bool isQuiet;
  final bool isSelected;
  final bool justified;
  final bool isEmphasized;
  final ColorTones? staticColor;
  final Color? selectedTextColor;
  final bool isDisabled;
  final bool enableFocus;

  // Fields only for ActionBar
  final Axis orientation;
  final GroupPosition? groupPosition;

  @override
  State<StatefulWidget> createState() => _ActionButtonState();
}

class _ActionButtonState extends ClickableObjectState<ActionButton> {
  @override
  void initState() {
    super.onClick = widget.onClick;
    super.enableFocus = widget.enableFocus;
    super.initState();
  }

  Widget buildContent() {
    Widget result;
    Widget? text;
    Widget? icon;

    var textSize = {
      ButtonSize.small: Desing.of(context).typography.fontSize75,
      ButtonSize.medium: Desing.of(context).typography.fontSize100,
      ButtonSize.large: Desing.of(context).typography.fontSize200,
      ButtonSize.extraLarge: Desing.of(context).typography.fontSize300,
    }[widget.size]!
        .value;

    Color textColor;
    if (widget.isSelected &&
        widget.selectedTextColor != null &&
        !widget.isDisabled) {
      textColor = widget.selectedTextColor!;
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
    if (widget.isDisabled) {
      if (widget.isQuiet) {
        return Colors.transparent;
      }
      return Desing.of(context).colors.gray.shade300;
    }

    if (widget.isEmphasized) {
      if (touch) {
        return Desing.of(context).colors.accent.shade1100;
      }
      if (hover || focus) {
        return Desing.of(context).colors.accent.shade1000;
      }

      return Desing.of(context).colors.accent.shade900;
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

  BorderRadius getBorderRadius() {
    /*??? 
    if (widget.label == null) {
      return const BorderRadius.all(Radius.circular(16));
    }
     */

    const base = Radius.circular(4);

    if (widget.groupPosition == null) {
      return const BorderRadius.all(base);
    }

    switch (widget.groupPosition!) {
      case GroupPosition.start:
        if (widget.orientation == Axis.horizontal) {
          return const BorderRadius.horizontal(left: base);
        } else {
          return const BorderRadius.vertical(top: base);
        }
      case GroupPosition.center:
        return const BorderRadius.all(Radius.zero);

      case GroupPosition.end:
        if (widget.orientation == Axis.horizontal) {
          return const BorderRadius.horizontal(right: base);
        } else {
          return const BorderRadius.vertical(bottom: base);
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    result = buildContent();

    if (widget.justified) {
      if (widget.orientation == Axis.horizontal) {
        result = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            result,
          ],
        );
      } else {
        result = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            result,
          ],
        );
      }
    }

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
        borderRadius: getBorderRadius(),
      ),
      child: result,
    );

    if (border?.bottom.width == 1 && widget.groupPosition == null) {
      result = Container(
        padding: const EdgeInsets.all(1),
        child: result,
      );
    }

    if (widget.isEmphasized && widget.groupPosition == null) {
      result = Container(
        margin: EdgeInsets.all(focus ? 1 : 3),
        child: result,
      );
    }

    result = Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        border: focus && widget.isEmphasized
            ? Border.all(
                color: Desing.of(context).colors.accent.shade800,
                width: 2,
              )
            : null,
      ),
      child: result,
    );

    if (widget.isDisabled) return result;

    return super.build(context);
  }
}

enum GroupPosition {
  start,
  center,
  end,
}
