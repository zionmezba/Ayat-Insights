import 'package:flutter/material.dart';
import 'hex_color.dart';
import 'quote.dart';
import 'quote_card.dart';

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
  Color barColor = HexColor("FFD684");
  Color bgColor = HexColor("FBE5B1");

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text("Ayat & Insights"),
        centerTitle: true,
        backgroundColor: barColor,
      ),
      body: Column(
        children: ayatIns.map((quote) => QuoteCard(
            quote: quote,
          favourite: () {
              setState(() {
                  Icons.favorite_outline_rounded; // Change to your desired icon
              });
          }
        )).toList(),
      ),
    );
  }
}




