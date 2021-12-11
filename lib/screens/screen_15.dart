import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen15 extends StatelessWidget {
  const Screen15({Key? key}) : super(key: key);

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
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5,),
              Center(
                child: Text('Enquiry Details',
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () => null,
              icon: Image.asset('assets/notification.png'),
            ),
            IconButton(
              onPressed: () => null,
              icon: Image.asset('assets/bottom/vuesax-outline-user.png', color: Colors.black,),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(height: 25,),
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
                    labelText: '  Ac Repair',
                    labelStyle: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFB806),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.business_outlined,
                          color: Colors.white70,
                        ),
                      ), // icon is 48px widget.
                    ),
                  )),
            ),
            SizedBox(height: 35,),
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
                    labelText: '  santhanur',
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
            SizedBox(height: 35,),
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
                    labelText: '  9876542310',
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
            SizedBox(height: 35,),
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
                    labelText: '  ac@gmail.com',
                    labelStyle: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFB806),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/sms.png',
                          color: Colors.white,
                        ),
                      ), // icon is 48px widget.
                    ),
                  )),
            ),
            SizedBox(height: 35,),
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
                    labelText: '  Confirmed',
                    labelStyle: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFB806),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/vuesax-outline-clipboard-text.png',
                          color: Colors.white,
                        ),
                      ), // icon is 48px widget.
                    ),
                  )),
            ),
            SizedBox(height: 35,),
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
                    labelText: '  1.11.2021',
                    labelStyle: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFB806),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/CALENDER (2).png',
                          color: Colors.white,
                        ),
                      ), // icon is 48px widget.
                    ),
                  )),
            ),
            SizedBox(height: 35,),
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
                    labelText: '  less cooling',
                    labelStyle: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFB806),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/message-notif.png',
                          color: Colors.white,
                        ),
                      ), // icon is 48px widget.
                    ),
                  )),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Image.asset('assets/phone-8.png'),
                    SizedBox(width: 8),
                    Text('Call Now', style: GoogleFonts.poppins(fontSize: 18),)
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/whatsapp-icon.png', scale: 1.6, color: Color(0xffC60302)),
                    SizedBox(width: 8),
                    Text('Whatsapp', style: GoogleFonts.poppins(fontSize: 18),)
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
