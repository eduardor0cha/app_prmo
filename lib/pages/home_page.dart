import 'package:app_prmo/domain/pacote_turistico.dart';
import 'package:app_prmo/pages/ads_page.dart';
import 'package:app_prmo/widgets/tour_package_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PacoteTuristico pacote1 = PacoteTuristico(
    imagem:
        "https://a.cdn-hotels.com/gdcs/production188/d923/47643da8-6e46-4c83-8379-95b43b9e2684.jpg",
    titulo: "Pacote Cancún 2021",
    transporte: "Aéreo - Hotel All Inclusive",
    numDiarias: 5,
    numPessoas: 1,
    precoAntigo: 6819,
    precoAtual: 3749,
    numParcelas: 12,
    porcentDesconto: 45,
    cidade: "Cancún - México",
    validade: "De 01 ago 2022 até 30 nov 2022",
  );

  PacoteTuristico pacote2 = PacoteTuristico(
    imagem:
        "https://www.praias-360.com.br/img-600/al/coruripe/al-coruripe-praia-de-miai-de-baixo-020.jpg",
    titulo: "Pacote Miaí de Baixo 2022",
    transporte: "Van - Hotel All Inclusive",
    numDiarias: 7,
    numPessoas: 40,
    precoAntigo: 300,
    precoAtual: 250,
    numParcelas: 6,
    porcentDesconto: 10,
    cidade: "Coruripe - Alagoas",
    validade: "De 14 jun 2022 até 02 jul 2022",
  );

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
                          return const AdsPage();
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
        TourPackageCard(
          pacoteTuristico: pacote1,
        ),
        TourPackageCard(
          pacoteTuristico: pacote2,
        ),
      ],
    );
  }
}
