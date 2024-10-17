import 'package:flutter/material.dart';

void main() {
  runApp(const NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Voyage',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text('Voyage Thailande'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_border),
            onPressed: () {},
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ImageSection(),
            TitleSection(),
            TextSection(),
            IconSection(),
            HotelSection(),
            ButtonSection(),
          ],
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
        'https://drissas.com/wp-content/uploads/2021/08/photo_thailande.jpeg');
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bienvenue au paradis',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
          Text(
            'Réservez votre séjour en Thailande',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Text(
          "La Thailande, en forme longue le Royaume de Thailande, est un pays d'Asie du Sud-Est dont le territoire couvre 514 000 km2. Avant 1939, il s'appelait le Royaume de Siam. Il est bordé à l'ouest par la Birmanie, au sud par la Malaisie, à l'est par le Cambodge et au nord-est par le Laos. C'est une monarchie constitutionnelle depuis 1932. Sa capitale est Bangkok. La langue officielle est le thaï et la monnaie le baht."),
    );
  }
}

class IconSection extends StatelessWidget {
  const IconSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(Icons.hotel, color: Colors.cyan),
                const SizedBox(height: 5),
                Text('Hôtels'.toUpperCase(),
                    style: const TextStyle(color: Colors.cyan)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(Icons.airplanemode_active, color: Colors.cyan),
                const SizedBox(height: 5),
                Text('Vols'.toUpperCase(),
                    style: const TextStyle(color: Colors.cyan)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(Icons.drive_eta, color: Colors.cyan),
                const SizedBox(height: 5),
                Text('Voitures'.toUpperCase(),
                    style: const TextStyle(color: Colors.cyan)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HotelSection extends StatelessWidget {
  const HotelSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
                'https://drissas.com/wp-content/uploads/2021/08/photo_thailande_1.jpeg'),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
                'https://drissas.com/wp-content/uploads/2021/08/photo_thailande_2.jpeg'),
          ),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.cyan,
          textStyle: const TextStyle(fontSize: 20),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
        ),
        child: const Text('Voir plus de logements'),
        onPressed: () {},
      ),
    );
  }
}
