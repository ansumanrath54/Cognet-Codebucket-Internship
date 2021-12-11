import 'package:day_1/screens/screen_1.dart';
import 'package:day_1/screens/screen_10.dart';
import 'package:day_1/screens/screen_11.dart';
import 'package:day_1/screens/screen_12.dart';
import 'package:day_1/screens/screen_13.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen9 extends StatefulWidget {
  const Screen9({Key? key}) : super(key: key);

  @override
  _Screen9State createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {

  List categories = ['Overview', 'Reviews', 'Services Offered', 'Photos', 'Category'];
  int selectedIndex = 0;
  int index = 0;
  double? wid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              Text('Search Product or Service',
                style: GoogleFonts.poppins(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),),
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
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 30, 0, 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/getty_-1@2x.png'),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Text('Beauty Parlour Name', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),),
                      SizedBox(height: 10),
                      Text('Feature About This Business', style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Image.asset('assets/star@2x.png'),
                          SizedBox(width: 20),
                          Text('5(1002)', style: TextStyle(color: Colors.grey, fontSize: 17),)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  wid = categories[index].length.toDouble();
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      child: Column(
                        children: [
                          Text('${categories[index]}', style: GoogleFonts.poppins(),),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffC60302)
                            ),
                            height: 4,
                            width: selectedIndex == index ? (wid!*7.8) : 0,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            selectedIndex == 0 ? Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About Us', style: GoogleFonts.poppins(fontSize: 20),),
                  SizedBox(height: 10,),
                  Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do guyu',
                    style: GoogleFonts.poppins(fontSize: 10, color: Colors.grey),),
                  SizedBox(height: 8,),
                  Text('eiusmod tempor incididunt ut ero labore et dolore magna aliqua.',
                    style: GoogleFonts.poppins(fontSize: 10, color: Colors.grey),),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[200],
                            ),
                            padding: EdgeInsets.all(10),
                            child: IconButton(
                              onPressed: () => null,
                              icon: Image.asset('assets/chat_bubble-5@2x.png',),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('Message', style: GoogleFonts.poppins(),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[200],
                            ),
                            padding: EdgeInsets.all(10),
                            child: IconButton(
                              onPressed: () => null,
                              icon: Image.asset('assets/Icon material-call-5@2x.png',),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('Call', style: GoogleFonts.poppins(),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[200],
                            ),
                            padding: EdgeInsets.all(10),
                            child: IconButton(
                              onPressed: () => null,
                              icon: Image.asset('assets/Icon material-location-on@2x.png',),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('Direction', style: GoogleFonts.poppins(),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/location (2).png', scale: 0.8),
                        SizedBox(width: 30),
                        Text('Address Details', style: GoogleFonts.poppins(),)
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/stopwatch.png', scale: 0.8),
                        SizedBox(width: 30),
                        Text('Closed . Opens 10:30 am', style: GoogleFonts.poppins(),)
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/phone-6.png', scale: 0.8),
                        SizedBox(width: 30),
                        Text('(647) 886-1212      Call Us Now', style: GoogleFonts.poppins(),)
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/language_black_24dp.png', scale: 0.8),
                        SizedBox(width: 30),
                        Text('Website Url', style: GoogleFonts.poppins(),)
                      ],
                    ),
                  )
                ],
              ),
            ) : Container(),
            selectedIndex == 1 ? Screen10() : Container(),
            selectedIndex == 2 ? Screen11() : Container(),
            selectedIndex == 3 ? Screen12() : Container(),
            selectedIndex == 4 ? Screen13() : Container(),
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
            icon: Image.asset('assets/bottom/home (-1.png'),
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
            icon: Image.asset('assets/bottom/Group 17540.png', color: Color(0xffC60302),),
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
