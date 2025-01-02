import 'package:auto_size_text/auto_size_text.dart';
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
          child: ListView(
            children: [
              Flex(
                direction: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 4,
                      child: Container(
                          height: 300,
                          width: 100,
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: baseColor,
                            borderRadius: BorderRadius.circular(28),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(28),
                            child: Image.asset(
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.44,
                              'assets/img/profile.jpg',
                            ),
                          ))),
                  Expanded(
                      flex: 4,
                      child: Container(
                        height: 300,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 28),
                        decoration: BoxDecoration(
                          color: baseColor,
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AutoSizeText(
                              maxLines: 2,
                              minFontSize: 24,
                              maxFontSize: 100,
                              textAlign: TextAlign.start,
                              'REJA',
                              style: GoogleFonts.poppins(
                                  fontSize: 60,
                                  fontWeight: FontWeight.w600,
                                  color: darkColor),
                            ),
                            Text(
                              maxLines: 2,
                              textAlign: TextAlign.start,
                              'Mohammad Rifki Reza Fahlevi',
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: darkColor),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 4,
                      child: Container(
                        height: 300,
                        width: 100,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                        decoration: BoxDecoration(
                          color: darkColor,
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AutoSizeText(
                                maxLines: 2,
                                minFontSize: 36,
                                maxFontSize: 100,
                                overflow: TextOverflow.ellipsis,
                                'Mobile Developer',
                                style: GoogleFonts.poppins(
                                    fontSize: 54,
                                    fontWeight: FontWeight.w400,
                                    color: baseColor),
                              ),
                              Text(
                                maxLines: 2,
                                textAlign: TextAlign.start,
                                'Flutter | Figma | Visual Studio Code',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: baseColor),
                              ),
                            ]),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                      decoration: BoxDecoration(
                        color: lightColor,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              Text(
                                'Summary',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: darkColor.withOpacity(0.6)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Icon(
                                  Icons.south_east_rounded,
                                  color: darkColor.withOpacity(0.6),
                                  size: 16,
                                ),
                              )
                            ],
                          ),
                          AutoSizeText(
                            'I am a mobile developer based in Kediri East Java Indonesia with 15 month of experience in the software industry. As mobile developer i am using flutter as my best framework to develope an apps. For the past few years has been front-end development with Bootstrap Dais Vue.js and UX/UI design with Figma but I am also have basic skill in back-end development with laravel.',
                            minFontSize: 12,
                            maxFontSize: 20,
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: darkColor),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
