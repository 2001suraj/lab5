import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 270,
              color: Colors.purple,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZuDDDwM4OArIfKDmhXbiLUS4cUVaOAqeAkA&usqp=CAU"),
                    ),
                  ),
                  Text(
                    "Ram Hari Thapa",
                    style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "abc@gmail.com",
                    style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            const ListTile(
              leading: Icon(Icons.favorite),
              title: Text("favorite"),
            ),
            const ListTile(
              leading: Icon(Icons.webhook_outlined),
              title: Text("WorkFLow"),
            ),
            const ListTile(
              leading: Icon(Icons.update),
              title: Text("Update"),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.psychology),
              title: Text("Plugins"),
            ),
            const ListTile(
              leading: Icon(Icons.notification_add),
              title: Text("Notification"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
    );
  }
}
