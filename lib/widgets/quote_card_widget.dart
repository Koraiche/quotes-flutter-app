import 'package:flutter/material.dart';
import 'package:quotes_flutter_app/folders/quote.dart';

class QuoteCardWidget extends StatelessWidget {
  const QuoteCardWidget({
    super.key,
    required this.quote,
  });

  final Quote quote;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Container(
        height: 110, // Set a fixed height for the card
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(quote.content, style: TextStyle(fontSize: 18, color: Colors.grey[600])),
            SizedBox(height: 6.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end, 
              crossAxisAlignment: CrossAxisAlignment.end, 
              children: [
                  Text('Written by : ${quote.author}, ', style: TextStyle(fontSize: 14, color: Colors.grey[800])),
                  Text('Liked by : ${quote.likes}', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14, color: Colors.redAccent[700]))
                ],)
          ]
        ),
      )
    );
  }
}