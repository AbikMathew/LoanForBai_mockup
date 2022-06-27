import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loans_for_bai/constants/color_constants.dart';
import 'package:loans_for_bai/view/pages/home_screen_loan_approved/home_screen_loan_approved.dart';
import 'package:loans_for_bai/view/pages/menu_screen/menu_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key, required this.showLoanDetailsColumn})
      : super(key: key);

  final bool showLoanDetailsColumn;
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeScreenLoanApproved(
          showLoanDetailsColumn: widget.showLoanDetailsColumn),
      const MenuScreen(),
    ];
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
