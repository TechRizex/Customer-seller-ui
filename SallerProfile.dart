import 'package:flutter/material.dart';

class Sallerprofile extends StatefulWidget {
  const Sallerprofile({Key? key}) : super(key: key);

  @override
  State<Sallerprofile> createState() => _SallerprofileState();
}

class _SallerprofileState extends State<Sallerprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                // Gradient background color
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.purple,
                        Colors.indigo], // Gradient colors
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)), // Optional: add rounded corners to the bottom
                  ),
                ),
                Positioned(
                  top: 60,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/Images/user_avtar.png'), // Replace with actual image
                  ),
                ),
                Positioned(
                  top: 180,
                  child: Column(
                    children: [
                      Text(
                        'Rahul Singh',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'XYZ Store',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Personal Information',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text('Edit'),
                              ),
                            ],
                          ),
                          Divider(),
                          buildInfoField('Name', 'Rahul Singh'),
                          buildInfoField('Father\'s Name', '(optional)'),
                          buildInfoField('Date of Birth', '(optional)'),
                          buildInfoField('Address', '(optional)'),
                          buildInfoField('Phone Number', '+91-84482-92236'),
                          buildInfoField('E-Mail', 'XYZ@abc.com'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoField(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
