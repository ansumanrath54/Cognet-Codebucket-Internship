import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

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
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Connected world-pana.png'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(height: 30),
            Text('Please Wait admin Will Approve to login into your Marwadi Community',
              style: GoogleFonts.poppins(
                fontSize: 17
            ),),
            SizedBox(height: 60),
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
          ],
        ),
      ),
    );
  }
}
