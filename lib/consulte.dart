import 'package:flutter/material.dart';

class ServiceConsultationPage extends StatelessWidget {
  const ServiceConsultationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Services'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: ServiceConsultationCard(
                        image: AssetImage(
                            'assets/Consultation.jpg'), // Replace with your image asset
                        label: 'Service',
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // For spacing between the cards
                  InkWell(
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: ServiceConsultationCard(
                        image: AssetImage(
                            'assets/Service.jpg'), // Replace with your image asset
                        label: 'Consultation',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // ... Other widgets
          ],
        ),
      ),
    );
  }
}

class ServiceConsultationCard extends StatelessWidget {
  final ImageProvider image;
  final String label;

  const ServiceConsultationCard({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
          Text(label),
        ],
      ),
    );
  }
}
