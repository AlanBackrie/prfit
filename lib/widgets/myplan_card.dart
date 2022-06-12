import 'package:flutter/material.dart';

import '../theme.dart';

class myPlanCard extends StatelessWidget {
  const myPlanCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/splash.png',
          width: 100,
          height: 100,
        ),
        SizedBox(
          width: edge,
        ),
        Text('FULL \n \n12 exercises'),
      ],
    );
  }
}
