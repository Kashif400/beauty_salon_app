import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: TableCalendar(
          availableGestures: AvailableGestures.horizontalSwipe,
          headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            leftChevronIcon: Icon(Icons.chevron_left),
            rightChevronIcon: Icon(Icons.chevron_right),
            headerMargin: EdgeInsets.symmetric(vertical: 8.0),
            formatButtonDecoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          formatAnimationCurve: Curves.linear,
          focusedDay: today,
          firstDay: DateTime.utc(2010, 10, 17),
          lastDay: DateTime(2030, 10, 16)),
    ));
  }
}
