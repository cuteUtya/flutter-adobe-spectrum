import 'package:adobe_spectrum/Components/action_button.dart';
import 'package:design_system_provider/desing_components.dart';
import 'package:design_system_provider/desing_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionGroup extends StatefulWidget {
  const ActionGroup({
    Key? key,
    required this.items,
    this.orientation = Axis.horizontal,
    this.size = ButtonSize.medium,
    this.density = ObjectsGroupDensity.compact,
    this.justified = false,
    this.isQuiet = false,
    this.enableSelection = false,
    this.selectionMode = SelectionMode.single,
    this.isEmphasis = false,
    this.allowEmptySelection = false,
    this.overflowMode = OverflowMode.wrap,
    this.isDisabled = false,
  }) : super(key: key);

  final List<ActionItem> items;
  final Axis orientation;
  final ButtonSize size;
  final ObjectsGroupDensity density;
  final bool justified;
  final bool isQuiet;
  final bool enableSelection;
  final SelectionMode selectionMode;
  final bool isEmphasis;
  // если да - то по крайней мере один объект выбран
  final bool allowEmptySelection;
  final OverflowMode overflowMode;
  final bool isDisabled;

  @override
  State<StatefulWidget> createState() => _ActionGroupState();
}

class _ActionGroupState extends State<ActionGroup> {
  List<ActionItem> selectedItems = [];

  void selectDefault() {
    if (widget.items.isNotEmpty) {
      selectedItems.add(widget.items.first);
    }
  }

  @override
  void initState() {
    if (widget.enableSelection && !widget.allowEmptySelection) {
      selectDefault();
    }
    super.initState();
  }

  void selectItem(ActionItem item) {
    setState(
      () {
        if (selectedItems.contains(item)) {
          print("${widget.allowEmptySelection} && ${selectedItems.length}");
          if (!widget.allowEmptySelection && selectedItems.length == 1) return;

          selectedItems.remove(item);
        } else {
          if (widget.selectionMode == SelectionMode.single) {
            selectedItems.clear();
          }
          selectedItems.add(item);
        }
      },
    );
  }

  Widget buildButton(ActionItem item) {
    var onClick = widget.enableSelection
        ? () => selectItem(item)
        : () => item.onClick?.call;
    bool selected = selectedItems.contains(item);

    var index = widget.items.indexOf(item);

    Widget result = ActionButton(
      key: Key("item?=${item.hashCode}isSelected=$selected"),
      label: item.label,
      icon: item.icon,
      isDisabled: widget.isDisabled,
      isEmphasized: widget.isEmphasis && (selected || !widget.enableSelection),
      isQuiet: true,
      isSelected: selected,
      justified: widget.justified,
      size: widget.size,
      onClick: onClick,
      orientation: widget.orientation,
      enableFocus: false,
      groupPosition: widget.items.length == 1
          ? null
          : (index == 0
              ? GroupPosition.start
              : (index == widget.items.length - 1
                  ? GroupPosition.end
                  : GroupPosition.center)),
    );

    if (!widget.isQuiet && index != 0) {
      var borderSide =
          BorderSide(color: Desing.of(context).colors.gray.shade600);
      result = Container(
        decoration: BoxDecoration(
            border: widget.orientation == Axis.horizontal
                ? Border(
                    left: borderSide,
                  )
                : Border(
                    top: borderSide,
                  )),
        child: result,
      );
    }

    return result;
  }

  Widget buildItems() {
    var spacing = Desing.of(context).layout.spacing100;
    bool horizontal = widget.orientation == Axis.horizontal;
    var margin = horizontal ? spacing.left : spacing.top;
    List<Widget> items = [];

    for (int i = 0; i < widget.items.length; i++) {
      Widget item = Container(
        margin: widget.density == ObjectsGroupDensity.compact ? null : margin,
        child: buildButton(widget.items[i]),
      );

      if (widget.justified) {
        item = Flexible(child: item);
      }
      items.add(item);
    }

    return horizontal ? Row(children: items) : Column(children: items);
  }

  @override
  Widget build(BuildContext context) {
    var result = buildItems();

    if (!widget.isQuiet) {
      result = Container(
        decoration: BoxDecoration(
          border: Border.all(color: Desing.of(context).colors.gray.shade600),
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: result,
      );
    }

    return result;
  }
}

enum ObjectsGroupDensity {
  regular,
  compact,
}

enum SelectionMode {
  single,
  multyple,
}

enum OverflowMode {
  wrap,
  collapse,
}
