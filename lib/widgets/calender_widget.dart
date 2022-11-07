import 'package:flutter/material.dart';

class CalenderWidget extends StatefulWidget {
  const CalenderWidget({super.key});

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      child: const Center(
        child: Text("Calender"),
      ),
    );
  }
}
