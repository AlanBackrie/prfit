import 'package:flutter/material.dart';
import 'package:prfit/model/listExercises.dart';
import 'package:prfit/pages/detailPage.dart';
import 'package:prfit/theme.dart';
import 'package:prfit/widgets/ListExercises_card.dart';

class ListExercises extends StatelessWidget {
  const ListExercises({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(),
                ));
          },
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: [
                listExercisesCard(
                  Excercises(
                      id: 1,
                      imageUrl: 'assets/exercises/abs.png',
                      name: 'Air Bike'),
                ),
                SizedBox(height: 10),
                listExercisesCard(
                  Excercises(
                      id: 1,
                      imageUrl: 'assets/exercises/abs.png',
                      name: 'Air Bike'),
                ),
                SizedBox(height: 10),
                listExercisesCard(
                  Excercises(
                      id: 1,
                      imageUrl: 'assets/exercises/abs.png',
                      name: 'Air Bike'),
                ),
                SizedBox(height: 10),
                listExercisesCard(
                  Excercises(
                      id: 1,
                      imageUrl: 'assets/exercises/abs.png',
                      name: 'Air Bike'),
                ),
                SizedBox(height: 10),
                listExercisesCard(
                  Excercises(
                      id: 1,
                      imageUrl: 'assets/exercises/abs.png',
                      name: 'Air Bike'),
                ),
                SizedBox(height: 10),
                listExercisesCard(
                  Excercises(
                      id: 1,
                      imageUrl: 'assets/exercises/abs.png',
                      name: 'Air Bike'),
                ),
                SizedBox(height: 10),
                listExercisesCard(
                  Excercises(
                      id: 1,
                      imageUrl: 'assets/exercises/abs.png',
                      name: 'Air Bike'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
