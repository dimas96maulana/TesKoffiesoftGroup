import 'package:flutter/material.dart'; 
import '../theme/theme.dart';
import 'home_page.dart';
import 'package:http/http.dart' as http;
import 'sigup_page.dart';

class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          left: 24,
          right: 24,
          bottom: 40,
        ),
        child: SingleChildScrollView(
          child: Column( 
            children: [
              const SizedBox(height: 100,),
              Center(
                child: Text(
                  textSignIn,
                  style: size24BlackW600,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // TODO : Email Address
              TextFormField(
                controller: emailController,
                style: TextStyle(
                  color: colorBlueDark,
                ),
                decoration: InputDecoration(
                    hintText: textEmailAddressNoHp,
                    fillColor: colorGreyLight,
                    filled: true,
                    icon: iconEmail,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: colorBlueDark,
                        ))),
              ),
              const SizedBox(
                height: 30,
              ),
              //TODO: Password
              TextFormField(
                controller: passController,
                style: TextStyle(
                  color: colorBlueDark,
                ),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: textPassword,
                  icon: iconPassword,
                  fillColor: colorGreyLight,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: colorBlueDark)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(),
                height: 45,
                width: 312,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: colorBlueDark,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    login();
                  },
                  child: Text(
                    textSignIn,
                    style: size14WhiteW500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SigupPage(),
                        ));
                  },
                  child: Text(
                    textCreateNewAccount,
                    style: size14GreyW300,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> login() async {
    if (emailController.text.isNotEmpty && passController.text.isNotEmpty) {
      final resultLogin = await http.post(
        Uri.parse(httpsLogin),
        body: ({
          'username': emailController.text,
          'password': passController.text
        }),
      );
      if (resultLogin.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Email dan No.Hp Belum Terdaftar')));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Mohon Di Isi Semua')));
    }
  }

  
}
