import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: AyatLists(),
  ));
}

class AyatLists extends StatefulWidget {
  const AyatLists({super.key});

  @override
  State<AyatLists> createState() => _AyatListsState();
}

class _AyatListsState extends State<AyatLists> {
  Color bar_color = HexColor("FFD684");
  Color bg_color = HexColor("FBE5B1");

  List<Quote> ayatIns = [
    Quote(
        text:
            "And We have certainly created man and We know what his soul whispers to him, and We are closer to him than [his] jugular vein.",
        source: "Quran 50:16"),
    Quote(
        text:
            "Kindness is a mark of faith, and whoever is not kind has no faith.",
        source: "Sahih Muslim"),
    Quote(text: "Speak good or remain silent.", source: "Bukhari"),
    Quote(text: "Indeed, with hardship comes ease.", source: "Quran 94:6"),
    Quote(
        text:
            "The strong person is not the one who can wrestle others down. The strong person is the one who can control himself when he is angry.",
        source: "(Bukhari & Muslim)"),
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              quote.source,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        title: Text("Ayat & Insights"),
        centerTitle: true,
        backgroundColor: bar_color,
      ),
      body: Column(
        children: ayatIns.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
