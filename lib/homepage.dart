import 'package:flutter/material.dart';
import 'package:mobile_wdmb_p03/events_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List events = [
    {1, "autonomous Mobile Robotics", "Designing,buiilding.."},
    {2, "Cloud", "Designing,buiilding.."},
    {3, "Cyber", "Designing,buiilding.."},
    {4, "3D", "Designing,buiilding.."},
    {5, "It Software", "Designing,buiilding.."},
    {6, "Mobile", "Designing,buiilding.."},
    {7, "information", "Designing,buiilding.."},
    {8, "Web tech", "Designing,buiilding.."},
  ];

  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WORLDSKILL 2024 LOGO"),
        centerTitle: true,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.blue,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.event),
            icon: Icon(Icons.home_outlined),
            label: 'Events',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.question_answer)),
            label: 'Register',
          ),
          NavigationDestination(
            icon: Badge(
              child: Icon(Icons.settings),
            ),
            label: 'Details',
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Search'),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Image.asset('lib/assets/1.png'),
              Image.asset('lib/assets/2.png'),
              Image.asset('lib/assets/3.png'),
              Image.asset('lib/assets/4.png'),
              Image.asset('lib/assets/5.png'),
              Image.asset('lib/assets/6.png'),
              Image.asset('lib/assets/7.png'),
              Image.asset('lib/assets/8.png'),
              
            ],
          )
        ],
      ),
    );
  }
}
