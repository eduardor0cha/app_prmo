import 'package:app_prmo/data/db.dart';
import 'package:flutter/material.dart';

import '../domain/pacote_turistico.dart';
import '../widgets/tour_package_card.dart';

class GridPacotesPage extends StatefulWidget {
  const GridPacotesPage({Key? key}) : super(key: key);

  @override
  State<GridPacotesPage> createState() => _GridPacotesPageState();
}

class _GridPacotesPageState extends State<GridPacotesPage> {
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
    return FutureBuilder<List<PacoteTuristico>>(
      future: pacotes,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PacoteTuristico> pacotesCarregados = snapshot.data ?? [];

          return GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.34,
            ),
            itemCount: pacotesCarregados.length,
            itemBuilder: (BuildContext context, int index) =>
                TourPackageCard(pacoteTuristico: pacotesCarregados[index]),
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
