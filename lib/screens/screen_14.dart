import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen14 extends StatefulWidget {
  const Screen14({Key? key}) : super(key: key);

  @override
  _Screen14State createState() => _Screen14State();
}

class _Screen14State extends State<Screen14> {

  List categories = ['Send Lead', 'Received Lead'];
  List names = ['John Antony', 'Samson', 'Samson'];
  List description = ['Less Cooling', 'High Sir', 'High Sir'];
  int selectedIndex = 0;
  int index = 0;
  double? wid;

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
                child: Text('Lead',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 140,
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
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('${categories[index]}', style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w600),),
                        SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFFB806)
                          ),
                          height: 4,
                          width: selectedIndex == index ? (wid!*8.8) : 0,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          selectedIndex == 0 ? Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 500,
              child: ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //color: Colors.grey
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Ac Repair', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18),),
                          Divider(height: 20, color: Colors.black,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage('assets/man (1)@2x.png'),
                                      ),
                                      SizedBox(width: 20),
                                      Text('${names[index]}', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                  SizedBox(height: 15,),
                                  Text('${description[index]}', style: GoogleFonts.poppins(color: Colors.black54, fontSize: 13),),
                                  SizedBox(height: 20),
                                  Text('1/11/2021', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18),),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(height: 10),
                                  Text('#34566', style: GoogleFonts.poppins(color: Color(0xffFFB806), fontSize: 16, fontWeight: FontWeight.w600),),
                                  SizedBox(height: 30),
                                  Text('Cancel', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 17),),
                                  SizedBox(height: 10),
                                  TextButton(
                                    onPressed: () => null,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(40, 5, 40, 5),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Color(0xffC60302)
                                      ),
                                      child: Text('Confirm', style: GoogleFonts.poppins(color: Colors.white),),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ) : Container()
        ],
      ),
    );
  }
}
