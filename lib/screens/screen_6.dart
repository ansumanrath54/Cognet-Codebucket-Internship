import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen6 extends StatefulWidget {
  const Screen6({Key? key}) : super(key: key);

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {

  List group = [
    'assets/Group 17539.png',
    'assets/Group 17538.png',
    'assets/Group 17537.png',
    'assets/Group 17539.png'
  ];

  List categories = [
    'assets/063-slide show app.png',
    'assets/fasting.png',
    'assets/069-linkedin.png',
    'assets/couple.png',
    'assets/man (1).png',
    'assets/calendar.png',
    'assets/family-tree.png',
    'assets/teamwork.png',
  ];

  List names = [
    'News',
    'Vrat Tyohaar',
    'Jobs',
    'Matrimony',
    'Personalities',
    'Calender',
    'Family Tree',
    'Business Network'
  ];

  int currentIndex = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {

    var scaffoldkey = GlobalKey<ScaffoldState>();

    indicator() {
      return Container(
        width: 6,
        height: 6,
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
      );
    }

    activeIndicator() {
      return Container(
        width: 12,
        height: 12,
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.purple,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: Center(
          child: Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      key: scaffoldkey,
      drawer: SlideBarMenu(context),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          backgroundColor: Colors.white,
          leading: FlatButton(
            onPressed: () {
              scaffoldkey.currentState?.openDrawer();
            },
            child: Image.asset('assets/Group 44.png'),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text('Hello, Roshan !',
              style: GoogleFonts.poppins(fontSize: 18, color: Colors.black),),
              SizedBox(height: 8),
              Text("Let's explore what's happening in community",
                style: GoogleFonts.poppins(fontSize: 9, color: Colors.black),),
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
            Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 250,
                    initialPage: currentIndex,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  items: [0,1,2,3].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('${group[i]}')
                                )
                            ),
                            //child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                        );
                      },
                    );
                  }).toList(),
                ),
                Positioned(
                  left: 60,
                  bottom: 45,
                  child: Row(
                    children: [0, 1, 2, 3].map<Widget>((item) {
                      if (item == currentIndex) return activeIndicator();
                      return indicator();
                    }).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 230,
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 0,
                mainAxisSpacing: 8,
                children: List.generate(categories.length, (index) {
                  return Column(
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () => null,
                          icon: Image.asset('${categories[index]}'),
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(10),
                      ),
                      SizedBox(height: 5),
                      Text('${names[index]}', style: GoogleFonts.poppins(
                        fontSize: 10, fontWeight: FontWeight.bold
                      ),)
                    ],
                  );
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 10),
              child: Text('LATEST NEWS', style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold
              ),),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5
                )]
              ),
              height: 100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text('Sports Meet in Galaxy Field', style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 17
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                      child: Image.asset('assets/Image -2.png', fit: BoxFit.cover,))
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5
                  )]
              ),
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text('Art & Meet in Street Plaza', style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 17
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(width: 18),
                  Container(
                      width: 110,
                      height: 90,
                      child: Image.asset('assets/Image -3.png', fit: BoxFit.cover,))
                ],
              ),
            ),
            SizedBox(height: 20),
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

Widget SlideBarMenu(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        Container(
          height: 130,
          color: Color(0xffC60302),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 20),
            child: Row(
              children: [
                Image.asset('assets/account.png'),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Roshan', style: GoogleFonts.poppins(fontSize: 18, color: Colors.white),),
                      Text('roshan@gmail.com', style: GoogleFonts.poppins(fontSize: 13, color: Colors.white),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        ListTile(
          leading: Image.asset('assets/vuesax-linear-data.png'),
          title: Text('Family tree'),
          onTap: () { },
        ),
        ListTile(
          leading: Image.asset('assets/vuesax-outline-search-status.png'),
          title: Text('Search Product Or Service'),
          onTap: () { },
        ),
        ListTile(
          leading: Image.asset('assets/vuesax-outline-user-search.png'),
          title: Text('Lead'),
          onTap: () { },
        ),
        ListTile(
          leading: Image.asset('assets/vuesax-outline-briefcase.png'),
          title: Text('Jobs'),
          onTap: () { },
        ),
        ListTile(
          leading: Image.asset('assets/vuesax-outline-profile-2user.png'),
          title: Text('Matrimony'),
          onTap: () { },
        ),
        ListTile(
          leading: Image.asset('assets/vuesax-outline-task.png', color: Color(0xffC60302),),
          title: Text('Vrat Tyohaar'),
          onTap: () { },
        ),
        ListTile(
          leading: Image.asset('assets/vuesax-outline-clipboard-text.png'),
          title: Text('Puja Padhhati'),
          onTap: () { },
        ),
        ListTile(
          leading: Image.asset('assets/vuesax-outline-bag.png'),
          title: Text('E Commerce'),
          onTap: () { },
        ),
        ListTile(
          leading: Image.asset('assets/vuesax-linear-user-add.png'),
          title: Text('Invite Friends'),
          onTap: () { },
        ),
        ListTile(
          leading: Image.asset('assets/vuesax-outline-transaction-minus.png'),
          title: Text('Recips'),
          onTap: () { },
        ),
        ListTile(
          leading: Image.asset('assets/vuesax-outline-task-square.png'),
          title: Text('Classified'),
          onTap: () { },
        ),
        ListTile(
          leading: Image.asset('assets/vuesax-outline-book-saved.png'),
          title: Text('Events'),
          onTap: () { },
        ),
        ListTile(
          leading: Image.asset('assets/vuesax-outline-calendar.png'),
          title: Text('Calender'),
          onTap: () { },
        ),
        ListTile(
          leading: Image.asset('assets/vuesax-outline-note-2.png'),
          title: Text('News'),
          onTap: () { },
        ),
        ListTile(
          leading: Image.asset('assets/vuesax-outline-user-square.png'),
          title: Text('Eminent Personalities'),
          onTap: () { },
        ),
      ],
    ),
  );
}
