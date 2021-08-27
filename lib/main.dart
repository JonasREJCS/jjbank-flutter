import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        body: TransactionList(),
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

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionItem(Transaction(300.00, 1002)),
        TransactionItem(Transaction(1300.00, 1001)),
        TransactionItem(Transaction(100.00, 2002)),
        TransactionItem(Transaction(3300.00, 2022)),
      ],
    );
  }
}

class TransactionItem extends StatelessWidget {
  final Transaction _transaction;

  TransactionItem(this._transaction);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text(_transaction.value.toString()),
      subtitle: Text(_transaction.accountNumber.toString()),
    ));
  }
}

class Transaction {
  final double value;
  final int accountNumber;

  Transaction(this.value, this.accountNumber);
}
