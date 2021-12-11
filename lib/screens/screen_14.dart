import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen14 extends StatefulWidget {
  const Screen14({Key? key}) : super(key: key);

  @override
  _Screen14State createState() => _Screen14State();
}

class _Screen14State extends State<Screen14> {
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
    );
  }
}
