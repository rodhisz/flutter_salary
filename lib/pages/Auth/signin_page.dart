import 'package:flutter/material.dart';
import 'package:flutter_salary/providers/auth_provider.dart';
import 'package:flutter_salary/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController usernameController =
      TextEditingController(text: '');

  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleLogin() async {
      if (await authProvider.login(
          username: usernameController.text,
          password: passwordController.text)) {
        Navigator.pushNamed(context, '/main-page');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: primaryColor,
            content: Text(
              'Gagal Login',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 129),
              Center(
                child: Text(
                  'Masuk',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff36A69F),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 85,
              ),
              Text(
                'Username',
                style: GoogleFonts.montserrat(
                    textStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 59,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: Center(
                  child: TextFormField(
                    controller: usernameController,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Tulis username kamu'),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'Password',
                style: GoogleFonts.montserrat(
                    textStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 59,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: Center(
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Tulis password kamu'),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Lupa Password ?',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff36A69F),
                  )),
                ),
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: handleLogin,
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff36A69F)),
                  child: Center(
                    child: Text(
                      'Masuk',
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
