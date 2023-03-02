// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:medical_app/View/Widgets/appointment_card.dart';
import 'package:medical_app/View/Widgets/circular_card.dart';

class HomeScreen extends StatefulWidget {
  final String user_name;

  const HomeScreen({
    super.key,
    required this.user_name,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                Image.asset(
                  'assets/doctor.jpg',
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                ),
              ],
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://www.workdaystl.org/wp-content/uploads/2018/01/female-square-1.jpg'),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[700],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: IconButton(
                        iconSize: 25,
                        color: Colors.white,
                        onPressed: _notifications,
                        icon: Icon(Icons.notifications),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 80,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    widget.user_name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Have a nice day 😊',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextButton.icon(
                    onPressed: _urgentCare,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    icon: Padding(
                      padding:
                          const EdgeInsets.only(top: 5, bottom: 5, left: 5),
                      child: Icon(
                        Icons.add_alert,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    label: Padding(
                      padding:
                          const EdgeInsets.only(top: 5, bottom: 5, right: 5),
                      child: Text(
                        'Urgent Care',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 240,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          'Ecare Services',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 20),
                        CircularCard(
                          img:
                              'https://cdn.icon-icons.com/icons2/944/PNG/512/medical-59_icon-icons.com_73933.png',
                          service: 'Consultation',
                          card_navigate: () => consultation_page(),
                        ),
                        SizedBox(width: 20),
                        CircularCard(
                          img:
                              'https://cdn.icon-icons.com/icons2/3357/PNG/512/bottle_drugs_pills_pharmacy_tablet_drug_medicine_medicines_icon_210695.png',
                          service: 'Medicines',
                          card_navigate: () => medicines_page(),
                        ),
                        SizedBox(width: 20),
                        CircularCard(
                          img:
                              'https://cdn.icon-icons.com/icons2/2257/PNG/512/ambulance_emergency_medical_vehicle_transportation_icon_140237.png',
                          service: 'Ambulance',
                          card_navigate: () => ambulance_page(),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'My Appointment',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: GestureDetector(
                            onTap: allAppointments,
                            child: Text(
                              'See All',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    AppointmentCard(
                      dr_img:
                          'https://babylon-marketing-assets-prod.s3.eu-west-2.amazonaws.com/redesign/_1000x1000_fit_center-center_82_none/Image_850x850_003-1.png',
                      dr_name: 'Dr. Nirmala Azaela',
                      dr_service: 'Orthopedic',
                      date: 'Wed June 20',
                      time: '8:30 AM',
                      more: _more,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _notifications() {}

void allAppointments() {}

void _more() {}

void _urgentCare() {}

void consultation_page() {
  print('consultation page');
}

void medicines_page() {
  print('medicines page');
}

void ambulance_page() {
  print('ambulance page');
}
