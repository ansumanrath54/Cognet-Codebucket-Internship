import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen16 extends StatefulWidget {
  const Screen16({Key? key}) : super(key: key);

  @override
  State<Screen16> createState() => _Screen16State();
}

class _Screen16State extends State<Screen16> {

  int index = 0;

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
                child: Text('Submit for Lead',
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
            SizedBox(height: 15),
            Text('Submit Lead', style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),),
            SizedBox(height: 25),
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
                    labelText: '       Topic of the lead',
                    labelStyle: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
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
                    labelText: '       Business Category',
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
            SizedBox(height: 35,),
            Container(
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[300],
              ),
              child: TextFormField(
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(fontSize: 11.0),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: '       Connect With Me',
                    labelStyle: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(height: 50,),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffC60302),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                onPressed: () => null,
                child: Text('Submit', style: GoogleFonts.poppins(
                    color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1),),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Color(0xffC60302),
        unselectedItemColor: Colors.grey,
        onTap: (int index) { setState((){ this.index = index;}); },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom/home (-1.png', color: Color(0xffC60302),),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom/vuesax-outline-user-tick-1.png'),
            title: Text("Business Network"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom/vuesax-outline-messages-1.png'),
            title: Text("Chats"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom/Group 17540.png'),
            title: Text("Search Product"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom/vuesax-outline-task.png'),
            title: Text("My Posting"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom/vuesax-outline-user.png'),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
