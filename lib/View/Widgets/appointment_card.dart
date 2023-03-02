// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  final String dr_img;
  final String dr_name;
  final String dr_service;
  final String date;
  final String time;
  final Function more;

  const AppointmentCard(
      {super.key,
      required this.dr_img,
      required this.dr_name,
      required this.dr_service,
      required this.date,
      required this.time,
      required this.more});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Appointment date'),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.schedule),
                          SizedBox(width: 10),
                          Text(date),
                          SizedBox(width: 10),
                          Text(time),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: more(),
                    icon: Icon(Icons.more_vert),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Divider(
                color: Colors.grey[400],
                thickness: 1,
                indent: 3,
                endIndent: 3,
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(dr_img),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dr_name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(dr_service),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
