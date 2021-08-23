import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex=0;
  int ind=0;
  List<DynamicWidget> pages=[];

  addDynamic(){
    pages.add(new DynamicWidget());
    setState(() {
    });
  }
  removeDynamic(){
    setState(() {
      pages.removeAt(_selectedIndex);
    });
  }

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
          children: [
            Stack(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Flexible(
                          child: ListView.builder(
                            addAutomaticKeepAlives: false,
                            itemBuilder: (_,index)=>pages[index],
                            itemCount: pages.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: FloatingActionButton(
                        onPressed: removeDynamic,
                        child: Icon(Icons.remove)),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                        onPressed: addDynamic,
                        child: Icon(Icons.add)),
                  ),
                ]
            ),
          ]
      ),
    );
  }
  void tap(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
}
class DynamicWidget extends StatelessWidget {
  const DynamicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
          title: Text("Classroom",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          onTap: null,
          leading: FlutterLogo(),
        )
    );
  }
}

