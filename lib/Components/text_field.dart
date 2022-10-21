import 'package:design_system_provider/desing_provider.dart';
import 'package:design_system_provider/desing_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdobeTextField extends StatefulWidget {
  const AdobeTextField({
    this.onChange,
    this.label,
    this.controller,
    this.size = TextFieldSize.medium,
    this.inputType = InputFieldType.text,
    this.quiet = false,
    Key? key,
  }) : super(key: key);

  final ValueChanged<String>? onChange;
  final String? label;
  final TextEditingController? controller;
  final TextFieldSize size;
  final bool quiet;
  final InputFieldType inputType;
  /**
   * todo: implement validation callback, error, character count
   * read-only, help-text, 
   */

  @override
  State<StatefulWidget> createState() => _TextFieldState();
}

class _TextFieldState extends State<AdobeTextField> {
  @override
  Widget build(BuildContext context) {
    var design = Desing.of(context);

    TextInputType type = TextInputType.text;

    switch (widget.inputType) {
      case InputFieldType.email:
        type = TextInputType.emailAddress;
        break;
      case InputFieldType.phone:
        type = TextInputType.phone;
        break;
      case InputFieldType.url:
        type = TextInputType.url;
        break;
      case InputFieldType.password:
        type = TextInputType.visiblePassword;
        break;
      default:
        //
        break;
    }

    var borderRadius = BorderRadius.all(Radius.circular(isMobile ? 5 : 4));

    EdgeInsets padding;
    double fontSize;
    double labelSize;
    double labelMargin;

    switch (widget.size) {
      case TextFieldSize.small:
        padding = const EdgeInsets.symmetric(
          horizontal: 9,
          vertical: 4,
        );
        fontSize = design.typography.fontSize75.value;
        labelSize = design.typography.fontSize75.value;
        labelMargin = design.layout.spacing75.bottom.vertical;
        break;

      case TextFieldSize.medium:
        padding = const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        );
        fontSize = design.typography.fontSize100.value;
        labelSize = design.typography.fontSize75.value;
        labelMargin = design.layout.spacing75.bottom.vertical;
        break;

      case TextFieldSize.large:
        padding = const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 9,
        );
        fontSize = design.typography.fontSize200.value;
        labelSize = design.typography.fontSize100.value;
        labelMargin = design.layout.spacing100.bottom.vertical;
        break;

      case TextFieldSize.xlarge:
        padding = const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 12,
        );
        fontSize = design.typography.fontSize300.value;
        labelSize = design.typography.fontSize200.value;
        labelMargin = design.layout.spacing200.bottom.vertical;
        break;
    }

    var borderIdle = OutlineInputBorder(
      borderSide: BorderSide(
        color: design.colors.gray.shade400,
        width: 1,
      ),
      borderRadius: borderRadius,
    );

    Widget r = Theme(
      data: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          isDense: true, // this will remove the default content padding
          // now you can customize it here or add padding widget
          contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        ),
      ),
      child: TextField(
        obscureText: widget.inputType == InputFieldType.password,
        cursorColor: design.colors.gray.shade900,
        cursorWidth: 1,
        controller: widget.controller,
        keyboardType: type,
        onChanged: widget.onChange,
        style: TextStyle(
          fontFamily: 'Adobe Clean',
          fontSize: fontSize,
          color: design.colors.gray.shade800,
        ),
        decoration: InputDecoration(
          contentPadding:
              padding.add(EdgeInsets.symmetric(vertical: fontSize / 2)),
          border: borderIdle,
          enabledBorder: borderIdle,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: design.colors.blue.shade900,
              width: 1,
            ),
            borderRadius: borderRadius,
          ),
        ),
      ),
    );

    if (widget.label != null) {
      r = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label!,
            style: TextStyle(
              color: design.colors.gray.shade700,
              fontSize: labelSize,
              fontFamily: 'Adobe Clean',
            ),
          ),
          SizedBox(
            height: labelMargin,
          ),
          r,
        ],
      );
    }

    return r;
  }
}

enum TextFieldSize {
  small,
  medium,
  large,
  xlarge,
}

enum InputFieldType {
  text,
  url,
  phone,
  email,
  password,
}
