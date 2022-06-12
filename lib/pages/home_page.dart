import 'package:prfit/model/Workoutplan.dart';
import 'package:prfit/pages/Profil.dart';
import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets/myplan_card.dart';
import '../widgets/recplan_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(edge),
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Text(
                      'Good Morning, \n Alan Bakrie',
                      style: blackTextStyle.copyWith(fontSize: 18),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/man.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            /* 
            TODO : RECOMMENDED PLAN
            */
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Text(
                'RECOMENDED PLAN',
                style: blackTextStyle.copyWith(fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(edge),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    recPlanCard(
                      Recplan(
                          id: 1,
                          detail: 'Full Body workout',
                          imageUrl: 'assets/plan/bodybuilder.png',
                          name: 'Body Builder'),
                    ),
                    SizedBox(width: edge),
                    recPlanCard(
                      Recplan(
                          id: 2,
                          detail: 'Pull',
                          imageUrl: 'assets/plan/bodybuilder2.png',
                          name: 'apa we lah'),
                    ),
                    SizedBox(width: edge),
                    recPlanCard(
                      Recplan(
                          id: 2,
                          detail: 'Pull',
                          imageUrl: 'assets/plan/bodybuilder3.png',
                          name: 'apa we lah'),
                    ),
                    SizedBox(width: edge),
                    recPlanCard(
                      Recplan(
                          id: 2,
                          detail: 'Pull',
                          imageUrl: 'assets/plan/bodybuilder4.png',
                          name: 'apa we lah'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            /* 
            TODO : My Plan
            */
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Text(
                'My Plan',
                style: blackTextStyle.copyWith(fontSize: 16),
              ),
            ),
            Column(
              children: const [
                myPlanCard(),
                myPlanCard(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
