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
  double? wid;

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
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
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
                            height: 4,
                            width: selectedIndex == index ? (wid!*7.8) : 0,
                            color: Color(0xffC60302),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            selectedIndex == 0 ? Container(
              child: Column(
                children: [

                ],
              ),
            ) : Container(),
            selectedIndex == 1 ? Container(child: Text('ageh'),) : Container(),
          ],
        ),
      ),
    );
  }
}
