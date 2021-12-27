import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen19 extends StatelessWidget {
  const Screen19({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Colors.grey[100],
            leading: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image.asset('assets/Group 16979.png'),
            ),
            flexibleSpace: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 50),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/man.png'),
                    ),
                    SizedBox(width: 10),
                    Text('John Cena', style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600),),
                    SizedBox(width: 70),
                    IconButton(
                      onPressed: () => null,
                      icon: Image.asset('assets/phone-7.png'),
                    ),
                    IconButton(
                      onPressed: () => null,
                      icon: Image.asset('assets/Icon feather-menu.png'),
                    ),
                    SizedBox(width: 10)
                  ],
                ),
              ),
            ),
          )
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Yesterday', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 15),),
                  ],
                ),
                SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(0, 3),
                            ),
                          ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: 125,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage('assets/a-1.png'),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),
                                SizedBox(width: 25),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Jasmin', style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w500),),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Image.asset('assets/location-10.png'),
                                        SizedBox(width: 5),
                                        Text('ittanagar, Kanpur', style: GoogleFonts.poppins(),)
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text('Age - 25', style: GoogleFonts.poppins(fontWeight: FontWeight.w500),),
                                        SizedBox(width: 20),
                                        Text("5'7'' Height", style: GoogleFonts.poppins(fontWeight: FontWeight.w500),),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30), bottomRight: Radius.circular(30))
                            ),
                            padding: EdgeInsets.fromLTRB(30, 15, 111, 15),
                            child: Text('I need info regarding this profile', style: GoogleFonts.poppins(),),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('10.53 AM', style: TextStyle(color: Colors.grey),)
                  ],
                ),
                SizedBox(height: 70),
                Row(
                  children: [
                    SizedBox(width: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                          decoration: BoxDecoration(
                            color: Color(0xffFFB806),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30), bottomLeft: Radius.circular(30))
                          ),
                          child: Text('What Type of information you need?', style: GoogleFonts.poppins(color: Colors.white),),
                        ),
                        SizedBox(height: 20),
                        Text('10.45 AM', style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 550,
              child: Container(
                child: Row(
                  children: [
                    Image.asset('assets/Icon material-keyboard-voice.png', color: Colors.black,),
                    SizedBox(width: 10),
                    Image.asset('assets/attachment-1.png', color: Colors.black, scale: 0.8,),
                    SizedBox(width: 5),
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 10, 15, 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey.withOpacity(0.5),
                          //     spreadRadius: 2,
                          //     blurRadius: 3,
                          //     offset: Offset(0, 3),
                          //   ),
                          // ]
                      ),
                      child: Row(
                        children: [
                          Text('Write a message...', style: TextStyle(color: Colors.grey),),
                          SizedBox(width: 80),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xffC60302),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset('assets/icn_send.png', color: Colors.white, scale: 0.7,),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       title: null,
      //       label: '',
      //       icon: Image.asset('assets/Icon material-keyboard-voice.png', color: Colors.black,)
      //     ),
      //     BottomNavigationBarItem(
      //       title: null,
      //         label: '',
      //         icon: Image.asset('assets/attachment-1.png', color: Colors.black, scale: 0.8,)
      //     ),
      //   ],
      // ),
    );
  }
}
