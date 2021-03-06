import 'package:flutter/material.dart';
import 'package:dreamtrip/models/trip.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  final List<Trip> tripsList = [
    Trip('New York', DateTime.now(), DateTime.now(), 200.0, 'Car'),
    Trip('Boston', DateTime.now(), DateTime.now(), 450.0, 'Plane'),
    Trip('Washington DC', DateTime.now(), DateTime.now(), 120.0, 'Bus'),
    Trip('Austin', DateTime.now(), DateTime.now(), 170.0, 'Train'),
    Trip('Scranton', DateTime.now(), DateTime.now(), 180.0, 'Train'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: tripsList.length,
          itemBuilder: (context, index) => buildTripCard(context, index),),
    );
  }

  Widget buildTripCard(BuildContext context, int index){
    final trip = tripsList[index];
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:4.0, bottom: 8.0),
                child: Row(
                  children: [
                    Text(trip.tripTitle, style: TextStyle(fontSize: 30.0),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 40.0),
                child: Row(
                  children: [
                    Text('${DateFormat('dd/MM/yyyy').format(trip.startDate).toString()} - ${DateFormat('dd/MM/yyyy').format(trip.endDate).toString()}'),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Text('\$ ${trip.budget.toStringAsFixed(2)}', style: TextStyle(fontSize: 30.0),),
                  Spacer(),
                  Icon(Icons.directions_car),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
