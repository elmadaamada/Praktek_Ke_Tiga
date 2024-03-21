import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TwitterProfile(),
    );
  }
}

class TwitterProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100, // Tinggi header
            color: Colors.grey[300],
            child: Image.network(
              'https://pbs.twimg.com/profile_banners/3742082753/1588238027/1500x500', // URL gambar header
              fit: BoxFit.cover, // Sesuaikan tata letak gambar
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50, // Lebar foto profil
                    height: 50, // Tinggi foto profil
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://pbs.twimg.com/profile_images/1255787417463689217/xiLi1KIM_400x400.jpg'), // URL gambar profil
                        fit: BoxFit.cover, // Sesuaikan tata letak gambar
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'UPN "Veteran" Jawa Timur',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '@upnvjt_official',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'AKUN RESMI UPN "VETERAN" JAWA TIMUR Dikelola oleh Humas UPN "Veteran" Jawa Timur Kampus Bela Negara',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Translate bio', // Tulisan yang bisa diterjemahkan
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Follow'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
