import 'package:flutter/material.dart';
import 'package:prfit/model/listExercises.dart';
import 'package:prfit/theme.dart';

class listExercisesCard extends StatelessWidget {
  Excercises exercises;

  listExercisesCard(this.exercises);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: edge),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: greyColor),
        child: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(exercises.imageUrl),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text(exercises.name)
            ],
          ),
        ),
      ),
    );
  }
}
