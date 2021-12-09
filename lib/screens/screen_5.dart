import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen5 extends StatelessWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
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
            SizedBox(height: 13),
            Text('Forgot Password',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, letterSpacing: 2)),
            SizedBox(height: 40),
            Text("Enter the email address or mobile ",
                style: GoogleFonts.poppins(
                    fontSize: 16, letterSpacing: 1
                )),
            SizedBox(height: 10),
            Text("number you used to create your ",
                style: GoogleFonts.poppins(
                    fontSize: 16, letterSpacing: 1
                )),
            SizedBox(height: 10),
            Text("account and we will send you a link to ",
                style: GoogleFonts.poppins(
                    fontSize: 16, letterSpacing: 1
                )),
            SizedBox(height: 10),
            Text("reset your password",
                style: GoogleFonts.poppins(
                    fontSize: 16, letterSpacing: 1
                )),
            SizedBox(height: 40),
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
                    labelText: '         Email/Mobile No',
                    labelStyle: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffC60302),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                onPressed: () => null,
                child: Text('Send Link', style: GoogleFonts.poppins(
                    color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold, letterSpacing: 1),),
              ),
            ),
            SizedBox(height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? ",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: () => null,
                  child: Text('Register',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
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
