import 'package:app_techtaste/modal/restaurant.dart';
import 'package:flutter/material.dart';

class RestaurantWidget extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantWidget({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start, // Align items properly
      children: [
        Image.asset('assets/${restaurant.imagePath}', width: 72),
        const SizedBox(width: 12), // Add spacing between elements
        Expanded(
          // Prevent overflow by constraining the Column
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
              Text(
                restaurant.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4), // Add spacing between elements
              Row(
                children: List.generate(restaurant.stars.toInt(), (index) {
                  return Image.asset('assets/others/star.png', width: 16);
                }),
              ),
              const SizedBox(height: 4), // Add spacing between elements
              Text('${restaurant.distance} km'),
            ],
          ),
        ),
      ],
    );
  }
}
