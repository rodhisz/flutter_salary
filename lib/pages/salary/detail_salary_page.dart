import 'package:flutter/material.dart';
import 'package:flutter_salary/providers/salary_provider.dart';
import 'package:flutter_salary/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class DetailSalary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SalaryProvider salaryProvider = Provider.of<SalaryProvider>(context);

    int totalTunjangan =
        int.parse(salaryProvider.data.gaji![0].totalTunjangan!);
    int potongan = int.parse(salaryProvider.data.gaji![0].potongan!);
    int totalGaji = int.parse(salaryProvider.data.gaji![0].totalGaji!);

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
                'Data Karyawan',
                // salaryProvider.data.namaKaryawan!,
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: blackColor),
                    fontWeight: semibold,
                    fontSize: 20),
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
                    SizedBox(
                      height: 10,
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
                              fontWeight: semibold),
                        ),
                        Spacer(),
                        Text(
                          // 'Fulan',
                          salaryProvider.data.namaKaryawan!,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
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
                              fontWeight: semibold),
                        ),
                        Spacer(),
                        Text(
                          // 'Backend Developer',
                          salaryProvider.data.idJabatan!,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
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
                              fontWeight: semibold),
                        ),
                        Spacer(),
                        Text(
                          // 'Kontrak',
                          salaryProvider.data.status!,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
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
                              fontWeight: semibold),
                        ),
                        Spacer(),
                        Text(
                          // '0898121331415',
                          salaryProvider.data.nomorHp!,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
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
                              fontWeight: semibold),
                        ),
                        Spacer(),
                        Text(
                          // 'fulan',
                          salaryProvider.data.username!,
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
                              fontWeight: semibold),
                        ),
                        Spacer(),
                        Text(
                          // 'Nominal',
                          salaryProvider.data.gaji![0].tanggalGajian!,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Total Tunjangan',
                          // salaryProvider.data.tanggalMasuk!,
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: blackColor),
                              fontWeight: semibold),
                        ),
                        Spacer(),
                        Text(
                          // 'Rp. 2,400,000',
                          NumberFormat.currency(
                            symbol: 'Rp. ',
                            name: 'IDR',
                            decimalDigits: 0,
                          ).format(totalTunjangan),
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          // '2021-11-20',
                          'Potongan',
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: blackColor),
                              fontWeight: semibold),
                        ),
                        Spacer(),
                        Text(
                          // 'Rp. 400,000',
                          NumberFormat.currency(
                            symbol: '- Rp. ',
                            name: 'IDR',
                            decimalDigits: 0,
                          ).format(potongan),
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: blackColor),
                          ),
                        ),
                        Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          // '2021-11-21',
                          'Total Gaji',
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: blackColor),
                              fontWeight: semibold),
                        ),
                        Spacer(),
                        Text(
                          // 'Rp. 2,580,000',
                          // salaryProvider.data.gaji![0].totalGaji!,
                          NumberFormat.currency(
                            symbol: 'Rp. ',
                            name: 'IDR',
                            decimalDigits: 0,
                          ).format(totalGaji),
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: blackColor),
                              fontWeight: semibold),
                        ),
                        SizedBox(
                          height: 10,
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
