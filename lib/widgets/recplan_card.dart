import 'package:prfit/model/Workoutplan.dart';
import 'package:prfit/theme.dart';
import 'package:flutter/material.dart';

class recPlanCard extends StatelessWidget {
  Recplan recplan;

  recPlanCard(this.recplan);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 228,
          height: 118,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(recplan.imageUrl),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          recplan.name,
          style: blackTextStyle.copyWith(fontSize: 18),
        ),
        Text(
          recplan.detail,
          style: blackTextStyle.copyWith(fontSize: 14),
        ),
        SizedBox(height: 3),
        Container(
          height: 25,
          width: 65,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.amber),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              '12 Excercises',
              style: greyTextStyle.copyWith(fontSize: 10),
            ),
          ),
        )
      ],
    );
  }
}
