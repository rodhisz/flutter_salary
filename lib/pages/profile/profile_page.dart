import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        children: <Widget>[
          SizedBox(height: 50),
          CircleAvatar(
            radius: 55,
            backgroundImage: AssetImage('images/img_profile2.png'),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Text(
                'Bubu',
                style: GoogleFonts.montserrat(
                  textStyle:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Meoaww',
                style: GoogleFonts.montserrat(
                  textStyle:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          buttonProfile(Icons.settings, 'Update Profile',
              Icons.arrow_forward_ios_rounded),
          SizedBox(height: 20),
          buttonProfile(Icons.autorenew_rounded, 'Ubah Password',
              Icons.arrow_forward_ios_rounded),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              // Navigator.pushNamed(context, '/sign-in');
              showDialog(
                  context: (context),
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: Text('Keluar',
                          style: GoogleFonts.montserrat(
                              textStyle:
                                  TextStyle(fontWeight: FontWeight.w600))),
                      content: Text('Apakah anda yakin keluar?',
                          style: GoogleFonts.montserrat(
                              textStyle:
                                  TextStyle(fontWeight: FontWeight.w400))),
                      actions: [
                        CupertinoDialogAction(
                            child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Batal',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Colors.red),
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                        CupertinoDialogAction(
                            child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/sign-in');
                          },
                          child: Text(
                            'Yakin',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Colors.blue),
                                fontWeight: FontWeight.w500),
                          ),
                        ))
                      ],
                    );
                  });
            },
            child: buttonProfile(Icons.logout_rounded, 'Keluar',
                Icons.arrow_forward_ios_rounded),
          ),
        ],
      ),
    );
  }

  Widget buttonProfile(IconData iconFirst, String title, IconData secondIcon) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      height: 67,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.grey.withOpacity(0.2),
              offset: Offset(0, 5),
            ),
          ],
          color: Color(0xffF5F5F5)),
      child: Row(
        children: <Widget>[
          Icon(iconFirst),
          SizedBox(width: 20),
          Expanded(
              child: Text(
            title,
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(
              fontWeight: FontWeight.w600,
            )),
          )),
          SizedBox(width: 124),
          Icon(secondIcon),
        ],
      ),
    );
  }
}
