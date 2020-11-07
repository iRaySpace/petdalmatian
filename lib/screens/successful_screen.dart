import 'package:flutter/material.dart';
import 'package:petdalmatian/screens/listing_screen.dart';
import 'package:petdalmatian/utils/routes.dart';

class SuccessfulScreen extends StatefulWidget {
  @override
  _SuccessfulScreenState createState() => _SuccessfulScreenState();
}

class _SuccessfulScreenState extends State<SuccessfulScreen> {
  void listing() {
    navigateClearTo(
      context,
      ListingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check,
                size: 48.0,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(height: 10.0),
              Text(
                'Appointment confirmed!',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Your appointment with Dr. John Doe on November 11 at 10:00 - 11:00 AM has been submitted.',
              ),
              SizedBox(height: 35.0),
              SizedBox(
                height: 45.0,
                width: double.infinity,
                child: FlatButton(
                  onPressed: listing,
                  child: Text('Return to Listing'),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
