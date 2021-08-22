import 'package:flutter/material.dart';
class BottomNavigationBarController extends StatefulWidget {
  const BottomNavigationBarController({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarControllerState createState() => _BottomNavigationBarControllerState();
}

class _BottomNavigationBarControllerState extends State<BottomNavigationBarController> {
  int _selectedIndex=0;
  List<Widget> pages=[];
  @override
  void initState() {
   // pages.add(FirstPage());
    //pages.add(SecondPage());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ABC"),
      ),
      body: IndexedStack(
        children: pages,
        index:  _selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:
          const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.message,),
                label: 'Message',
                backgroundColor: Colors.orange
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Classroom',
                backgroundColor: Colors.deepPurpleAccent
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.category,),
                label: 'Settings',
                backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_chart,),
                label: 'Profile',
                backgroundColor: Colors.yellow
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.message,),
                label: 'Info',
                backgroundColor: Colors.green
            ),
        ],
        currentIndex: _selectedIndex,
        onTap: tap,
        selectedItemColor: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addDynamic,
        child: Icon(Icons.add),

      ),
    );
  }
  addDynamic(){
    if(pages.length != 0){
//      floatingIcon = new Icon(Icons.add);
    }
    setState(() {});
    if (pages.length >= 10) {
      return;
    }
//    pages.add(new dynamic());
  }
  void tap(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
}
