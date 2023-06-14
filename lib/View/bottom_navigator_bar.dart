import 'package:beauty_salon_ui/View/all_services.dart';
import 'package:beauty_salon_ui/View/homeView.dart';
import 'package:beauty_salon_ui/View/profile_view.dart';
import 'package:beauty_salon_ui/res/appColor.dart';
import 'package:beauty_salon_ui/res/status_bar_color_change.dart';
import 'package:flutter/material.dart';

class BottomNavigatorView extends StatefulWidget {
  const BottomNavigatorView({super.key});

  @override
  State<BottomNavigatorView> createState() => _BottomNavigatorViewState();
}

class _BottomNavigatorViewState extends State<BottomNavigatorView> {
  int _selectedIndex = 0;
  final pages = [const HomeView(), const AllServices(), const ProfileView()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StatusBarColor(
      statusBarColor: AppColor.backgroundColor,
      statusBarVisible: true,
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: AppColor.creamColor,
            items: [
              BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? Container(
                        width: MediaQuery.of(context).size.width * .11,
                        height: MediaQuery.of(context).size.height * .07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColor.creamColor),
                        child: Center(
                          child: Image.asset(
                            'asset/home.png',
                            color: Colors.white,
                            height: 31,
                            width: 31,
                          ),
                        ),
                      )
                    : Image.asset(
                        'asset/home.png',
                        height: 31,
                        width: 31,
                      ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? Container(
                        width: MediaQuery.of(context).size.width * .11,
                        height: MediaQuery.of(context).size.height * .07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColor.creamColor),
                        child: Center(
                          child: Image.asset(
                            'asset/business.png',
                            color: Colors.white,
                            height: 31,
                            width: 31,
                          ),
                        ),
                      )
                    : Image.asset(
                        'asset/business.png',
                        height: 31,
                        width: 31,
                      ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 2
                    ? Container(
                        width: MediaQuery.of(context).size.width * .11,
                        height: MediaQuery.of(context).size.height * .07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColor.creamColor),
                        child: Center(
                          child: Image.asset(
                            'asset/person.png',
                            color: Colors.white,
                            height: 31,
                            width: 31,
                          ),
                        ),
                      )
                    : Image.asset(
                        'asset/person.png',
                        height: 31,
                        width: 31,
                      ),
                label: '',
              ),
            ]),
        body: pages[_selectedIndex],
      ),
    );
  }
}
