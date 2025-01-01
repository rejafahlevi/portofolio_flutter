import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_porto/view/components/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeColor,
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            children: [
              Flex(
                direction: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 4,
                      child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: baseColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              fit: BoxFit.fill,
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.44,
                              'assets/img/profile.jpg',
                            ),
                          ))),
                  Expanded(
                      flex: 5,
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          color: lightColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          textAlign: TextAlign.start,
                          'Rifki Reza Fahlevi',
                          style: GoogleFonts.poppins(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              color: darkColor),
                        ),
                      )),
                  Expanded(
                      flex: 5,
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          color: darkColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(children: [
                          Text(
                            'Mobile Developer',
                            style: GoogleFonts.poppins(
                                fontSize: 40,
                                fontWeight: FontWeight.w400,
                                color: baseColor),
                          ),
                        ]),
                      )),
                ],
              ),
            ],
          )),
    );
  }
}
