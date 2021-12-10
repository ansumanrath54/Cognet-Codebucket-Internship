import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen11 extends StatefulWidget {
  const Screen11({Key? key}) : super(key: key);

  @override
  State<Screen11> createState() => _Screen11State();
}

class _Screen11State extends State<Screen11> {

  List _images = [
    'assets/getty_80116649_344560.png',
    'assets/hair-5473078_960_720.png',
    'assets/getty_-1.png',
    'assets/getty_-2.png',
    'assets/getty_-3.png',
    'assets/getty_-4.png',
    'assets/getty_-5.png',
    'assets/getty_80116649_344560.png',
    'assets/hair-5473078_960_720.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 430,
      child: GridView.count(
        physics: ScrollPhysics(),

        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 20,
        children: List.generate(_images.length, (index) {
          return Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey)
            ),
            child: Column(
              children: [
                //SizedBox(height: ,),
                Image.asset('${_images[index]}'),
                SizedBox(height: 5),
                Text('Service Name', style: GoogleFonts.poppins(),),
                SizedBox(height: 5),
                Text('Rs.100', style: GoogleFonts.poppins(),),
              ],
            ),
          );
        }),
      ),
    );
  }
}
