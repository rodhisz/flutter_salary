import 'package:flutter/material.dart';
import 'package:flutter_salary/providers/salary_provider.dart';
import 'package:flutter_salary/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SalaryPage extends StatelessWidget {
  const SalaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SalaryProvider salaryProvider = Provider.of<SalaryProvider>(context);

    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Text(
            'Data Karyawan',
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: semibold, color: primaryColor),
          ),
          SizedBox(height: 20),
          Container(
              padding: EdgeInsets.all(15),
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
                  color: geryColor),
              child: Row(
                children: <Widget>[
                  Text(
                    '1.',
                    style: GoogleFonts.montserrat(
                        fontWeight: semibold, color: blackColor),
                  ),
                  SizedBox(width: 15),
                  Text(
                    // 'Fulan',
                    salaryProvider.data.namaKaryawan!,
                    style: GoogleFonts.montserrat(
                        fontWeight: semibold, color: blackColor),
                  ),
                  SizedBox(width: 50),
                  Text(
                    // '1 - 12 - 2021',
                    salaryProvider.data.tanggalMasuk!,
                    style: GoogleFonts.montserrat(
                        fontWeight: semibold, color: blackColor),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/detail-salary');
                      },
                      icon: Icon(Icons.dehaze_rounded))
                ],
              ))
        ],
      ),
    );
  }
}
