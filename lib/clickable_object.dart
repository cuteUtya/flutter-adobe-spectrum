import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ClickableObjectState<T extends StatefulWidget> extends State<T> {
  bool hover = false;
  bool touch = false;
  bool focus = false;

  bool enableFocus = true;

  Widget result = const SizedBox();

  Function? onClick;

  void clickHandler(bool isDown) {
    if (onClick != null) {
      if (!isDown && touch) onClick?.call();
      setState(() => touch = isDown);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget ret = MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() {
        hover = false;
        clickHandler(false);
      }),
      child: GestureDetector(
        onTapDown: (_) => clickHandler(true),
        onTapUp: (_) => clickHandler(false),
        child: result,
      ),
    );

    if (enableFocus) {
      ret = Focus(
        onFocusChange: (value) => setState(() => focus = value),
        onKeyEvent: (_, keyEvent) {
          if (keyEvent.logicalKey == LogicalKeyboardKey.enter) {
            bool isDown =
                keyEvent is KeyDownEvent || keyEvent is KeyRepeatEvent;
            clickHandler(isDown);
            return KeyEventResult.handled;
          }

          return KeyEventResult.ignored;
        },
        child: ret,
      );
    }

    return ret;
  }
}
