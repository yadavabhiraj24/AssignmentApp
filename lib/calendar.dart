import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height;
    final maxWidth = MediaQuery.of(context).size.width;
    void datePicker() {
      showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2021),
          lastDate: DateTime.now());
    }

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(5),
        height: maxHeight * 0.6,
        width: 350,
        child: Card(
          elevation: 20,
          child: SingleChildScrollView(
            child: Center(
              child: TableCalendar(
                  calendarStyle: CalendarStyle(
                    weekendTextStyle: TextStyle(
                      color: Colors.blue[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  focusedDay: DateTime.now(),
                  firstDay: DateTime(2015),
                  lastDay: DateTime(2030)),
            ),
          ),
        ),
      ),
    );
  }
}