import 'package:flutter/material.dart';
import 'package:flutter_salary/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailSalary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Detail - Penggajian', style: GoogleFonts.montserrat()),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Fulan',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
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
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Data Karyawan',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: blackColor),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Nama Lengkap',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Fulan',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Jabatan',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Backend Developer',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Status',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Kontrak',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Nomor Handphone',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '0898121331415',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Username',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'fulan',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Tanggal Penggajian',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Nominal',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '2021-11-20',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Rp. 2,400,000',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '2021-11-20',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Rp. 400,000',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '2021-11-21',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Rp. 2,580,000',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
