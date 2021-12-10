import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen10 extends StatelessWidget {
  const Screen10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text('5.0', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Image.asset('assets/star.png', scale: 0.7,),
                      SizedBox(width: 3),
                      Image.asset('assets/star.png', scale: 0.7,),
                      SizedBox(width: 3),
                      Image.asset('assets/star.png', scale: 0.7,),
                      SizedBox(width: 3),
                      Image.asset('assets/star.png', scale: 0.7,),
                      SizedBox(width: 3),
                      Image.asset('assets/star.png', scale: 0.7,),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('(1002)', style: TextStyle(color: Colors.grey),)
                ],
              ),
              SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: 4,
                    color: Color(0xffFFB806),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 200,
                    height: 4,
                    color: Colors.grey[400],
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 200,
                    height: 4,
                    color: Colors.grey[400],
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 200,
                    height: 4,
                    color: Colors.grey[400],
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 200,
                    height: 4,
                    color: Colors.grey[400],
                  ),
                  SizedBox(height: 15),
                ],
              )
            ],
          ),
          SizedBox(height: 20),
          Text('Rate and Review', style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),),
          SizedBox(height: 10,),
          Text('Share Your Experience To Help Others',
            style: GoogleFonts.poppins(fontSize: 15, color: Colors.black54),),
          SizedBox(height: 20),
          Row(
            children: [
              Image.asset('assets/star-6.png', scale: 0.7,),
              SizedBox(width: 15),
              Image.asset('assets/star-6.png', scale: 0.7,),
              SizedBox(width: 15),
              Image.asset('assets/star-6.png', scale: 0.7,),
              SizedBox(width: 15),
              Image.asset('assets/star-6.png', scale: 0.7,),
              SizedBox(width: 15),
              Image.asset('assets/star-6.png', scale: 0.7,),
              SizedBox(width: 15),
            ],
          ),
          SizedBox(height: 20),
          Text('Others Review', style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),),
          SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.fromLTRB(6, 10, 6, 20),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/account.png'),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text('Customer', style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                            SizedBox(height: 8,),
                            Text('24 mins ago', style: GoogleFonts.poppins(fontSize: 10),),
                          ],
                        ),
                        SizedBox(width: 80),
                        Row(
                          children: [
                            SizedBox(height: 50),
                            Image.asset('assets/star.png', scale: 1.3,),
                            SizedBox(width: 5),
                            Image.asset('assets/star.png', scale: 1.3,),
                            SizedBox(width: 5),
                            Image.asset('assets/star.png', scale: 1.3,),
                            SizedBox(width: 5),
                            Image.asset('assets/star.png', scale: 1.3,),
                            SizedBox(width: 5),
                            Image.asset('assets/star.png', scale: 1.3,),
                            SizedBox(width: 5),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do',
                      style: GoogleFonts.poppins(fontSize: 10),),
                    SizedBox(height: 8,),
                    Text('eiusmod tempor incididunt ut ero labore et dolore magna aliqua.',
                      style: GoogleFonts.poppins(fontSize: 10),),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/Icon awesome-thumbs-up-1.png'),
                        SizedBox(width: 8),
                        Text('24', style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                        SizedBox(width: 15),
                        Image.asset('assets/Icon awesome-thumbs-up.png'),
                        SizedBox(width: 8),
                        Text('4', style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              );
            },
          )
        ],
      )
    );
  }
}
