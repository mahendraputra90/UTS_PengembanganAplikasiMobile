import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
        child: CircleAvatar(
      radius: 90,
      backgroundImage: AssetImage("img/koyo.png"),
    ));

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'I Made Mahendra Putra',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );

    Widget descriptionSection = Container(
        padding: EdgeInsets.all(16),
        child: Text(
          'Saya Mahendra Putra seorang Mahasiswa Undiknas jurusan Teknologi Informasi, yang masih mencari jatidiri',
          textAlign: TextAlign.justify,
        ));

    Widget rateSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star),
      ],
    );

    Widget reviewSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        rateSection,
        Text('My Social Media'),
      ],
    );

    Widget menuSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildMenuSection(Icons.facebook, "Facebook", "Mahendra Putra"),
        _buildMenuSection(Icons.whatsapp, "085374064654", "MahendraKoyo"),
        _buildMenuSection(Icons.telegram, "085374064654", "MahendraKoyo"),
      ],
    );

    return MaterialApp(
      title: 'Material Apps',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 4, 0, 255),
        ),
        body: ListView(
          children: [
            imageSection,
            titleSection,
            descriptionSection,
            Container(
              padding: EdgeInsets.only(bottom: 24),
              child: reviewSection,
            ),
            menuSection,
          ],
        ),
      ),
    );
  }
}

Widget _buildTextSection(
  String text,
  double textSize,
  double paddingTop,
) {
  return Container(
    padding: EdgeInsets.only(top: paddingTop),
    child: Text(
      text,
      style: TextStyle(
        fontSize: textSize,
      ),
    ),
  );
}

Widget _buildMenuSection(
  IconData iconData,
  String title,
  String timestamp,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(iconData),
      _buildTextSection(title, 16, 8),
      _buildTextSection(timestamp, 12, 12),
    ],
  );
}
