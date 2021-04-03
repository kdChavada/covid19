import 'package:covid19/Repository/worddata.dart';
import 'package:covid19/UI/CountryPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'FAQPage.dart';

class WelCome extends StatefulWidget {
  @override
  _WelComeState createState() => _WelComeState();
}

class _WelComeState extends State<WelCome> {
  WorldData _worldData = WorldData();

  @override
  void initState() {
    _worldData.getWorldData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: _worldData.getWorldData(),
        builder: (context, v) {
          return v.data == null
              ? Container(
                  child: Image(
                    image: AssetImage('assets/images/covid-cells.jpg'),
                    fit: BoxFit.cover,
                    height: h,
                    width: w,
                  ),
                )
              : Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            child: Image(
                              image:
                                  AssetImage("assets/images/covid-cells.jpg"),
                              height: 100,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 30.0),
                          child: Center(
                            child: Text(
                              "COVID-19",
                              style: GoogleFonts.russoOne(
                                  color: Colors.white,
                                  fontSize: 42,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7.0, vertical: 10.0),
                              width: w,
                              height: h * 0.12,
                              color: Color(0xfffce7c2),
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "Nothing in life is to be feared, it is only to be understood. Now is the time to understand more, so that we may fear loss",
                                    style: GoogleFonts.monda(
                                      color: Color(0xfff17c42),
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7.0, vertical: 10.0),
                              child: Text(
                                "World wide",
                                style: GoogleFonts.audiowide(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: h * 0.2,
                                    width: w * 0.5,
                                    child: Card(
                                      color: Color(0xfff8cdd1),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "CONFIRMED",
                                            style: GoogleFonts.yesevaOne(
                                                color: Color(0xffb82a26),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            "${v.data['cases']}",
                                            style: GoogleFonts.yesevaOne(
                                                color: Color(0xffb82a26),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: h * 0.2,
                                    width: w * 0.5,
                                    child: Card(
                                      color: Color(0xffbbdefb),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "ACTIVE",
                                            style: GoogleFonts.yesevaOne(
                                                color: Color(0xff3267b4),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            "${v.data['active']}",
                                            style: GoogleFonts.yesevaOne(
                                                color: Color(0xff3267b4),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: h * 0.2,
                                    width: w * 0.5,
                                    child: Card(
                                      color: Color(0xffc8e6c9),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "RECOVERED",
                                            style: GoogleFonts.yesevaOne(
                                                color: Color(0xff538652),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            "${v.data['recovered']}",
                                            style: GoogleFonts.yesevaOne(
                                                color: Color(0xff538652),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: h * 0.2,
                                    width: w * 0.5,
                                    child: Card(
                                      color: Color(0xff9e9e9e),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "DEATHS",
                                            style: GoogleFonts.yesevaOne(
                                                color: Color(0xff5c5c5c),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            "${v.data['deaths']}",
                                            style: GoogleFonts.yesevaOne(
                                                color: Color(0xff5c5c5c),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CountryPage()));
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 7.0, vertical: 10.0),
                                height: h * 0.1,
                                width: w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        Colors.orange,
                                        Colors.white,
                                        Colors.green
                                      ],
                                    )),
                                child: Center(
                                  child: Text(
                                    "Most Affected Countries",
                                    style: GoogleFonts.audiowide(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7.0, vertical: 10.0),
                              child: Text(
                                "COVID 19 DAILY UPDATE",
                                style: GoogleFonts.playball(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.0, vertical: 10.0),
                                        child: Text(
                                          "Updated  : ",
                                          style: GoogleFonts.keaniaOne(
                                              fontSize: 22.0,
                                              color: Colors.indigo,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.0, vertical: 10.0),
                                        child: Text(
                                          "${v.data['updated']}",
                                          style: GoogleFonts.keaniaOne(
                                              fontSize: 18.0,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.0, vertical: 10.0),
                                        child: Text(
                                          "ToDayCases : ",
                                          style: GoogleFonts.keaniaOne(
                                              fontSize: 22.0,
                                              color: Colors.indigo,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.0, vertical: 10.0),
                                        child: Text(
                                          "${v.data['todayCases']}",
                                          style: GoogleFonts.keaniaOne(
                                              fontSize: 18.0,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.0, vertical: 10.0),
                                        child: Text(
                                          "ToDayDeaths : ",
                                          style: GoogleFonts.keaniaOne(
                                              fontSize: 22.0,
                                              color: Colors.indigo,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.0, vertical: 10.0),
                                        child: Text(
                                          "${v.data['todayDeaths']}",
                                          style: GoogleFonts.keaniaOne(
                                              fontSize: 18.0,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.0, vertical: 10.0),
                                        child: Text(
                                          "ToDayRecovered : ",
                                          style: GoogleFonts.keaniaOne(
                                              fontSize: 22.0,
                                              color: Colors.indigo,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.0, vertical: 10.0),
                                        child: Text(
                                          "${v.data['todayRecovered']}",
                                          style: GoogleFonts.keaniaOne(
                                              fontSize: 18.0,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.0, vertical: 10.0),
                                        child: Text(
                                          "Critical : ",
                                          style: GoogleFonts.keaniaOne(
                                              fontSize: 22.0,
                                              color: Colors.indigo,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.0, vertical: 10.0),
                                        child: Text(
                                          "${v.data['critical']}",
                                          style: GoogleFonts.keaniaOne(
                                              fontSize: 18.0,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.0, vertical: 10.0),
                                        child: Text(
                                          "Tests : ",
                                          style: GoogleFonts.keaniaOne(
                                              fontSize: 22.0,
                                              color: Colors.indigo,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.0, vertical: 10.0),
                                        child: Text(
                                          "${v.data['tests']}",
                                          style: GoogleFonts.keaniaOne(
                                              fontSize: 18.0,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.0, vertical: 10.0),
                                        child: Text(
                                          "Tests : ",
                                          style: GoogleFonts.keaniaOne(
                                              fontSize: 22.0,
                                              color: Colors.indigo,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.0, vertical: 10.0),
                                        child: Text(
                                          "${v.data['tests']}",
                                          style: GoogleFonts.keaniaOne(
                                              fontSize: 18.0,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: h,
                              child: FAQ(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }
}

// FutureBuilder(
// future: _worldData.getWorldData(),
// builder: (context, v) {
// return Text("${v.data['updated']}");
// }),
