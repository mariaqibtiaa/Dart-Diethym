import 'package:flutter/material.dart';
// ignore: unused_import
import 'main.dart';

class MenuDiet {
  final String gambar;
  final String judul;
  final String deskripsi;

  MenuDiet(this.gambar, this.judul, this.deskripsi);
}

class HomeScreen extends StatelessWidget {
  final List<MenuDiet> menudiet = [
    MenuDiet(
        'https://images.unsplash.com/photo-1571748982800-fa51082c2224?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80',
        'Makan Pagi',
        '1. segelas jus jambu + semangkuk oatmeal dan juga tambahkan potongan pisang \n\n2. segelas susu rendah lemak + roti gandum bakar + selai kacang \n\n3. segelas jus strawberi + oatmeal tambahkan potongan strawberi \n\n4. segelas jus alpukat + beberapa keping biskuit gandum \n\n5. segelas susu rendah lemak + roti gandum bakar dan tambahkan potongan pisang'),
    MenuDiet(
        'https://images.unsplash.com/photo-1505714197102-6ae95091ed70?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
        'Makan Siang',
        '1. segelas jus jambu + sepiring kecil nasi merah + sup ayam tanpa lemak + sambal kecap \n\n2. jus jeruk + sepiring kecil nasi merah + pepes ikan bandeng + mentimun \n\n3. segelas jus strawberi + capcai kuah sayuran + telur + potongan ayam tanpa lemak + sambal kecap \n\n5.semangkuk es buah + sepiring kecil nasi merah + dada ayam bakar + sambal bawang + lalapan \nsegelas jus strawberi + sepiring kecil nasi merah + ca kangkung + sebutir telur rebus'),
    MenuDiet(
        'https://images.unsplash.com/photo-1504712598893-24159a89200e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=751&q=80',
        'Makan Sore',
        '1. segelas jus alpukat + sepiring kecil omelet sayur \n\n2. semangkuk es buah + sepiring kecil nasi merah + ikan bakar + sambal trasi + lalapan \n\n3. segelas air putih + sepiring kecil fu yung hay sayur Makan \n\n4. segelas jus jambu + oatmeal (tambahkan potongan pisang dan strawberi \n\n5. segelas jus jambu + sepiring kecil nasi merah + sup ayam tanpa lemak + sambal kecap )'),
    MenuDiet(
        'https://images.unsplash.com/photo-1588710920403-dacfbae1a640?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80',
        'Makan Malam',
        '1. segelas air putih + sepiring kecil nasi merah + orak-arik sayur + sambal kecap/tomat \n\n2. salad buah + yogurt rendah lemak + beberapa keping biskuit gandum \n\n3. segelas air putih + roti (gandum) bakar + selai kacang \n\n4. segelas air putih + capcay kuah \n\n5. segelas air putih + salad buah + yogurt rendah lemak'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Diethym",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
        ),
    );
  }

  class DetailMenuDiet extends StatelessWidget {
  final MenuDiet menudiet;

  DetailMenuDiet({Key key, @required this.menudiet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bagdesk = Container(
      padding: EdgeInsets.all(45.0),
      child: Text(
        menudiet.deskripsi,
        softWrap: true,
        textAlign: TextAlign.justify,
        style: new TextStyle(
          fontSize: 14.0,
          letterSpacing: 2.0,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          menudiet.judul,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
            menudiet.gambar,
            width: 600,
            fit: BoxFit.cover,
          ),
          bagdesk,
        ],
      ),
    );
  }
  }
}
