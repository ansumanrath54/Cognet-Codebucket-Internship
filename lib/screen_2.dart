import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/IMG-20211116-WA0031.png'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(height: 10),
            Text('Business Profile',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Form(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[300],
                    ),
                    child: TextFormField(
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(fontSize: 11.0),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: '       Company Logo',
                          labelStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffFFB806),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                'assets/export-12.png',
                                color: Colors.white,
                              ),
                            ), // icon is 48px widget.
                          ),
                        )),
                  ),
                  SizedBox(height: 35),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[300],
                    ),
                    child: TextFormField(
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(fontSize: 11.0),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: '       Company Name',
                          labelStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(height: 35),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[300],
                    ),
                    child: TextFormField(
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(fontSize: 11.0),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: '       Business Category',
                          labelStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffFFB806),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                'assets/arrow-down.png',
                                color: Colors.white,
                              ),
                            ), // icon is 48px widget.
                          ),
                        )),
                  ),
                  SizedBox(height: 35),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[300],
                    ),
                    child: TextFormField(
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(fontSize: 11.0),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: '       Designation',
                          labelStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(height: 35),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[300],
                    ),
                    child: TextFormField(
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(fontSize: 11.0),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: '       Website',
                          labelStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(height: 35),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[300],
                    ),
                    child: TextFormField(
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(fontSize: 11.0),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: '       Work Address',
                          labelStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffFFB806),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                'assets/location.png',
                                color: Colors.white,
                              ),
                            ), // icon is 48px widget.
                          ),
                        )),
                  ),
                  SizedBox(height: 35),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[300],
                    ),
                    child: TextFormField(
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(fontSize: 11.0),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: '       Connect With Me',
                          labelStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 2, 90, 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextButton(
                          onPressed: () => null,
                          child: Text('Previous', style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 17, letterSpacing: 1),),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(50, 2, 50, 2),
                        decoration: BoxDecoration(
                          color: Color(0xffC60302),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextButton(
                          onPressed: () => null,
                          child: Text('Next', style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold, letterSpacing: 1),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

