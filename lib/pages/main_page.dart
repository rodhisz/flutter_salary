import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary/pages/profile/profile_page.dart';
import 'package:flutter_salary/pages/salary/salary_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_salary/pages/home/home_page.dart';
import 'package:flutter_salary/pages/news/news_page.dart';

import 'home/home_page.dart';
import 'news/news_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  var appBarTitle = 'Salary.id';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {
          switch (_tabController!.index) {
            case 0:
              appBarTitle = 'Salary.id';
              break;
            case 1:
              appBarTitle = 'Penggajian';
              break;
            case 2:
              appBarTitle = 'Berita';
              break;
            case 3:
              appBarTitle = 'Profile';
              break;
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff36A69F),
        title: Text(
          appBarTitle,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Material(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[
              SizedBox(height: 60),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('images/img_profile2.png'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Fulan",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff36A69F),
                          ),
                        ),
                      ),
                      Text(
                        "Status",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Color(0xff36A69F),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Divider(
                thickness: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.help_center_rounded,
                  color: Color(0xff36A69F),
                ),
                title: Text(
                  'Tentang Kami',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Color(0xff36A69F),
                    ),
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.dark_mode_rounded,
                  color: Color(0xff36A69F),
                ),
                title: Text(
                  'Mode Malam',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Color(0xff36A69F),
                    ),
                  ),
                ),
                trailing: CupertinoSwitch(value: false, onChanged: (value) {}),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          HomePage(),
          SalaryPage(),
          NewsPage(),
          ProfilePage(),
        ],
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color(0xff36A69F),
          borderRadius: BorderRadius.circular(25),
        ),
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black38,
          labelPadding: EdgeInsets.symmetric(horizontal: 0),
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.white, width: 0),
          ),
          tabs: <Widget>[
            Tab(text: 'Home', icon: Icon(Icons.home)),
            Tab(text: 'Penggajian', icon: Icon(Icons.transform_rounded)),
            Tab(text: 'Berita', icon: Icon(Icons.now_widgets_sharp)),
            Tab(text: 'Profile', icon: Icon(Icons.person)),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
