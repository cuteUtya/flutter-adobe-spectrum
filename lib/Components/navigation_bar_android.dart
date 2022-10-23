import 'package:design_system_provider/desing_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationBarAndroid extends StatefulWidget {
  const NavigationBarAndroid({
    Key? key,
    required this.items,
    this.usePrimaryBackground = true,
  }) : super(key: key);
  final List<NavigationBarItem> items;
  final bool usePrimaryBackground;

  @override
  State<StatefulWidget> createState() => _NavigationBarAndroidState();
}

class _NavigationBarAndroidState extends State<NavigationBarAndroid> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var desing = Desing.of(context);
    return ColoredBox(
      color: widget.usePrimaryBackground
          ? desing.colors.gray.shade50
          : desing.colors.gray.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (var i in widget.items)
            _NavigationBarAndroidItemDisplay(
              property: i,
              //TODO
              selected: widget.items.indexOf(i) == selectedIndex,
              onClick: i.disabled
                  ? null
                  : () => setState(
                        () => selectedIndex = widget.items.indexOf(i),
                      ),
            )
        ],
      ),
    );
  }
}

class _NavigationBarAndroidItemDisplay extends StatelessWidget {
  const _NavigationBarAndroidItemDisplay(
      {Key? key,
      required this.property,
      required this.selected,
      required this.onClick})
      : super(key: key);
  final NavigationBarItem property;
  final bool selected;
  final Function? onClick;
  @override
  Widget build(BuildContext context) {
    var design = Desing.of(context);
    var color = property.disabled
        ? design.colors.gray.shade400
        : (selected
            ? design.colors.blue.shade800
            : design.colors.gray.shade700);
    return GestureDetector(
      onTap: () => onClick?.call(),
      child: Padding(
        padding: design.layout.spacing100.vertical,
        child: Column(
          children: [
            Padding(
              padding: design.layout.spacing75.bottomLeft,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: design.layout.spacing75.topRight,
                    child: Icon(
                      property.icon,
                      color: color,
                    ),
                  ),
                  if (property.badge != null)
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      child: property.badge!.count == null
                          ? Container(
                              color: design.colors.blue.shade800,
                              width: design.layout.spacing75.all.horizontal,
                              height: design.layout.spacing75.all.horizontal,
                            )
                          : Container(
                              color: design.colors.blue.shade800,
                              child: Padding(
                                padding: design.layout.spacing100.horizontal,
                                child: Text.rich(
                                  design.typography.text(
                                    property.badge!.count!.toString(),
                                    size: design.typography.fontSize75.value,
                                  ),
                                ),
                              ),
                            ),
                    ),
                ],
              ),
            ),
            Text.rich(
              design.typography.text(
                property.name,
                size: design.typography.fontSize100.value,
                color: color,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NavigationBarItem {
  const NavigationBarItem({
    required this.name,
    required this.icon,
    this.onClick,
    this.badge,
    this.disabled = false,
  });
  final String name;
  final IconData icon;
  final Function? onClick;
  final NavigationBarNotifycationBadge? badge;
  final bool disabled;
}

class NavigationBarNotifycationBadge {
  const NavigationBarNotifycationBadge({
    this.count,
  });
  final int? count;
}
