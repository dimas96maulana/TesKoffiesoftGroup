// import 'package:http/http.dart' as http;

// import '../theme/theme.dart';

// class TesRestApi {
//   Future register(
//     String rEmail,
//     String rNoHp ,
//     String rFirstName,
//     String rLastname, 
//     String rDateOfBirth,
//     String rpassword,
//     // int rgender,
//     // String rGroup,
//   ) async {
//     try {
//       final resultRegister = await http.post(
//         Uri.parse(httpsUser),
//         body: ({
//           "email": rEmail,
//           "hp": rNoHp,
//           "firstname": rFirstName,
//           "lastname": rLastname,
//           "grup": 'member',
//           "tgl_lahir": rDateOfBirth,
//           "jenis_kelamin": 1,
//           "password": rpassword,
//         }),
//       );
//       if (resultRegister.statusCode == 200) {
//         return true;
//       } else {
//         return false;
//       }
//     } catch (e) {
//       print(e.toString());
//     }
//   }
// }
