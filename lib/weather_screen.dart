import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print('refresh');
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                //! Add a ClipRRect widget to add border radius to the Gradient BackdropFilter
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '300° F',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.cloud, size: 64),
                          Text(
                            'Cloudy',
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // weather forecast card
            Placeholder(
              fallbackHeight: 150,
            ),
            SizedBox(
              height: 20,
            ),
            // additional Information
            Placeholder(
              fallbackHeight: 150,
            )
          ],
        ),
      ),
    );
  }
}
