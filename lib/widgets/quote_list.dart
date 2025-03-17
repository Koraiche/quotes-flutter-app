import 'package:flutter/material.dart';
import 'package:quotes_flutter_app/folders/quote.dart';


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
        Container(
          color:Colors.redAccent[100], 
          margin: EdgeInsets.fromLTRB(30, 10, 30, 0), 
          padding:EdgeInsets.fromLTRB(30, 10, 30, 15), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(quote.content),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text('Written by : ${quote.author}'),
                Text('Likes by : ${quote.likes}')
              ],),
              
            ],
          ))
        ).toList(),
      )
    );
  }
}