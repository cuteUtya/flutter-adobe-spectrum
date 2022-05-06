import 'package:design_system_provider/desing_components.dart';
import 'package:design_system_provider/desing_provider.dart';
import 'package:flutter/material.dart';

class Divider extends StatelessWidget {
  const Divider({
    Key? key,
    this.orientation = Axis.horizontal,
    this.dividerSize = DividerSize.large,
  }) : super(key: key);

  final Axis orientation;
  final DividerSize dividerSize;

  @override
  Widget build(BuildContext context) {
    var color = <DividerSize, Color>{
      DividerSize.large: Desing.of(context).colors.gray.shade800,
      DividerSize.medium: Desing.of(context).colors.gray.shade300,
      DividerSize.small: Desing.of(context).colors.gray.shade300,
    }[dividerSize]!;

    var thickness = <DividerSize, double>{
      DividerSize.large: 4,
      DividerSize.medium: 2,
      DividerSize.small: 0.5,
    }[dividerSize]!;

    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(2),
        ),
      ),
      width: orientation == Axis.horizontal ? double.infinity : thickness,
      height: orientation == Axis.horizontal ? thickness : double.infinity,
    );
  }
}
