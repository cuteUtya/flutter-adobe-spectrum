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
    this.onChange,
    this.selectedItems = const [0]
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
  final Function(List<ActionItem>)? onChange;
  final List<int> selectedItems;


  @override
  State<StatefulWidget> createState() => _ActionGroupState();
}

class _ActionGroupState extends State<ActionGroup> {
  late List<int> selectedItems = (widget.enableSelection && !widget.allowEmptySelection) ? widget.selectedItems : [];

  void selectItem(ActionItem item) {
    setState(
      () {
        var index = widget.items.indexOf(item);
        if (selectedItems.contains(index)) {
          print("${widget.allowEmptySelection} && ${selectedItems.length}");
          if (!widget.allowEmptySelection && selectedItems.length == 1) return;
          selectedItems.remove(index);
          onChange();
        } else {
          if (widget.selectionMode == SelectionMode.single) {
            selectedItems.clear();
          }
          selectedItems.add(index);
          onChange();
        }
      },
    );
  }

  void onChange() {
    if(widget.onChange != null) {
      widget.onChange!(selectedItems.map((e) => widget.items[e]).toList());
    }
  }

  Widget buildButton(int itemIndex) {
    var item = widget.items[itemIndex];
    var onClick = widget.enableSelection
        ? () => selectItem(widget.items[itemIndex])
        : () => item.onClick?.call;
    var index = widget.items.indexOf(item);
    bool selected = selectedItems.contains(index);

    print('$index || $selectedItems');

    Widget result = ActionButton(
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
        child: buildButton(i),
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
