import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'FirstPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Corona App UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05, bottom: 10),
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            child: Image(
              image: AssetImage(
                "assets/patient.png",
              ),
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Am I Infected with the Coronavirus ?",
                  style: GoogleFonts.raleway(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.1,
                        right: MediaQuery.of(context).size.width * 0.1),
                    child: Text(
                      "Upload Your Lung X-Ray scan and let our app examine your case",
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    )),
                Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.02,
                        right: MediaQuery.of(context).size.width * 0.02,
                        top: 40),
                    child: MaterialButton(
                        onPressed: () {},
                        color: Colors.lightBlue[50],
                        height: 40,
                        minWidth: MediaQuery.of(context).size.width * 0.5,
                        elevation: 0,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Spacer(),
                            Text(
                              "Phone Number",
                              style: GoogleFonts.lato(
                                  fontSize: 16, color: Colors.grey[500]),
                            ),
                            Spacer(),
                            Icon(
                              Icons.phone_android,
                              size: 16,
                              color: Colors.grey[500],
                            )
                          ],
                        ))),
                Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.02,
                        right: MediaQuery.of(context).size.width * 0.02,
                        top: 15),
                    child: MaterialButton(
                        onPressed: () {},
                        color: Colors.deepPurpleAccent[400],
                        height: 40,
                        minWidth: MediaQuery.of(context).size.width * 0.9,
                        elevation: 2,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Verification Code",
                              style: GoogleFonts.lato(
                                  fontSize: 16, color: Colors.white70),
                            ),
                          ],
                        ))),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 30,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => firstPage(),
                          ));
                    },
                    child: Text(
                      "Skip",
                      style: GoogleFonts.lato(
                          fontSize: 14, color: Colors.grey[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
