import 'package:prfit/pages/list_exercises.dart';
import 'package:prfit/theme.dart';
import 'package:flutter/material.dart';

class ExercisesPage extends StatelessWidget {
  const ExercisesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'List Exercises',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: edge),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
            ),
            itemCount: 12,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListExercises(),
                    ),
                  );
                },
                child: Container(
                  width: 50,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/exercises/abs.png'),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
