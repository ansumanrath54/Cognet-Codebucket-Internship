import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen17 extends StatefulWidget {
  const Screen17({Key? key}) : super(key: key);

  @override
  State<Screen17> createState() => _Screen17State();
}

class _Screen17State extends State<Screen17> {

  int selectedIndex = 0;
  List names = ['John Cena', 'Mr.Sam', 'Asad', 'Johan josh', 'Thomas Cooper'];
  List chats = [
    'I need info regarding this',
    'Give details about it',
    'How are you?',
    'Hi..',
    'Hi..'
  ];
  List time = ['7.30 PM', '7.25 PM', '7.20 PM', '7.09 PM', '7.09 PM'];

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
          flexibleSpace: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () => null,
                      icon: Image.asset('assets/reload.png'),
                    ),
                    Text('Call History', style: GoogleFonts.poppins(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500),)
                  ],
                ),
                SizedBox(width: 10)
              ],
            ),
          ),
        )
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                    decoration: BoxDecoration(
                      color: selectedIndex == 0? Color(0xffC60302) : Colors.grey,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text('Chat', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500),),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                    decoration: BoxDecoration(
                        color: selectedIndex == 1? Color(0xffC60302) : Colors.grey,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text('All Members', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500),),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                    decoration: BoxDecoration(
                        color: selectedIndex == 2? Color(0xffC60302) : Colors.grey,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text('Groups', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500),),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            selectedIndex == 0 ?
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                physics: ScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/man.png'),
                            ),
                            SizedBox(width: 13),
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${names[index]}', style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                                  SizedBox(height: 5,),
                                  Text('${chats[index]}', style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14))
                                ],
                              ),
                              width: 180,
                            ),
                            SizedBox(width: 60),
                            Text('${time[index]}', style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Divider(thickness: 1,)
                      ],
                    ),
                  );
                },
              ),
            ) : Container()
          ],
        ),
      ),
    );
  }
}
