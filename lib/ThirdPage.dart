import 'package:flutter/material.dart';

import 'FifthPage.dart';
import 'FourthPage.dart';
class BottomNavigationBarController extends StatefulWidget {
  const BottomNavigationBarController({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarControllerState createState() => _BottomNavigationBarControllerState();
}

class _BottomNavigationBarControllerState extends State<BottomNavigationBarController> {
  int _selectedPage = 0;
  List<Widget> pageList = [];

  @override
  void initState() {
    pageList.add(HomeScreen());
    pageList.add(InboxScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedPage,
        children: pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'First Page',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Second Page',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.vpn_key_rounded),
            label: 'First Page',
          ),
        ],
        currentIndex: _selectedPage,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

}
