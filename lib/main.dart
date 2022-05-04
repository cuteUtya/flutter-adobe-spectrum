import 'package:adobe_spectrum/Components/button.dart';
import 'package:adobe_spectrum/spectrum_desing.dart';
import 'package:design_system_provider/desing_components.dart';
import 'package:design_system_provider/desing_provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Desing(
      desingSystem: Spectrum(
        theme: SpectrumTheme.light,
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
    return Container(
      color: Desing.of(context).colors.gray.shade50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                icon: Icons.done,
                onClick: () => print("click"),
              ),
              Button(
                label: "Action",
                onClick: () => print("click"),
                variant: ButtonVariant.primary,
              ),
              Button(
                label: "Action",
                onClick: () => print("click"),
                variant: ButtonVariant.secondary,
              ),
              Button(
                label: "Action",
                onClick: () => print("click"),
                variant: ButtonVariant.negative,
              ),
            ],
          ),
          Container(
            margin: Desing.of(context).layout.spacing100.left,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                label: "Action",
                onClick: () => print("click"),
                style: SpectrumButtonStyle.outline,
              ),
              Button(
                label: "Action",
                onClick: () => print("click"),
                variant: ButtonVariant.primary,
                style: SpectrumButtonStyle.outline,
              ),
              Button(
                label: "Action",
                onClick: () => print("click"),
                variant: ButtonVariant.secondary,
                style: SpectrumButtonStyle.outline,
              ),
              Button(
                label: "Action",
                onClick: () => print("click"),
                variant: ButtonVariant.negative,
                style: SpectrumButtonStyle.outline,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
