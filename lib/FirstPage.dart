import 'package:coronaui/Models/cardModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class firstPage extends StatefulWidget {
  @override
  FirstPageState createState() => FirstPageState();
}

class FirstPageState extends State<firstPage> {
  ScrollController scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    List<CardModel> cards = new List<CardModel>();

    CardModel model = new CardModel(
        image: "assets/news.png", name: "News", color: Color(0xFF544DF3));
    cards.add(model);

    CardModel model2 = new CardModel(
        image: "assets/hospital.png",
        name: "Hospitals",
        color: Color(0xFFEA4A5A));
    cards.add(model2);

    CardModel model3 = new CardModel(
        image: "assets/education.png",
        name: "Education",
        color: Color(0xFFF4AC3A));
    cards.add(model3);

    return Scaffold(
      body: NestedScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          headerSliverBuilder: (context, bool isOpened) {
            return <Widget>[
              SliverList(
                delegate: SliverChildListDelegate([
                  CustomPaint(
                    painter: customPaint(),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.11,
                            left: MediaQuery.of(context).size.width * 0.38,
                            child: Image(
                              image: AssetImage('assets/Doctor.png'),
                              width: MediaQuery.of(context).size.width * 0.50,
                              height: MediaQuery.of(context).size.height * 0.2,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: MediaQuery.of(context).size.width * 0.1,
                            child: Image(
                              image: AssetImage('assets/Books.png'),
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: MediaQuery.of(context).size.height * 0.2,
                            ),
                          ),
                          Positioned(
                              top: MediaQuery.of(context).size.height * 0.17,
                              left: MediaQuery.of(context).size.width * 0.13,
                              child: Container(
                                height: 70,
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Text(
                                  "We will defeat Coronavirus",
                                  style: GoogleFonts.abel(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Color(0xFF3C2146)),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ],
                      ),
                    ),
                  )
                ]),
              )
            ];
          },
          body: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(color: Color(0xFFFDEFD9)),
                child: Align(
                  alignment: Alignment(0, -50),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                    child: Card(
                      elevation: 4,
                      color: Colors.white,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(top: 40, left: 20, right: 20),
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  child: Container(
                                    height: 100,
                                    decoration:
                                        BoxDecoration(color: Color(0xFFF5F5FE)),
                                    width: MediaQuery.of(context).size.width *
                                        0.95,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 20,
                                        ),
                                        ClipOval(
                                            child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Material(
                                            elevation: 7,
                                            color: Color(0xFF574FF5),
                                            shadowColor: Color(0xFF574FF5),
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/virus.png"),
                                            ),
                                          ),
                                        )),
                                        Container(
                                          height: 80,
                                          margin: EdgeInsets.only(
                                              left: 10, top: 10),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.58,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Lung Scan",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          Color(0xFF5C476B))),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                "Upload Your lung x-Ray scan and our AI will give you an immediate result  ",
                                                style: GoogleFonts.lato(
                                                  fontSize: 13,
                                                  color: Colors.grey[500],
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Icon(
                                            Icons.keyboard_arrow_right,
                                            size: 32,
                                            color: Colors.grey[500],
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                            SizedBox(height: 30),
                            Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: ListView.builder(
                                  itemCount: cards.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    CardModel card = cards[index];

                                    return Container(
                                      height: 150,
                                      width: 160,
                                      margin: EdgeInsets.only(right: 10),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        child: Card(
                                          elevation: 15,
                                          shadowColor: card.color,
                                          color: card.color,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image(
                                                image: AssetImage(card.image),
                                                width: 55,
                                                height: 65,
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Text(card.name,
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 18,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width,
                              child: ListTile(
                                title: Text("Trending Videos",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Colors.black)),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "More",
                                      style: GoogleFonts.lato(
                                          fontSize: 16,
                                          color: Colors.grey[500]),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.chevron_right,
                                        size: 18, color: Colors.grey[500])
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(top: 20, left: 20, right: 20),
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                    bottomRight: Radius.circular(25),
                                  ),
                                  child: Container(
                                      height: 100,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFF5F5FE)),
                                      width: MediaQuery.of(context).size.width *
                                          0.95,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image(
                                            image:
                                                AssetImage("assets/Nurse.png"),
                                            height: 100,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            fit: BoxFit.fill,
                                          ),
                                          Container(
                                            height: 90,
                                            margin: EdgeInsets.only(
                                                left: 10, top: 15),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Safety & Health Tips",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xFF5C476B))),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Text(
                                                  "Lorem Ipsum is a simple industry standard for printing & typesetting. Lorem Ipsum ",
                                                  style: GoogleFonts.lato(
                                                    fontSize: 13,
                                                    color: Colors.grey[500],
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ))),
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top: 10),
                              child: ListTile(
                                title: Text("Coronavirus Map",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Colors.black)),
                              ),
                            ),
                            Container(
                                height: 200,
                                width: MediaQuery.of(context).size.width * 0.95,
                                margin: EdgeInsets.only(
                                    top: 15, left: 10, right: 10),
                                child: Image(
                                  image: AssetImage("assets/map.png"),
                                  width:
                                      MediaQuery.of(context).size.width * 0.95,
                                  height: 200,
                                  fit: BoxFit.fill,
                                )),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top: 10),
                              child: ListTile(
                                title: Text("Today's Statistics",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Colors.black)),
                                subtitle: Text("October 22, 2021",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.grey)),
                              ),
                            ),
                            Container(
                                height: 30,
                                width: MediaQuery.of(context).size.width * 0.9,
                                margin: EdgeInsets.only(
                                    top: 30, left: 10, right: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: 28,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.55,
                                        child: Card(
                                            elevation: 2,
                                            color: Color(0xFFF4AC3A))),
                                    Container(
                                        height: 28,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        child: Card(
                                            elevation: 2,
                                            color: Color(0xFF5DC1A6))),
                                    Container(
                                        height: 28,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.10,
                                        child: Card(
                                            elevation: 2,
                                            color: Color(0xFFEA4A5A)))
                                  ],
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                height: 150,
                                width: MediaQuery.of(context).size.width * 0.9,
                                margin: EdgeInsets.only(
                                    top: 30, left: 20, right: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Active",
                                            style: GoogleFonts.lato(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.grey[500])),
                                        Spacer(),
                                        Text("8765",
                                            style: GoogleFonts.lato(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.grey[500])),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                            height: 20,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.10,
                                            child: Card(
                                                elevation: 2,
                                                color: Color(0xFFF4AC3A))),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Recovered",
                                            style: GoogleFonts.lato(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.grey[500])),
                                        Spacer(),
                                        Text("100",
                                            style: GoogleFonts.lato(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.grey[500])),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                            height: 20,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.10,
                                            child: Card(
                                                elevation: 2,
                                                color: Color(0xFF5DC1A6))),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Deaths",
                                            style: GoogleFonts.lato(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.grey[500])),
                                        Spacer(),
                                        Text("25",
                                            style: GoogleFonts.lato(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.grey[500])),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                            height: 20,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.10,
                                            child: Card(
                                                elevation: 2,
                                                color: Color(0xFFEA4A5A))),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
          )),
    );
  }
}

class customPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path background = Path();
    background.addRect(Rect.fromLTRB(0, 0, size.width, size.height));
    paint.color = Color(0xFFFDEFD9);
    canvas.drawPath(background, paint);

    Path leftTopOval = Path();
    leftTopOval.moveTo(size.width * 0.5, 10);
    leftTopOval.quadraticBezierTo(
        size.width * 0.5, size.height * 0.8, 0, size.height * 0.8);
    leftTopOval.lineTo(0, 0);
    leftTopOval.lineTo(size.width * 0.5, 0);
    leftTopOval.close();
    paint.color = Color(0xFFFADDAF);
    canvas.drawPath(leftTopOval, paint);

    var rightCircle = Offset(size.width - 30, size.height * 0.7);
    paint.color = Color(0xFFFADDAF);
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(rightCircle, 40, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
