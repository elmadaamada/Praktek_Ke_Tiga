import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gojek', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Favorites',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Edit'),
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.green))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildGridItem(
                          'GoRide',
                          'https://th.bing.com/th/id/OIP.PL5Y0LMc_zEcPimxg7SUBAHaDt?w=330&h=174&c=7&r=0&o=5&dpr=1.2&pid=1.7',
                          '', // Deskripsi dikosongkan
                        ),
                        _buildGridItem(
                          'GoCar',
                          'https://2.bp.blogspot.com/-Q3gO5eBlbdc/WV_qlGiHFXI/AAAAAAAAHAA/Y3vKE6MXUR4uIcu13eao4ZIALHaMoofmQCLcBGAs/s1600/gocar.jpg',
                          '',
                        ),
                        _buildGridItem(
                          'GoFood',
                          'https://i2.wp.com/www.desaintasik.com/wp-content/uploads/2020/01/gofood2-desaintasik.png?resize=378%2C290&ssl=1',
                          '',
                        ),
                        _buildGridItem(
                          'GoSend',
                          'https://th.bing.com/th/id/OIP.7cd0fOKCZnQtQz4gfFDC8AAAAA?rs=1&pid=ImgDetMain',
                          '',
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildGridItem(
                          'GoMart',
                          'https://4.bp.blogspot.com/-XzigD6yQfXc/WHW7o2i4p8I/AAAAAAAAmJA/Pj9103JSDTEI8_VPfgY0z_ESVaL6_MwtgCLcB/s1600/cara-belanja-dengan-go-mart-jika-toko-dan-barang-tidak-ada-di-list.jpg',
                          '',
                        ),
                        _buildGridItem(
                          'GoPulsa',
                          'https://4.bp.blogspot.com/-KQ0nVOwf9tw/XC3hB__Ij0I/AAAAAAAAI5s/-5Jc4BQ2bZ806cxgyAbDf-FQ1JLuYRJ-gCLcBGAs/s1600/Screenshot_20190103_165228.jpg',
                          '',
                        ),
                        _buildGridItem(
                          'Check In',
                          'https://th.bing.com/th/id/R.0585cb7fd413f285542af0e75d6c1054?rik=JnPb%2fzIk6aBxOg&riu=http%3a%2f%2fengb.bru.ac.th%2fwp-content%2fuploads%2f2020%2f01%2fonline-check-in.jpg&ehk=F7B6z6uP4OXV5gsKw4YwfF685YiuR3rsqczdhEXvlFU%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1',
                          'Description 9',
                        ),
                        _buildGridItem('', null, ''), // Grid terakhir tanpa isi
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(String title, String? imageUrl, String description) {
    return Expanded(
      child: InkWell(
        onTap: () {
          // Tambahkan logika ketika item ditekan di sini
          print('Item $title ditekan');
        },
        child: imageUrl != null
            ? Card(
                elevation: 0, // Menghilangkan shadow
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Mengatur border radius
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        imageUrl,
                        width: 32, // Atur lebar gambar
                        height: 32, // Atur tinggi gambar
                        fit: BoxFit.cover, // Sesuaikan tata letak gambar
                      ),
                      SizedBox(height: 4),
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12, // Ukuran teks
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 10, // Ukuran teks deskripsi
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : SizedBox(), // Widget kosong jika imageUrl null
      ),
    );
  }
}
