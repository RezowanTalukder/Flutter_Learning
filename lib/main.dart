import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));


class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author:'rez1', text:'Im selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you cant handle me at my worst, then you sure as hell dont deserve me at my best.'),
    Quote(author:'rez1', text:'Im selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you cant handle me at my worst, then you sure as hell dont deserve me at my best.'),
    Quote(author:'rez1', text:'Im selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you cant handle me at my worst, then you sure as hell dont deserve me at my best.'),
    Quote(author:'rez1', text:'Im selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you cant handle me at my worst, then you sure as hell dont deserve me at my best.'),
    Quote(author:'rez1', text:'Im selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you cant handle me at my worst, then you sure as hell dont deserve me at my best.'),
    Quote(author:'rez1', text:'Im selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you cant handle me at my worst, then you sure as hell dont deserve me at my best.'),
    Quote(author:'rez1', text:'Im selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you cant handle me at my worst, then you sure as hell dont deserve me at my best.'),
    Quote(author:'rez1', text:'Im selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you cant handle me at my worst, then you sure as hell dont deserve me at my best.'), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Third App'),
        centerTitle: true,
        backgroundColor: Colors.redAccent[200],
       ),

       body: Column(
         children: quotes.map((quote) => QuoteCard(quote:quote)).toList(),

         )
    );
  }
}

class QuoteCard extends StatelessWidget {
  
  final Quote quote ;
  QuoteCard({ this.quote })

  @override
  Widget build(BuildContext context) {
    return Card( 
      margin: EdgeInsets.fromLTRB(15, 15, 15,1),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text( 
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
               ),
            ),

            SizedBox(height: 6,),
            Text(
              quote.author,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16,
               ),
             )
          ],
         ),
      ),
    );
  }
}