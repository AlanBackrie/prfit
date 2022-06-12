// import 'package:ah/pages/Profil.dart';
// import 'package:ah/pages/excercises.dart';
// import 'package:ah/pages/home_page.dart';
// import 'package:ah/pages/insight.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/foundation/key.dart';

// class BtnNavBar extends StatefulWidget {
//   const BtnNavBar({Key? key}) : super(key: key);

//   @override
//   State<BtnNavBar> createState() => _BtnNavBarState();
// }

// class _BtnNavBarState extends State<BtnNavBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: body(),
//       bottomNavigationBar: googleBottomNavBar(),
//     );
//   }
// }

// Widget body() {
//   var currentIndex;
//   switch (currentIndex) {
//     case 0:
//       return HomePage();

//     case 1:
//       return ExercisesPage();

//     case 2:
//       return InsightPage();

//     case 3:
//       return ProfilePage();

//     default:
//       return HomePage();
//   }
// }

// Widget googleBottomNavBar() {
//   var currentIndex = 0;

//   currentIndex:
//   currentIndex;
//   onTap:
//   (value) {
//     setState((value) {
//       currentIndex = value;
//     });
//   };
//   bottomNavigationBar:
//   GNav(
//     rippleColor: Color(0xFF4B4949),
//     hoverColor: Color(0xFF808585), // tab button hover color
//     haptic: true, // haptic feedback
//     tabBorderRadius: 15,
//     // tabActiveBorder:
//     //     Border.all(color: Colors.black, width: 1), // tab button border
//     // tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
//     // tabShadow: [
//     //   BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
//     // ], // tab button shadow
//     curve: Curves.easeOutExpo, // tab animation curves
//     duration: Duration(milliseconds: 900), // tab animation duration
//     gap: 8, // the tab button gap between icon and text
//     color: Colors.grey[800], // unselected icon color
//     activeColor: Colors.blueAccent, // selected icon and text color
//     iconSize: 30, // tab button icon size
//     tabBackgroundColor:
//         Colors.purple.withOpacity(0.1), // selected tab background color
//     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//     tabs: const [
//       GButton(
//         icon: Icons.home,
//         text: 'Home',
//       ),
//       GButton(
//         icon: Icons.fitness_center,
//         text: 'Excercises',
//       ),
//       GButton(
//         icon: Icons.insights,
//         text: 'Insights',
//       ),
//       GButton(
//         icon: Icons.person_pin,
//         text: 'Home',
//       ),
//     ],
//   );
// }

import 'package:prfit/pages/Profil.dart';
import 'package:prfit/pages/excercises.dart';
import 'package:prfit/pages/home_page.dart';
import 'package:prfit/pages/insight.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var currentIndex = 0;
  Widget customBottomNavBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              size: 26,
              color: currentIndex == 0 ? Colors.blue : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Tutorial',
            icon: Icon(
              Icons.fitness_center,
              size: 26,
              color: currentIndex == 1 ? Colors.blue : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            label: 'insights',
            icon: Icon(
              Icons.insights_rounded,
              size: 26,
              color: currentIndex == 2 ? Colors.blue : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.person,
              size: 26,
              color: currentIndex == 3 ? Colors.blue : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();

      case 1:
        return const ExercisesPage();

      case 2:
        return const InsightPage();

      case 3:
        return const ProfilePage();

      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: customBottomNavBar(),
      body: body(),
    );
  }
}
