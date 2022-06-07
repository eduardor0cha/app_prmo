import 'package:app_prmo/domain/pacote_turistico.dart';
import 'package:flutter/material.dart';

class PacoteDetalhes extends StatefulWidget {
  final PacoteTuristico pacoteTuristico;

  const PacoteDetalhes({Key? key, required this.pacoteTuristico})
      : super(key: key);

  @override
  State<PacoteDetalhes> createState() => _PacoteDetalhesState();
}

class _PacoteDetalhesState extends State<PacoteDetalhes> {
  PacoteTuristico get pacote => widget.pacoteTuristico;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.network(pacote.imagem),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pacote.cidade,
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 8),
              Text(
                pacote.titulo,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                pacote.transporte,
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                            "${pacote.numDiarias} Diárias",
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text("Válido para o período de:"),
                      Text(
                        pacote.validade,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.all(8),
                        child: Text(
                          "-${widget.pacoteTuristico.porcentDesconto}%",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        decoration:
                            const BoxDecoration(color: Color(0xFFFD6C00)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "A partir de R\$ ${widget.pacoteTuristico.precoAntigo}",
                        style: TextStyle(color: Colors.grey[700], fontSize: 10),
                      ),
                      Text(
                        "R\$ ${widget.pacoteTuristico.precoAtual}",
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFD6C00)),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Taxa Grátis em até ${widget.pacoteTuristico.numParcelas}x",
                        style: TextStyle(color: Colors.grey[700], fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
