import 'package:flutter/material.dart';
import 'package:petdalmatian/screens/confirm_screen.dart';
import 'package:petdalmatian/utils/routes.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  void confirm() {
    navigateTo(
      context,
      ConfirmScreen(),
      asReplacement: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Schedule'),
        centerTitle: true,
        actions: [
          TextButton(
            child: Text(
              'Confirm',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: confirm,
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              title: Text('November 9, 10:00 - 11:00AM'),
              subtitle: Text('Dr. John Doe'),
              trailing: Icon(Icons.calendar_today),
            ),
            ListTile(
              title: Text('November 10, 10:00 - 11:00AM'),
              subtitle: Text('Dr. John Doe'),
              trailing: Icon(Icons.calendar_today),
            ),
            ListTile(
              title: Text('November 11, 10:00 - 11:00AM'),
              subtitle: Text('Dr. John Doe'),
              trailing: Icon(Icons.calendar_today),
            ),
            ListTile(
              title: Text('November 12, 10:00 - 11:00AM'),
              subtitle: Text('Dr. John Doe'),
              trailing: Icon(Icons.calendar_today),
            ),
          ],
        ),
      ),
    );
  }
}
