import 'package:flutter/material.dart';
import 'package:quotes_flutter_app/folders/quote.dart';
import 'package:quotes_flutter_app/widgets/quote_card_widget.dart';


class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote('Be yourself; everyone else is already taken', 'author', 2),
    Quote('I have nothing to declare except my genius', 'author', 2),
    Quote('The truth is rarely pure and never simple', 'author', 2),
    Quote('The light is above you', 'author', 2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text('Awesome quotes'), centerTitle: true, backgroundColor: Colors.redAccent,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: quotes.map((quote) => 
          QuoteCardWidget(quote: quote)
        ).toList(),
      )
    );
  }
}
