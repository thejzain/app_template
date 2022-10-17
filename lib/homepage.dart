import 'package:flutter/material.dart';
import 'map.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.white10,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.white10,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.white10,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.white10,
          ),
        ),
      ],
    ),
    SizedBox(
      width: 300,
      child: TextField(
        decoration: InputDecoration(
          labelText: "Search here",
        ),
        style: TextStyle(fontSize: 20),
      ),
    ),
    mapPage()
  ];

  void _onitemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          "HomePage",
        ),
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onitemTapped,
        elevation: 100,
        type: BottomNavigationBarType.fixed,
        //iconSize: 30,
        selectedFontSize: 15,
        selectedIconTheme: IconThemeData(size: 35),
        selectedItemColor: Colors.amber,
        backgroundColor: Colors.white10,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on), label: "Location")
        ],
      ),
    );
  }
}
