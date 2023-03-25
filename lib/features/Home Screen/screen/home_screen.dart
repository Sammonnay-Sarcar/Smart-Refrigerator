import 'package:flutter/material.dart';
import 'package:knob_widget/knob_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double _minValue = 0;
  final double _maxValue = 100;
  final double _optimalValue = 50;

  late KnobController _knobController;
  late double _knobValue;
  void valueChangedListener(double value) {
    if (mounted) {
      setState(() {
        _knobValue = value;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _knobValue = _minValue;
    _knobController = KnobController(
        initial: _knobValue,
        minimum: _minValue,
        maximum: _maxValue,
        startAngle: -50,
        endAngle: 230,
        precision: 2);
    _knobController.addOnValueChangedListener(valueChangedListener);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Knob(
        controller: _knobController,
        width: 200,
        height: 200,
        style: KnobStyle(
            labelStyle: Theme.of(context).textTheme.bodyLarge,
            tickOffset: 5,
            labelOffset: 10,
            minorTicksPerInterval: 10,
            showMinorTickLabels: true),
      ),
    ));
  }

  @override
  void dispose() {
    _knobController.removeOnValueChangedListener(valueChangedListener);
    super.dispose();
  }
}
