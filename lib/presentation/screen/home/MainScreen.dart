import 'package:flutter/material.dart';
import 'package:hotalbookingapp/core/constants/my_assets.dart';
import 'package:hotalbookingapp/core/constants/my_colors.dart';
import 'package:hotalbookingapp/presentation/screen/home/home_screen_imports.dart';

/// Flutter code sample for [BottomNavigationBar].

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Request Screen',
      style: optionStyle,
    ),
    Text(
      'Booking',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(MyAssets.home)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(MyAssets.request)),
            label: 'Requests',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(MyAssets.booking)),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(MyAssets.profile)),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
       selectedItemColor: MyColors.primaryColor,
      
        unselectedItemColor: MyColors.bottomtextcolor,
        selectedLabelStyle: const TextStyle(fontSize: 12,fontFamily: "Lato",fontWeight: FontWeight.w700,letterSpacing: 0.2),
        
        showUnselectedLabels: true,
        
        unselectedLabelStyle: const TextStyle(color: MyColors.bottomtextcolor,fontSize: 12,fontFamily: "Lato",fontWeight: FontWeight.w700),
        onTap: _onItemTapped,
      ),
    );
  }
}