// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:adobe_spectrum/Components/action_button.dart';
import 'package:adobe_spectrum/Components/action_group.dart';
import 'package:adobe_spectrum/Components/button.dart';
import 'package:adobe_spectrum/Components/text_field.dart';
import 'package:adobe_spectrum/spectrum_desing.dart';
import 'package:adobe_spectrum/spectrum_typography.dart';
import 'package:design_system_provider/desing_components.dart';
import 'package:design_system_provider/desing_provider.dart';
import 'package:flutter/material.dart';
import 'package:adobe_spectrum/Components/close_button.dart' as cls;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Row(children: [
      Flexible(
          child: Home(
        theme: SpectrumTheme.light,
      )),
      Flexible(
          child: Home(
        theme: SpectrumTheme.dark,
      )),
      Flexible(
          child: Home(
        theme: SpectrumTheme.darkest,
      )),
    ])));
  }
}

class Home extends StatelessWidget {
  const Home({Key? key, required this.theme}) : super(key: key);
  final SpectrumTheme theme;
  @override
  Widget build(BuildContext context) {
    return Desing(
      desingSystem: Spectrum(
        theme: theme,
      ),
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: Preview(),
      ),
    );
  }
}

class Preview extends StatefulWidget {
  const Preview({Key? key}) : super(key: key);

  @override
  State<Preview> createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  @override
  Widget build(BuildContext context) {
    List<ActionItem> items = [
      ActionItem(icon: Icons.edit, label: 'edit'),
      ActionItem(icon: Icons.copy, label: 'copy'),
      ActionItem(icon: Icons.delete, label: 'delete'),
    ];
    return Container(
      color: Desing.of(context).colors.gray.shade50,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdobeButton(
              label: 'button',
            ),
            AdobeButton(
              label: 'button',
              icon: Icons.style,
            ),
            AdobeButton(
              label: 'button',
              style: SpectrumButtonStyle.outline,
            ),
            AdobeButton(
              label: 'button',
              icon: Icons.style,
              style: SpectrumButtonStyle.outline,
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdobeButton(
              label: 'button',
              variant: ButtonVariant.negative,
            ),
            AdobeButton(
              label: 'button',
              icon: Icons.style,
              variant: ButtonVariant.negative,
            ),
            AdobeButton(
              label: 'button',
              style: SpectrumButtonStyle.outline,
              variant: ButtonVariant.negative,
            ),
            AdobeButton(
              label: 'button',
              icon: Icons.style,
              style: SpectrumButtonStyle.outline,
              variant: ButtonVariant.negative,
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdobeButton(
              label: 'button',
              variant: ButtonVariant.primary,
            ),
            AdobeButton(
              label: 'button',
              icon: Icons.style,
              variant: ButtonVariant.primary,
            ),
            AdobeButton(
              label: 'button',
              style: SpectrumButtonStyle.outline,
              variant: ButtonVariant.primary,
            ),
            AdobeButton(
              label: 'button',
              icon: Icons.style,
              style: SpectrumButtonStyle.outline,
              variant: ButtonVariant.primary,
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdobeButton(
              label: 'button',
              variant: ButtonVariant.secondary,
            ),
            AdobeButton(
              label: 'button',
              icon: Icons.style,
              variant: ButtonVariant.secondary,
            ),
            AdobeButton(
              label: 'button',
              style: SpectrumButtonStyle.outline,
              variant: ButtonVariant.secondary,
            ),
            AdobeButton(
              label: 'button',
              icon: Icons.style,
              style: SpectrumButtonStyle.outline,
              variant: ButtonVariant.secondary,
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdobeButton(
              label: 'button',
              isDisabled: true,
            ),
            AdobeButton(
              label: 'button',
              icon: Icons.style,
              isDisabled: true,
            ),
            AdobeButton(
              label: 'button',
              style: SpectrumButtonStyle.outline,
              isDisabled: true,
            ),
            AdobeButton(
              label: 'button',
              icon: Icons.style,
              style: SpectrumButtonStyle.outline,
              isDisabled: true,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ActionButton(
              label: 'button'..toString(),
              groupPosition: GroupPosition.start,
            ),
            ActionButton(
              label: 'button',
              isQuiet: true,
              groupPosition: GroupPosition.center,
            ),
            ActionButton(
              label: 'button',
              isSelected: true,
              groupPosition: GroupPosition.center,
            ),
            ActionButton(
              label: 'button',
              isEmphasized: true,
              groupPosition: GroupPosition.center,
            ),
            ActionButton(
              label: 'button',
              isDisabled: true,
              groupPosition: GroupPosition.end,
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ActionButton(
              label: 'button'.toString(),
              groupPosition: GroupPosition.start,
              icon: Icons.camera,
            ),
            ActionButton(
              label: 'button',
              isQuiet: true,
              groupPosition: GroupPosition.center,
              icon: Icons.camera,
            ),
            ActionButton(
              label: 'button',
              isEmphasized: true,
              groupPosition: GroupPosition.center,
              icon: Icons.camera,
            ),
            ActionButton(
              label: 'button',
              isDisabled: true,
              groupPosition: GroupPosition.end,
              icon: Icons.camera,
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ActionGroup(
              items: items,
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ActionGroup(
              items: items,
              isEmphasis: true,
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ActionGroup(
              items: items,
              isDisabled: true,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cls.CloseButton(),
            cls.CloseButton(
              isEmphasized: true,
            ),
            cls.CloseButton(
              isDisabled: true,
            ),
          ],
        ),
      ]),
    );
  }
}
