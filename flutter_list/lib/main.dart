import 'package:flutter/material.dart';
import 'package:flutter_list/quote.dart';
import 'package:flutter_list/quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
  Quote(author: 'Vedant Dalvi', text: 'If you think money can\'t buy transfer it over to my account'),
  Quote(author: 'Vedant Dalvi', text: 'Try Try but don\'t Cry'),
  Quote(author: 'Vedant Dalvi', text: 'Work hard in silence and let success make the noise'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('List of Quotes'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() => quotes.remove(quote));
          }
        )).toList(),
      ),
    );
  }
}
