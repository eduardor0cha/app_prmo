import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                        print("a");
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
        buildCardPacoteTuristico(
          imagem:
              "https://a.cdn-hotels.com/gdcs/production188/d923/47643da8-6e46-4c83-8379-95b43b9e2684.jpg",
          titulo: "Pacote Cancún 2021",
          transporte: "Aéreo - Hotel All Inclusive",
          numDiarias: 5,
          numPessoas: 1,
          precoAntigo: 6819,
          precoAtual: 3749,
          numParcelas: 12,
        ),
        buildCardPacoteTuristico(
          imagem:
              "https://www.praias-360.com.br/img-600/al/coruripe/al-coruripe-praia-de-miai-de-baixo-020.jpg",
          titulo: "Pacote Miaí de Baixo 2022",
          transporte: "Van - Hotel All Inclusive",
          numDiarias: 7,
          numPessoas: 40,
          precoAntigo: 300,
          precoAtual: 250,
          numParcelas: 6,
        ),
      ],
    );
  }

  buildCardPacoteTuristico({
    required String imagem,
    required String titulo,
    required String transporte,
    required int numDiarias,
    required int numPessoas,
    required double precoAntigo,
    required double precoAtual,
    required int numParcelas,
  }) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            child: Image.network(imagem),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                titulo,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                transporte,
                style: TextStyle(color: Colors.grey[700]),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Icon(
                    Icons.wb_sunny_outlined,
                    color: Colors.grey[700],
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "$numDiarias Diárias",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.person_outline,
                    color: Colors.grey[700],
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "$numPessoas Pessoas",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "A partir de R\$ $precoAntigo",
                style: TextStyle(color: Colors.grey[700]),
              ),
              Row(
                children: [
                  Text(
                    "R\$ $precoAtual",
                    style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFD6C00)),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Taxa Grátis em até ${numParcelas}x",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Cancelamento Grátis!",
                style: TextStyle(color: Colors.green[800]),
              ),
            ]),
          )
        ]));
  }
}
