//2380254
//SYED ALI IMRAN
import 'package:flutter/material.dart';

void main() => runApp(const WhatsAppClone());

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color(0xFF075E54),
          actions: const [
            Icon(Icons.camera_alt, color: Colors.white),
            SizedBox(width: 15),
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 15),
            Icon(Icons.more_vert, color: Colors.white),
            SizedBox(width: 10),
          ],
        ),
        body: ListView(
          children: const [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: Text('Lab Partner', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Did you push the code to GitHub yet?'),
              trailing: Text('10:30 AM', style: TextStyle(color: Colors.grey, fontSize: 12)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: Text('Study Group', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Let us review the digital circuits notes later.'),
              trailing: Text('Yesterday', style: TextStyle(color: Colors.grey, fontSize: 12)),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF25D366),
          child: const Icon(Icons.message, color: Colors.white),
        ),
      ),
    );
  }
}