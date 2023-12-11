import 'package:flutter/material.dart';

class ButtomNavigationbarWidget extends StatefulWidget {
  const ButtomNavigationbarWidget({super.key});

  @override
  State<ButtomNavigationbarWidget> createState() => _ButtomNavigationbarWidgetState();
}

class _ButtomNavigationbarWidgetState extends State<ButtomNavigationbarWidget> {
  List<Widget> pages = const [HomeSS(), FavSS(), UserSS()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Button Navigation Bar",
        ),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'favorite',
            icon: Icon(
              Icons.favorite,
            ),
          ),
          BottomNavigationBarItem(
            label: 'user',
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}

class HomeSS extends StatelessWidget {
  const HomeSS({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      color: Colors.amber,
      child: Center(child: Text("Home screen")),
    );
  }
}

class FavSS extends StatelessWidget {
  const FavSS({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      color: Colors.red,
      child: Center(child: Text("Favorite screen")),
    );
  }
}

class UserSS extends StatelessWidget {
  const UserSS({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      color: Colors.green,
      child: Center(child: Text("User screen")),
    );
  }
}
