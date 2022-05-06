import 'package:adobe_spectrum/Components/action_button.dart';
import 'package:design_system_provider/desing_colors.dart';
import 'package:design_system_provider/desing_components.dart';
import 'package:flutter/material.dart';

class CloseButton extends StatelessWidget {
  const CloseButton({
    Key? key,
    this.size = ButtonSize.medium,
    this.staticColor,
    this.isEmphasized = false,
    this.isDisabled = false,
    this.onClick,
  }) : super(key: key);
  final ButtonSize size;
  final VoidCallback? onClick;
  final ColorTones? staticColor;
  final bool isDisabled;
  final bool isEmphasized;

  @override
  Widget build(BuildContext context) => ActionButton(
        icon: Icons.close,
        onClick: onClick,
        size: size,
        isDisabled: isDisabled,
        staticColor: staticColor,
        isEmphasized: isEmphasized,
        isQuiet: true,
      );
}
