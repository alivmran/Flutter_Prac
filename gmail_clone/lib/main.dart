//2380254
//SYED ALI IMRAN
import 'package:flutter/material.dart';

void main() => runApp(const GmailClone());

class GmailClone extends StatelessWidget {
  const GmailClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Search in emails'),
          leading: const Icon(Icons.menu),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.deepPurple,
                child: Text('S', style: TextStyle(color: Colors.white)),
              ),
            )
          ],
        ),
        body: ListView(
          children: const [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text('G', style: TextStyle(color: Colors.white)),
              ),
              title: Text('GitHub', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('New login from VS Code...\nWe noticed a new login to your account.'),
              isThreeLine: true,
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('9:00 AM', style: TextStyle(fontSize: 12)),
                  SizedBox(height: 5),
                  Icon(Icons.star_border, size: 20),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: const Icon(Icons.edit),
          label: const Text('Compose'),
          backgroundColor: Colors.red[100],
          foregroundColor: Colors.red[900],
        ),
      ),
    );
  }
}