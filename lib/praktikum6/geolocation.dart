import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = "";

  @override
  void initState() {
    super.initState();
    _getPosition().then((Position myPos) {
      setState(() {
        myPosition =
            'Latitude: ${myPos.latitude.toString()} - Longitude: ${myPos.longitude.toString()}';
      });
    });
  }

  Future<Position> _getPosition() async {
    await Future.delayed(const Duration(seconds: 3)); 
    await Geolocator.requestPermission();
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    final myWidget =
        myPosition == "" ? const CircularProgressIndicator() : Text(myPosition);

    return Scaffold(
      appBar: AppBar(title: const Text("Tegar")),
      body: Center(child: myWidget),
    );
  }
}
