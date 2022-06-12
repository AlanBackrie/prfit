import 'package:prfit/model/Indicator.dart';
import 'package:prfit/theme.dart';
import 'package:flutter/material.dart';
import '../widgets/progres_photo_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 260,
              decoration: BoxDecoration(
                color: Color(0xCC752BD6),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/man.png',
                      width: 80,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Alan Bakrie',
                      style: whiteTextStyle.copyWith(fontSize: 20),
                    ),
                    Text(
                      'Beginner\n  Bulking',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            ListView(
              children: [
                SizedBox(height: 232),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Row(
                    children: [
                      indikatorCard(
                          Indicator(id: 1, nameW: 'Weight', weight: 55)),
                      SizedBox(width: 10),
                      indikatorCard(
                          Indicator(id: 1, nameW: 'Height', weight: 166)),
                      SizedBox(width: 10),
                      indikatorCard(Indicator(id: 1, nameW: 'BMI', weight: 20)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: edge),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(
                //         'Notification',
                //         style: blackTextStyle.copyWith(fontSize: 20),
                //       ),
                //       Text(
                //         '',
                //         style: blackTextStyle.copyWith(fontSize: 20),
                //       ),
                //       Text(
                //         'Pengaturan',
                //         style: blackTextStyle.copyWith(fontSize: 20),
                //       ),
                //       Text(
                //         'Pengaturan',
                //         style: blackTextStyle.copyWith(fontSize: 20),
                //       ),
                //       Text(
                //         'Pengaturan',
                //         style: blackTextStyle.copyWith(fontSize: 20),
                //       ),
                //       Text(
                //         'Pengaturan',
                //         style: blackTextStyle.copyWith(fontSize: 20),
                //       ),
                //     ],
                //   ),
                // ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  // decoration: BoxDecoration(color: Colors.blue),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFFFFFF),
                            boxShadow: [
                              BoxShadow(color: Colors.black26, blurRadius: 1)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.access_time_outlined,
                                size: 50,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Oprasional",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text("Setiap hari"),
                                  Text("07:00 - 21:00"),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFFFFFF),
                            boxShadow: [
                              BoxShadow(color: Colors.black26, blurRadius: 1)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.monetization_on_outlined,
                                size: 50,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Biaya",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text("Rp. 12.000 / hari"),
                                  Text("Rp. 140.000 / bulan"),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFFFFFF),
                            boxShadow: [
                              BoxShadow(color: Colors.black26, blurRadius: 1)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.call_outlined,
                                size: 50,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Telepon",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text("0812-2102-270"),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFFFFFF),
                            boxShadow: [
                              BoxShadow(color: Colors.black26, blurRadius: 1)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on_outlined,
                                size: 50,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Alamat",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                      "Jl. Letjen Mashudi No.8, Setiajaya, \nKec. Cibeureum, Tasikmalaya, \nJawa Barat 46115"),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFFFFFF),
                            boxShadow: [
                              BoxShadow(color: Colors.black26, blurRadius: 1)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.now_widgets_outlined,
                                size: 50,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Fasilitas",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: 8,
                                      ),
                                      Text(" Locker")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: 8,
                                      ),
                                      Text(" Mushola")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: 8,
                                      ),
                                      Text(" Kamar Mandi")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: 8,
                                      ),
                                      Text(" Alat Fitnes Komplit")
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class indikatorCard extends StatelessWidget {
  Indicator indicator;

  indikatorCard(this.indicator);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3), color: greyColor),
      child: Center(
        child: Text(
          '   ${indicator.weight}\n${indicator.nameW}',
          style: blackTextStyle.copyWith(fontSize: 14),
        ),
      ),
    );
  }
}
