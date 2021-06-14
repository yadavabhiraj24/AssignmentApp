import 'package:flutter/material.dart';
import 'package:jio_assignment/leave_application.dart';
import 'AttendanceScroll.dart';
import 'leaveApplication.dart';
import 'calendar.dart';
import 'calendar_holiday.dart';
import 'mainDrawer.dart';


void main() {
  var myapp = new MyApp();

  runApp(myapp);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.grey[190],
      ),
      home: MyHomePage(),
      initialRoute: '/',
      routes: {
        ApplyForLeave.routeName: (ctx) => ApplyForLeave(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool holidayCalendarScreen = false;
  bool applyLeaveScreen = false;
  bool calendarScreen = false;
  @override
  void initState() {
    holidayCalendarScreen = false;
    applyLeaveScreen = false;
    calendarScreen = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Leave & Attendance",
          style: TextStyle(fontSize: 18),
        ),
        backgroundColor: Colors.blue[700],
      ),
      drawer: MainDrawer(),
      body: Container(
        height: size.height,
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            AttendanceScrolling(),
            // ROW ENDS HERE
          
            SizedBox(
              height: 20,
            ),

            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // 1st Container
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        calendarScreen = !calendarScreen;
                      });
                    },
                    child: calendarScreen
                        ? Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "My Calendar",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 140),
                                Icon(
                                  Icons.arrow_drop_up_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        : Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "My Calendar",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 140),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                  ),
                  calendarScreen == true
                      ? Calendar()
                      : SizedBox(
                          height: 0,
                        ),
                  SizedBox(
                    height: 20,
                  ),

                  //  2nd Container///
                  
                  GestureDetector(
                    onTap: () {
                      
                      setState(() {
                        applyLeaveScreen = !applyLeaveScreen;
                      });
                    },
                    child: applyLeaveScreen
                        ? Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Apply Leave",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 140),
                                Icon(
                                  Icons.arrow_drop_up_sharp,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        : Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Apply Leave",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 140),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                  ),
                  applyLeaveScreen == true
                      ? ApplyLeave()
                      : SizedBox(
                          height: 0,
                        ),
                  SizedBox(
                    height: 20,
                  ),

                  // 3rd Container

                  GestureDetector(
                    onTap: () {
                      
                      setState(() {
                        holidayCalendarScreen = !holidayCalendarScreen;
                      });
                    },
                    child: holidayCalendarScreen
                        ? Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Holiday Calendar",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 90),
                                Icon(
                                  Icons.arrow_drop_up_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        : Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Holiday Calendar",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 90),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                  ),
                  holidayCalendarScreen == true
                      ? CalendarHoliday()
                      : SizedBox(
                          height: 0,
                        ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
