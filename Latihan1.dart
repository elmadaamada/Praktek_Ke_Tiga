import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // Data untuk menyimpan informasi nama, hobi, dan path gambar
  final List<Map<String, String>> data = [
    {
      'name': 'Haruto',
      'hobby': 'Snorkeling',
      'imagePath':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    },
    {
      'name': 'Aria',
      'hobby': 'Traveling',
      'imagePath':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    },
    {
      'name': 'Juna',
      'hobby': 'Cooking',
      'imagePath':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List dan Card',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List dan Card'),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: const Duration(seconds: 1),
                        content:
                            Text('Halo ${data[index]['name'] ?? 'Unknown'}'),
                      ),
                    );
                  },
                  leading: Image.network(
                    data[index]['imagePath']!, // Path gambar dari data
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    '${data[index]['name']?.toUpperCase() ?? 'Unknown'}', // Nama huruf besar dan bold, dengan pengecekan null
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '${data[index]['hobby']}', // Hobi di bawah nama, lebih kecil dan tipis
                    style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  trailing: PopupMenuButton<String>(
                    // Opsi titik tiga di sebelah kanan
                    itemBuilder: (BuildContext context) {
                      return ['Option 1', 'Option 2', 'Option 3']
                          .map((String choice) {
                        return PopupMenuItem<String>(
                          value: choice,
                          child: Text(choice),
                        );
                      }).toList();
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
