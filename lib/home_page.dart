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
      children: [
        Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(16),
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
                      onPressed: () {},
                      child: const Text(
                        'Eu quero',
                        style: TextStyle(color: Colors.black),
                      ),
                      style:
                          ElevatedButton.styleFrom(primary: Color(0xFFF8FF04)),
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
        Card(
            child: Column(children: [
          const Placeholder(
            fallbackHeight: 150,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Pacote Cancún 2021",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Aéreo - Hotel All Inclusive",
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
                    "5 Diárias",
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
                    "1 Pessoa",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "A partir de R\$ 6.816",
                style: TextStyle(color: Colors.grey[700]),
              ),
              Row(
                children: [
                  const Text(
                    "R\$ 3.749",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFD6C00)),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Taxa Grátis em até 12x",
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
        ])),
      ],
    );
  }
}
