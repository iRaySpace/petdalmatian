import 'package:flutter/material.dart';
import 'package:petdalmatian/screens/clinic_screen.dart';
import 'package:petdalmatian/utils/routes.dart';

class ListingScreen extends StatefulWidget {
  @override
  _ListingScreenState createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  void selectClinic(String name) {
    navigateTo(
      context,
      ClinicScreen(name),
      asReplacement: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('PetDalmatian'),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 15.0,
              ),
              title: Text('Clinic A'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dentistry, Examination'),
                  Text('Prices from ₱100.00'),
                ],
              ),
              trailing: Icon(
                Icons.insert_photo,
                size: 50.0,
              ),
              onTap: () => selectClinic('Clinic A'),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 15.0,
              ),
              title: Text('Clinic B'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dentistry'),
                  Text('Prices from ₱500.00'),
                ],
              ),
              trailing: Icon(
                Icons.insert_photo,
                size: 50.0,
              ),
              onTap: () => selectClinic('Clinic B'),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 15.0,
              ),
              title: Text('Clinic C'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Surgery, Examination'),
                  Text('Prices from ₱750.00'),
                ],
              ),
              trailing: Icon(
                Icons.insert_photo,
                size: 50.0,
              ),
              onTap: () => selectClinic('Clinic C'),
            ),
          ],
        ),
      ),
    );
  }
}
