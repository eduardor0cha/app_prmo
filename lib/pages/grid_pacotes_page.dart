import 'package:app_prmo/data/db.dart';
import 'package:flutter/material.dart';

import '../domain/pacote_turistico.dart';
import '../widgets/tour_package_card.dart';
import 'ads_page.dart';

class GridPacotesPage extends StatefulWidget {
  const GridPacotesPage({Key? key}) : super(key: key);

  @override
  State<GridPacotesPage> createState() => _GridPacotesPageState();
}

class _GridPacotesPageState extends State<GridPacotesPage> {
  List<PacoteTuristico> pacotes = DB.getPacotesTuristicos();

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
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.34,
      ),
      itemCount: pacotes.length,
      itemBuilder: (BuildContext context, int index) => TourPackageCard(pacoteTuristico: pacotes[index]),
    );
  }
}
