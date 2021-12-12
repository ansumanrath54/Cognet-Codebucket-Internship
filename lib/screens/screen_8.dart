import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen8 extends StatefulWidget {
  const Screen8({Key? key}) : super(key: key);

  @override
  _Screen8State createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {

  List images = [
    'assets/getty_-1@2x.png',
    'assets/getty_-2@2x.png',
    'assets/getty_-3@2x.png',
    'assets/getty_-4@2x.png',
    'assets/getty_-5@2x.png'
  ];

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
        padding: EdgeInsets.all(8),
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
                    labelText: '        Spa and Beauty Parlor',
                    labelStyle: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
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
            SizedBox(height: 20,),
            Text('20 Result Found', style: GoogleFonts.poppins(color: Colors.black),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(1.5),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 27),
                    decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(
                          //color: Colors.grey,
                          blurRadius: 2
                      )],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 2),
                          height: 90,
                          width: 110,
                          child: Image.asset('${images[index]}'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Beauty Parlour Name', style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 12),),
                              SizedBox(height: 7),
                              Text('Description about the place', style: GoogleFonts.poppins(fontSize: 10),),
                              SizedBox(height: 14),
                              Row(
                                children: [
                                  Image.asset('assets/star.png'),
                                  SizedBox(width: 20),
                                  Text('4.5(1002)', style: TextStyle(color: Colors.grey, fontSize: 13),)
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/icn_send.png'),
                                  SizedBox(width: 7),
                                  Text('430km', style: TextStyle(fontSize: 12),)
                                ],
                              ),
                              TextButton(
                                onPressed: () => null,
                                child: Container(
                                  child: Row(
                                    children: [
                                      Image.asset('assets/Icon ionic-ios-call.png', scale: 1.8,),
                                      Text('  Call', style: TextStyle(color: Colors.black, fontSize: 10),)
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)
                                  ),
                                  padding: EdgeInsets.fromLTRB(19.5, 4, 19.5, 4),
                                ),
                              ),
                              TextButton(
                                onPressed: () => null,
                                child: Container(
                                  child: Row(
                                    children: [
                                      Image.asset('assets/chat_bubble-1.png', scale: 1.6,),
                                      Text('   Message', style: TextStyle(color: Colors.white, fontSize: 6.8),)
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    color: Color(0xffC60302)
                                  ),
                                  padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
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
