import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loans_for_bai/constants/color_constants.dart';
import 'package:loans_for_bai/view/pages/home_screen/home_screen.dart';
import 'package:loans_for_bai/view/pages/menu_screen/menu_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int index = 0;
  final screens = [
    const HomeScreen(),
    const MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          indicatorColor: Colors.transparent,
        ),
        child: NavigationBar(
          elevation: 0,
          backgroundColor: kWhite,
          onDestinationSelected: (index) => setState(() => this.index = index),
          selectedIndex: index,
          destinations: const [
            NavigationDestination(
                icon: FaIcon(
                  FontAwesomeIcons.houseChimney,
                  color: kBlackBase,
                ),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.menu, color: kBlackBase), label: 'Menu'),
          ],
        ),
      ),
    );
  }
}
