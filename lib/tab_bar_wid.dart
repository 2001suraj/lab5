import 'package:flutter/material.dart';

class TabBarWidgets extends StatelessWidget {
  const TabBarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            centerTitle: true,
            title: const Text("My Tab Bar"),
            bottom: const TabBar(
              unselectedLabelColor: Colors.white,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Tab 1',
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: 'Tab 2',
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Tab 3',
                )
              ],
            ),
          ),
          body: TabBarView(children: [
            Container(
              color: Colors.amber,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Text("Tab 1"),
              ),
            ),
            Container(
              color: Colors.blue,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Text("Tab 2"),
              ),
            ),
            Container(
              color: Colors.red,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Text("Tab 3"),
              ),
            ),
          ]),
        ));
  }
}
