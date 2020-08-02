import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:share/share.dart';
import '../seting_screen_details/about_app.dart';
import '../seting_screen_details/conected_with_me.dart';
import '../seting_screen_details/ask_replaye.dart';
import '../seting_screen_details/seyasa.dart';
import '../seting_screen_details/terms.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Lost Of People"),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: new Center(
              child: Column(
            children: <Widget>[
              SizedBox(height: 15.0),
              Container(
                  height: 50.0,
                  width: 280.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.blueAccent,
                    color: Colors.blue,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new Tearms()));
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.assignment,
                            color: Colors.white,
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 90.0),
                              child: Text(
                                ' الشروط والأحكام',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Montserrat'),
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(height: 15.0),
              Container(
                  height: 50.0,
                  width: 280.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.blueAccent,
                    color: Colors.blue,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new AboutPage()));
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 90.0),
                              child: Text(
                                ' اتصل بنا',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Montserrat'),
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(height: 15.0),
              Container(
                  height: 50.0,
                  width: 280.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    shadowColor: Colors.blueAccent,
                    color: Colors.blue,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => new Ask()));
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.question_answer,
                            color: Colors.white,
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 90.0),
                              child: Text(
                                'الأسئله المتكرره',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Montserrat'),
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(height: 15.0),
              Container(
                  height: 50.0,
                  width: 280.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    shadowColor: Colors.blueAccent,
                    color: Colors.blue,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new Seyasa()));
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.forward,
                            color: Colors.white,
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 90.0),
                              child: Text(
                                ' سياسة الخصوصيه',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Montserrat'),
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(height: 15.0),
              Container(
                  height: 50.0,
                  width: 280.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    shadowColor: Colors.blueAccent,
                    color: Colors.blue,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){
                        Share.share('text');
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 90.0),
                              child: Text(
                                'شارك التطبيق',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Montserrat'),
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(height: 15.0),
              Container(
                  height: 50.0,
                  width: 280.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    shadowColor: Colors.blueAccent,
                    color: Colors.blue,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new   AboutApp()));
                      },

                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.add_to_home_screen,
                            color: Colors.white,
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 90.0),
                              child: Text(
                                ' عن التطبيق',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Montserrat'),
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),

//
            ],
          )),
        ));
  }
}
