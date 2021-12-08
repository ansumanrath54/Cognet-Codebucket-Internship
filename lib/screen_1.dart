import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int? val = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
            Text('Welcome!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text("Let's Connect with Our Community",
                style: GoogleFonts.poppins(
                  fontSize: 17,
                )),
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
                          labelText: '  User Name',
                          labelStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffFFB806),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                'assets/bottom/vuesax-outline-user.png',
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
                          labelText: '  Mobile Number',
                          labelStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffFFB806),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                'assets/call-1.png',
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
                          labelText: '  E-Mail id',
                          labelStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffFFB806),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(Icons.email_outlined,
                                  color: Colors.white),
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
                          labelText: '  Community',
                          labelStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffFFB806),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                'assets/vuesax-outline-profile-2user.png',
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
                          labelText: '       Proof Id',
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
                          labelText: '       Country',
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
                          labelText: '       State of Origin',
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
                          labelText: '       Native Of',
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
                          labelText: '       Select Caste',
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
                          labelText: '       Sub Caste (if Any)',
                          labelStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 5),
                      Text(
                        'Do you have Referral Code?',
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value as int?;
                          });
                        },
                        activeColor: Colors.red,
                      ),
                      Text(
                        'Yes',
                        style: GoogleFonts.poppins(fontSize: 15),
                      ),
                      SizedBox(width: 30),
                      Radio(
                        value: 2,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value as int?;
                          });
                        },
                        activeColor: Colors.red,
                      ),
                      Text(
                        'No',
                        style: GoogleFonts.poppins(fontSize: 15),
                      ),
                    ],
                  ),
                  val == 1
                      ? Column(
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
                                    labelText: '       Referral Code',
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.all(0.0),
                                      child: Container(
                                        height: 5,
                                        margin:
                                            EdgeInsets.fromLTRB(0, 4, 10, 4),
                                        decoration: BoxDecoration(
                                            color: Color(0xffC60302),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        child: TextButton(
                                          onPressed: () => null,
                                          child: Text('      Check      ',
                                              style: GoogleFonts.poppins(
                                                  color: Colors.white)),
                                        ),
                                      ),
                                    ),
                                    labelStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
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
                                    labelText: '  Referral Name',
                                    labelStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffFFB806),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Image.asset(
                                          'assets/bottom/vuesax-outline-user.png',
                                          color: Colors.white,
                                        ),
                                      ), // icon is 48px widget.
                                    ),
                                  )),
                            ),
                          ],
                        )
                      : SizedBox(height: 0),
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
                          labelText: '  Password',
                          labelStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffFFB806),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                'assets/key.png',
                                color: Colors.white,
                              ),
                            ), // icon is 48px widget.
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffC60302),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                onPressed: () => null,
                child: Text('Register', style: GoogleFonts.poppins(
                    color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1),),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already Have an account? ',
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: () => null,
                  child: Text('Login',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffC60302))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
