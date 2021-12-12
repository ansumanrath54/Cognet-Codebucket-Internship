import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen7 extends StatefulWidget {
  const Screen7({Key? key}) : super(key: key);

  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.white,
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
              Text('Search Product or Service',
                style: GoogleFonts.poppins(fontSize: 16, color: Colors.black),),
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
        padding: EdgeInsets.all(25),
        child: ListView(
          children: [
            SizedBox(height: 15,),
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
                    labelText: '        Current Location',
                    labelStyle: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFB806),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/location (1).png',
                          color: Colors.white,
                        ),
                      ), // icon is 48px widget.
                    ),
                  )),
            ),
            SizedBox(height: 30,),
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
                    labelText: '        Search Product or Service',
                    labelStyle: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFB806),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/search-normal-19.png',
                          color: Colors.white,
                        ),
                      ), // icon is 48px widget.
                    ),
                  )),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Image.asset('assets/rotate-right-1.png'),
                SizedBox(width: 20),
                Text('Cleaning Service', style: GoogleFonts.poppins(fontSize: 18),),
                SizedBox(width: 40,),
                Text('10 Result Found', style: TextStyle(color: Colors.grey),)
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Image.asset('assets/rotate-right-1.png'),
                SizedBox(width: 20),
                Text('Furniture', style: GoogleFonts.poppins(fontSize: 18),),
                SizedBox(width: 103,),
                Text('100 Result Found', style: TextStyle(color: Colors.grey),)
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Color(0xffC60302),
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          setState((){
            this.index = index;
          });},
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom/home (-1.png', color: index == 0 ? Color(0xffC60302) : null),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom/vuesax-outline-user-tick-1.png', color: index == 1 ? Color(0xffC60302) : null),
            title: Text("Business Network"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom/vuesax-outline-messages-1.png', color: index == 2 ? Color(0xffC60302) : null),
            title: Text("Chats"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom/Group 17540.png', color: index == 3 ? Color(0xffC60302) : null),
            title: Text("Search Product"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom/vuesax-outline-task.png', color: index == 4 ? Color(0xffC60302) : null),
            title: Text("My Posting"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom/vuesax-outline-user.png', color: index == 5 ? Color(0xffC60302) : null),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
