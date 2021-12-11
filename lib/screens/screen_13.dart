import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen13 extends StatelessWidget {
  const Screen13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Category', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16),),
          SizedBox(height: 10),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              physics: ScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Image.asset('assets/iconaddphoto.png', color: Color(0xffFFB806), scale: 3,),
                    SizedBox(width: 10),
                    Text('Name Of The Service', style: GoogleFonts.poppins(),),
                    SizedBox(height: 40)
                  ],
                );
              },
            ),
          )
        ],
      ),
      margin: EdgeInsets.all(20),
    );
  }
}
