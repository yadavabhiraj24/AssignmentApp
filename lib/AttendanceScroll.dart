import 'package:flutter/material.dart';

class AttendanceScrolling extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              // ROW STARTS HERE
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: categoryHeight,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        margin: EdgeInsets.only(top: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            
                            children: [
                              Text(
                                "Absent days for Current & last month -",
                                style: TextStyle(
                                    fontSize: 12.3,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 36),
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.home,
                                  color: Colors.white,
                                  size: 32,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: categoryHeight,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        margin: EdgeInsets.only(top: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: [
                              Text(
                                "Leave & Regularization History    -",
                                style: TextStyle(
                                    fontSize: 12.3,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 36),
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.timer_outlined,
                                  color: Colors.white,
                                  size: 32,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: categoryHeight,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        margin: EdgeInsets.only(top: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: [
                              Text(
                                "Time report -            Team              -",
                                style: TextStyle(
                                    fontSize: 12.3,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 45),
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.people_alt_outlined,
                                  color: Colors.white,
                                  size: 32,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
  }
}