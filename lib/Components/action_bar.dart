import 'package:adobe_spectrum/Components/action_button.dart';
import 'package:adobe_spectrum/Components/action_group.dart';
import 'package:adobe_spectrum/Components/close_button.dart' as s;
import 'package:adobe_spectrum/Components/button.dart';
import 'package:design_system_provider/desing_components.dart';
import 'package:design_system_provider/desing_provider.dart';
import 'package:flutter/material.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({
    Key? key,
    required this.actions,
    this.isEmphasized = false,
    this.onClose,
    this.itemCounter = "0 selected",
  }) : super(key: key);

  final bool isEmphasized;
  final VoidCallback? onClose;
  final String itemCounter;
  final ActionGroup actions;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Desing.of(context).layout.spacing100.all,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        color: isEmphasized
            ? Desing.of(context).colors.accent.shade900
            : Desing.of(context).colors.gray.shade50,
        border: isEmphasized
            ? null
            : Border.all(
                color: Desing.of(context).colors.gray.shade600,
              ),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Colors.black.withOpacity(0.15),
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              s.CloseButton(
                size: ButtonSize.large,
                isEmphasized: isEmphasized,
                onClick: () => onClose?.call(),
              ),
              Container(
                margin: Desing.of(context).layout.spacing75.left,
              ),
              Text.rich(
                Desing.of(context).typography.text(
                      itemCounter,
                      size: Desing.of(context).typography.fontSize100.value,
                      color: isEmphasized
                          ? Colors.white
                          : Desing.of(context).colors.gray.shade800,
                    ),
              ),
            ],
          ),
          actions,
        ],
      ),
    );
  }
}
