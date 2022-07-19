import 'package:app_prmo/domain/pacote_turistico.dart';
import 'package:app_prmo/pages/grid_pacotes_page.dart';
import 'package:app_prmo/widgets/tour_package_card.dart';
import 'package:flutter/material.dart';

import '../data/db.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<PacoteTuristico>> pacotes = DB.getPacotesTuristicos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Pesquisar'),
        backgroundColor: const Color(0xFF10397B),
      ),
      body: buildBody(),
    );
  }

  buildBody() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          color: Colors.purple,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'TOP DESTINOS MAIS BUSCADOS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Corre que tá rolando muita promoção',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const GridPacotesPage();
                        }));
                      },
                      child: const Text(
                        'Eu quero',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFF8FF04)),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 24),
              const Placeholder(
                fallbackHeight: 150,
                fallbackWidth: 100,
                color: Colors.white,
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        FutureBuilder<List<PacoteTuristico>>(
          future: pacotes,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<PacoteTuristico> pacotesCarregados = snapshot.data ?? [];

              return ListView.builder(
                itemCount: pacotesCarregados.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    TourPackageCard(pacoteTuristico: pacotesCarregados[index]),
              );
            }

            return const Center(child: CircularProgressIndicator());
          },
        ),
      ],
    );
  }
}
