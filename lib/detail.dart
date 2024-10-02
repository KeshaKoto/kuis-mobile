import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class DetailPage extends StatelessWidget {
  DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DETAIL UPN"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar
            Center(
              child: Image.asset(
                'assets/images/upn.jpg',
                height: 300,
              ),
            ),

            SizedBox(height: 16),
            // Judul
            Text(
              'Detail UPNVY',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Deskripsi
            FutureBuilder<String>(
              future: _loadText(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return Text(
                    snapshot.data ?? '',
                    style: TextStyle(fontSize: 16),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<String> _loadText() async {
    return await rootBundle.loadString('assets/narasi_detail.txt');
  }
}
