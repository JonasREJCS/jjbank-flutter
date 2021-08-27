import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text('+ RS 100,00'),
                subtitle: Text('1000'),
              )
            ),
            Card(
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text('+ RS 200,00'),
                  subtitle: Text('1200'),
                )
            ),
          ],
        ),
        appBar: AppBar(
          title: Text(
            'Transactions',
          ),
          backgroundColor: Colors.purpleAccent,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: null,
        ),
      ),
    ));
