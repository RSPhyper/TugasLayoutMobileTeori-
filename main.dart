import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment Layout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Payment PayPal'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jumlah Pembayaran',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Jumlah',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Metode Pembayaran',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 8),
              DropdownButtonFormField(
                items: ['OVO', 'GoPay', 'Dana', 'LinkAja']
                    .map((method) => DropdownMenuItem(
                          value: method,
                          child: Text(method),
                        ))
                    .toList(),
                onChanged: (value) {
                  // Aksi yang ingin dijalankan saat metode pembayaran dipilih
                },
                decoration: InputDecoration(
                  labelText: 'Pilih Metode Pembayaran',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                  onPressed: () {
                    // Aksi yang ingin dijalankan saat tombol bayar ditekan
                  },
                  child: Text('Bayar'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
