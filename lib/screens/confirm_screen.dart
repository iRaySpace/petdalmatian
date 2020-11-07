import 'package:flutter/material.dart';
import 'package:petdalmatian/screens/successful_screen.dart';
import 'package:petdalmatian/utils/routes.dart';

class ConfirmScreen extends StatefulWidget {
  @override
  _ConfirmScreenState createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  void confirm() async {
    final hasConfirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text(
          'Once confirmed, you will never be able to reverse the appointment.',
        ),
        actions: [
          TextButton(
            child: Text('Confirm'),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
        ],
      ),
    );
    if (hasConfirmed) {
      navigateTo(
        context,
        SuccessfulScreen(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your order'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 35.0),
        child: ListView(
          children: [
            Column(
              children: [
                Icon(
                  Icons.add_shopping_cart,
                  color: Theme.of(context).primaryColor,
                  size: 48.0,
                ),
                Text(
                  'Summary',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text('Examination'),
              trailing: Text('₱100.00'),
            ),
            ListTile(
              title: Text('Surgery'),
              trailing: Text('₱100.00'),
            ),
            ListTile(
              title: Text(
                'Total',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                '₱200.00',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 48.0,
        child: FlatButton(
          color: Theme.of(context).primaryColor,
          textColor: Colors.white,
          child: Text('Confirm'),
          onPressed: confirm,
        ),
      ),
    );
  }
}
