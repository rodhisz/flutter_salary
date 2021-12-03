import 'package:flutter/material.dart';
import 'package:flutter_salary/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadButton extends StatelessWidget {
  const LoadButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Color(0xff36A69F)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 16,
              width: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation(whiteColor),
              ),
            ),
            SizedBox(width: 5),
            Text(
              'Loading',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
