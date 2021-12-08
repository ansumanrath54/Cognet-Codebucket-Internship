import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

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
            Text('Welcome Back!',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, letterSpacing: 2)),
            SizedBox(height: 40),
            Text("Let's Connect with Our Community",
                style: GoogleFonts.poppins(
                  fontSize: 18, letterSpacing: 1
                )),
            SizedBox(height: 30),
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
                    labelText: '  Mobile Number or Email Id',
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
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forgot Password?', style: GoogleFonts.poppins(
                  fontSize: 15, color: Color(0xffFFB806), fontWeight: FontWeight.bold
                ),),
              ],
            ),
            SizedBox(height: 35),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffC60302),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                onPressed: () => null,
                child: Text('Login', style: GoogleFonts.poppins(
                    color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold, letterSpacing: 1),),
              ),
            ),
            SizedBox(height: 120),
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
