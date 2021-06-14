import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'applicationScreen.dart';

class ApplyLeave extends StatelessWidget {
  const ApplyLeave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height;
    final maxWidth = MediaQuery.of(context).size.width;
    String now = DateFormat.yMd().format(DateTime.now());
    //CREATING WIDGET TO REUSE AGAIN;
    Widget TextStyleWideget(String head, String subhead, String date) {
      return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          margin: EdgeInsets.only(left: 20),
          height: maxHeight * 0.20,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  head,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  subhead,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      date,
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(ApplyForLeave.routeName);
                      },
                      child: Text("APPLY",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 19,
                              color: Colors.blue[700])))
                ],
              ),
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
                TextStyleWideget(
                  "CL/Contigency Leave",
                  "6.0 Remaining",
                  "Valid Till : " + now,
                ),
                Divider(
                  color: Colors.grey,
                ),
                TextStyleWideget(
                  "Optional Holiday",
                  "3.0 Remaining",
                  "Valid Till : " + now,
                ),
                Divider(
                  color: Colors.grey,
                ),
                TextStyleWideget(
                  "Special Privilege Leave",
                  "10.0 Remaining",
                  "Valid Till : " + now,
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(right: maxWidth - 150),
                  height: maxHeight * 0.05,
                  child: Text(
                    "See More",
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
