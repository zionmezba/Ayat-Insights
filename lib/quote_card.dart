import 'package:ayat_and_insights/hex_color.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'hex_color.dart';
import 'package:provider/provider.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final void Function() favourite;

  QuoteCard({required this.quote, required this.favourite});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              quote.source,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border_outlined),
                  iconSize: 30,
                  color: Colors.red,
                  onPressed: favourite,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
