import 'package:flutter/material.dart';

class CalendarHoliday extends StatelessWidget {
  const CalendarHoliday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height;
    final maxWidth = MediaQuery.of(context).size.width;
    Widget TextStyleWideget(String head, String subhead) {
      return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          margin: EdgeInsets.only(left: 20),
          height: maxHeight * 0.12,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  head,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    subhead,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ))
            ],
          ));
    }

    return Container(
      padding: EdgeInsets.all(5),
      height: 300,
      width: 350,
      child: Card(
          elevation: 20,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextStyleWideget("15th August | Sun", "Independence Day"),
                Divider(
                  color: Colors.grey,
                ),
                TextStyleWideget("10th September | Fri", "Ganesh chaturthi"),
                Divider(
                  color: Colors.grey,
                ),
                TextStyleWideget("2nd October | Sat", "Gandhi Jayanti"),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(right: maxWidth - 200),
                  height: maxHeight * 0.07,
                  child: Text(
                    "See All Holidays",
                    style: TextStyle(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                )
              ],
            ),
          )),
    );
  }
}