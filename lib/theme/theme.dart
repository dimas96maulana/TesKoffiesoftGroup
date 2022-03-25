import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Image imageLogo = Image.asset(
  'images/KoffieSoft.png'
);


Color colorWhite = Colors.white;
Color colorGrey = Colors.grey;
Color colorBlack = Colors.black;
Color colorGreyLight = const Color(0xfff1f0f5);
Color colorBlueDark =const Color(0xff4141a4);


Icon iconEmail = const Icon(Icons.email_outlined);
Icon iconPassword = const Icon(Icons.password_outlined);
Icon iconHp = const Icon(Icons.phone_android_rounded);
Icon iconPerson = const Icon(Icons.person);
Icon iconDate = const Icon(Icons.date_range);


double edge = 30;
String textSignIn = 'Sign In';
String textBuildYourCarrer = 'Build Your Carrer';
String textEmailAddressNoHp = 'Email Address / No Hp'; 
String textCreateNewAccount = 'Create New Account';
String textWelcome = 'WELCOME';
String textSignUp = 'Sign Up';  
String textBackToSignIn = 'Back To Sign In'; 
String textEmail ='Email Address';
String textHp='No Hp';
String textFirstname='First Name'; 
String textLastname='Last Name';
String textDateOfBirth='Year - Month - Day';
String textPassword = 'Password';
String textgender = 'Gender';
String textGroup = 'Group';
String textKeterangan = 'Keterangan : '; 
String textUa = '1) User untuk webadmin'; 
String textMember = '2) User umum untuk app/web marketplace';
String textMitra = '3) Mitra seller untuk app/web marketplace'; 
String httpsLogin = 'http://202.157.184.201:8000/login';
String httpsUser = 'http://202.157.184.201:8000/users';        
TextStyle size24BlackW600 = GoogleFonts.poppins(
  fontSize: 24,
  fontWeight: FontWeight.w600,
  color: colorBlack,
); 
TextStyle size16GreyW400 = GoogleFonts.poppins(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: colorGrey,
);
TextStyle size14WhiteW500 = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: colorWhite,
);
TextStyle size14GreyW300 = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.w300,
  color: colorGrey
);
TextStyle size14BlackW300 = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: colorBlack,
); 