import 'package:flutter/material.dart';

import '../theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          textWelcome,
          style: size24BlackW600,
        ),
      ),
    );
  }
}
