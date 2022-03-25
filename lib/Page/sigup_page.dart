import 'package:flutter/material.dart';
import '../models/models.dart';
import '../theme/theme.dart';
import 'package:http/http.dart' as http;

enum genderGroup { male, female }
enum groupUser { ua, member, mitra }

class SigupPage extends StatefulWidget {
  const SigupPage({Key? key}) : super(key: key);

  @override
  State<SigupPage> createState() => _SigupPageState();
}

class _SigupPageState extends State<SigupPage> {
  int genderInt = 1;
  String groupString = 'ua';
  // TesRestApi tesRestApi = TesRestApi();
  genderGroup genderValue = genderGroup.male;
  groupUser groupValue = groupUser.ua;

  final noHpController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final grupController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final genderController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            right: 24,
            left: 24,
            bottom: 40,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textSignUp,
                style: size24BlackW600,
              ),
              const SizedBox(height: 30),

              // TODO: TextFormField Email Address
              TextFormField(
                controller: emailController,
                style: TextStyle(
                  color: colorBlueDark,
                ),
                decoration: InputDecoration(
                    icon: iconEmail,
                    hintText: textEmail,
                    fillColor: colorGreyLight,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: colorBlueDark,
                      ),
                    )),
              ),

              const SizedBox(
                height: 20,
              ),

              // TODO: TextFormField No Hp
              TextFormField(
                controller: noHpController,
                style: TextStyle(
                  color: colorBlueDark,
                ),
                decoration: InputDecoration(
                  icon: iconHp,
                  hintText: textHp,
                  fillColor: colorGreyLight,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: colorBlueDark),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // TODO: TextFormField Password
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
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: colorBlueDark,
                        ))),
              ),

              const SizedBox(
                height: 20,
              ),

              // TODO: TextFormField First Name
              TextFormField(
                controller: firstNameController,
                style: TextStyle(
                  color: colorBlueDark,
                ),
                decoration: InputDecoration(
                    hintText: textFirstname,
                    icon: iconPerson,
                    fillColor: colorGreyLight,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: colorBlueDark,
                        ))),
              ),

              const SizedBox(
                height: 20,
              ),

              // TODO: TextFormField Last Name
              TextFormField(
                controller: lastNameController,
                style: TextStyle(
                  color: colorBlueDark,
                ),
                decoration: InputDecoration(
                    hintText: textLastname,
                    icon: iconPerson,
                    fillColor: colorGreyLight,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: colorBlueDark,
                        ))),
              ),

              const SizedBox(
                height: 20,
              ),

              // TODO: TextFormField tanggal lahir
              TextFormField(
                controller: dateOfBirthController,
                style: TextStyle(
                  color: colorBlueDark,
                ),
                decoration: InputDecoration(
                    hintText: textDateOfBirth,
                    icon: iconDate,
                    fillColor: colorGreyLight,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: colorBlueDark,
                        ))),
              ),

              const SizedBox(
                height: 20,
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textgender,
                  style: size14BlackW300,
                ),
              ),
              // TODO : Gender
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Radio(
                    value: genderGroup.male,
                    groupValue: genderValue,
                    onChanged: (genderGroup? val) {
                      setState(() {
                        genderValue = val!;
                        genderInt = 1;
                      });
                    },
                  ),
                  const Text('Male'),

                  const SizedBox(
                    width: 6,
                  ),

                  Radio(
                    value: genderGroup.female,
                    groupValue: genderValue,
                    onChanged: (genderGroup? val) {
                      setState(() {
                        genderValue = val!;
                        genderInt = 2;
                      });
                    },
                  ),
                  const Text('Female'),

                  // RadioListTile(
                  //   title: const Text('Female'),
                  //   value: genderGroup.female,
                  //   groupValue: groupValue,
                  //   onChanged: (genderGroup? val){
                  //     print(val);
                  //   },
                  // ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // TODO : Group User
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textGroup,
                  style: size14BlackW300,
                ),
              ),
              Row(
                children: [
                  Radio(
                      value: groupUser.ua,
                      groupValue: groupValue,
                      onChanged: (groupUser? val2) {
                        setState(() {
                          groupValue = val2!;
                          groupString = 'ua';
                        });
                      }),
                  const Text('Ua'),
                  const SizedBox(
                    width: 20,
                  ),
                  Radio(
                      value: groupUser.mitra,
                      groupValue: groupValue,
                      onChanged: (groupUser? val2) {
                        setState(() {
                          groupValue = val2!;
                          groupString = 'mitra';
                        });
                      }),
                  const Text('Mitra'),
                  const SizedBox(
                    width: 20,
                  ),
                  Radio(
                      value: groupUser.member,
                      groupValue: groupValue,
                      onChanged: (groupUser? val2) {
                        setState(() {
                          groupValue = val2!;
                          groupString = 'member';
                        });
                      }),
                  const Text('Member'),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textKeterangan,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textUa,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textMember,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textMitra,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(),
                height: 50,
                width: 400,
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: colorBlueDark,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        )),
                    onPressed: () {
                      register();
                      // bool result = await tesRestApi.register(
                      //     emailController.text,
                      //     noHpController.text,
                      //     firstNameController.text,
                      //     lastNameController.text,
                      //     dateOfBirthController.text,
                      //     passController.text,
                      //     // genderInt,
                      //     // groupString,
                      // );

                      // if (result) {
                      //   Navigator.pop(context);
                      // } else {
                      //   print('Post data gagal');
                      // }

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const HomePage(),
                      //     ));
                    },
                    child: Text(
                      textSignIn,
                      style: size14WhiteW500,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  textBackToSignIn,
                  style: size14GreyW300,
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> register() async {
    if (emailController.text.isNotEmpty &&
        passController.text.isNotEmpty &&
        noHpController.text.isNotEmpty &&
        firstNameController.text.isNotEmpty &&
        lastNameController.text.isNotEmpty &&
        dateOfBirthController.text.isNotEmpty) {
      final resultRegister = await http.post(
        Uri.parse(httpsUser),
        body: ({
          "email": emailController.text,
          "hp": noHpController.text,
          "firstname": firstNameController.text,
          "lastname": lastNameController.text,
          "grup": groupString,
          "tgl_lahir": dateOfBirthController.text,
          // "jenis_kelamin": genderInt,
          "password": passController.text,
        }),
      );
      if (resultRegister.statusCode == 200) {
        Navigator.pop(context);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Data Tidak Terkirim')));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Mohon Di Isi Semua')));
    }
  }
}
