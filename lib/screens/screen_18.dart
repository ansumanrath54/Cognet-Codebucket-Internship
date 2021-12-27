import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen18 extends StatefulWidget {
  const Screen18({Key? key}) : super(key: key);

  @override
  State<Screen18> createState() => _Screen18State();
}

class _Screen18State extends State<Screen18> {

  List names = ['Aaarthi', 'Aaslin', 'Ashok', 'Amash', 'Angelo Tamos', 'Angelo Tamos', 'John Antony', 'Samson'];
  List gender = ['Female', 'Male', 'Male', 'Female', 'Male', 'Male', 'Male', 'Male',];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        physics: ScrollPhysics(),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/man.png'),
                    ),
                    SizedBox(width: 13),
                    SizedBox(
                      child: Text('${names[index]}', style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                      width: 110,
                    ),
                    SizedBox(width: 60),
                    SizedBox(
                        child: Text('${gender[index]}', style: GoogleFonts.poppins(fontWeight: FontWeight.w400),),
                    width: 60,),
                    SizedBox(width: 9),
                    Text('Message', style: GoogleFonts.poppins(color: Color(0xffFFB806), fontWeight: FontWeight.w600),)
                  ],
                ),
                SizedBox(height: 10,),
                Divider(thickness: 1,)
              ],
            ),
          );
        },
      ),
    );
  }
}
