import 'package:flutter/material.dart';
import 'package:petdalmatian/screens/schedule_screen.dart';
import 'package:petdalmatian/utils/routes.dart';

class ClinicScreen extends StatefulWidget {
  const ClinicScreen(
    this.name, {
    Key key,
  });

  final String name;

  @override
  _ClinicScreenState createState() => _ClinicScreenState();
}

class _ClinicScreenState extends State<ClinicScreen> {
  void proceed() {
    navigateTo(
      context,
      ScheduleScreen(),
      asReplacement: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 192.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.name),
              centerTitle: true,
            ),
            elevation: 0.0,
            actions: [
              TextButton(
                onPressed: proceed,
                child: Text(
                  'Proceed',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ListTile(
                  title: Text('Lorem'),
                  subtitle: Text('₱100.00'),
                  trailing: Icon(
                    Icons.insert_photo,
                    size: 50.0,
                  ),
                ),
                ListTile(
                  title: Text('Ipsum'),
                  subtitle: Text('₱250.00'),
                  trailing: Icon(
                    Icons.insert_photo,
                    size: 50.0,
                  ),
                ),
                ListTile(
                  title: Text('Dolor'),
                  subtitle: Text('₱500.00'),
                  trailing: Icon(
                    Icons.insert_photo,
                    size: 50.0,
                  ),
                ),
                ListTile(
                  title: Text('Category B'),
                ),
                ListTile(
                  title: Text('Sit'),
                  subtitle: Text('₱100.00'),
                  trailing: Icon(
                    Icons.insert_photo,
                    size: 50.0,
                  ),
                ),
                ListTile(
                  title: Text('Amet'),
                  subtitle: Text('₱250.00'),
                  trailing: Icon(
                    Icons.insert_photo,
                    size: 50.0,
                  ),
                ),
                ListTile(
                  title: Text('Surgery'),
                  subtitle: Text('₱500.00'),
                  trailing: Icon(
                    Icons.insert_photo,
                    size: 50.0,
                  ),
                ),
                ListTile(
                  title: Text('Category C'),
                ),
                ListTile(
                  title: Text('Examination'),
                  subtitle: Text('₱250.00'),
                  trailing: Icon(
                    Icons.insert_photo,
                    size: 50.0,
                  ),
                ),
                ListTile(
                  title: Text('Surgery'),
                  subtitle: Text('₱500.00'),
                  trailing: Icon(
                    Icons.insert_photo,
                    size: 50.0,
                  ),
                ),
                ListTile(
                  title: Text('Category D'),
                ),
                ListTile(
                  title: Text('Surgery'),
                  subtitle: Text('₱500.00'),
                  trailing: Icon(
                    Icons.insert_photo,
                    size: 50.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
