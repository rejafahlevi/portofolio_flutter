import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:my_porto/view/components/colors.dart';
import 'package:my_porto/view/pages/contact.dart';
import 'package:my_porto/view/pages/edu.dart';
import 'package:my_porto/view/pages/experience.dart';
import 'package:my_porto/view/pages/home.dart';
import 'package:my_porto/view/pages/project.dart';

class PortoScreen extends StatefulWidget {
  const PortoScreen({super.key});

  @override
  State<PortoScreen> createState() => _PortoScreenState();
}

class _PortoScreenState extends State<PortoScreen>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;

  final List<Color> colors = [
    homeColor,
    eduColor,
    expColor,
    projectColor,
    contactColor
  ];

  final List<Widget> screens = [
    const HomeScreen(),
    const EduScreen(),
    const ExperienceScreen(),
    const ProjectScreen(),
    const ContactScreen(),
  ];

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 5, vsync: this);
    tabController.animation!.addListener(() {
      final value = tabController.animation!.value.round();
      if (value != currentPage && mounted) {
        changePage(value);
      }
    });
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color unselectedColor = Colors.blueGrey.shade600;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'R-Porto',
          style: GoogleFonts.poppins(
              fontSize: 20, color: baseColor, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black87,
      ),
      body: BottomBar(
        fit: StackFit.loose,
        borderRadius: BorderRadius.circular(500),
        curve: Curves.easeInOut,
        start: 2,
        end: 0,
        offset: 16,
        barAlignment: Alignment.bottomCenter,
        iconHeight: 35,
        iconWidth: 35,
        width: MediaQuery.of(context).size.width * 0.8,
        reverse: false,
        hideOnScroll: true,
        body: (context, controller) => TabBarView(
          controller: tabController,
          dragStartBehavior: DragStartBehavior.down,
          physics: const BouncingScrollPhysics(),
          children: screens,
        ),
        child: TabBar(
          dividerColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          controller: tabController,
          indicatorPadding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              color: colors[currentPage],
              width: 4,
            ),
            borderRadius: BorderRadius.circular(4),
            insets: const EdgeInsets.fromLTRB(4, 0, 4, 10),
          ),
          tabs: [
            _buildTabIcon(Symbols.home_app_logo, 0, unselectedColor),
            _buildTabIcon(Icons.school, 1, unselectedColor),
            _buildTabIcon(Icons.work, 2, unselectedColor),
            _buildTabIcon(Icons.folder, 3, unselectedColor),
            _buildTabIcon(Icons.contact_page, 4, unselectedColor),
          ],
        ),
      ),
    );
  }

  Widget _buildTabIcon(IconData icon, int index, Color unselectedColor) {
    return SizedBox(
      height: 55,
      width: 40,
      child: Center(
        child: Icon(
          icon,
          color: currentPage == index ? colors[index] : unselectedColor,
        ),
      ),
    );
  }
}
