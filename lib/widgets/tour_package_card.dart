import 'package:flutter/material.dart';

class TourPackageCard extends StatefulWidget {
  final String imagem;
  final String titulo;
  final String transporte;
  final int numDiarias;
  final int numPessoas;
  final double precoAntigo;
  final double precoAtual;
  final int numParcelas;
  final double porcentDesconto;

  const TourPackageCard({
    Key? key,
    required this.imagem,
    required this.titulo,
    required this.transporte,
    required this.numDiarias,
    required this.numPessoas,
    required this.precoAntigo,
    required this.precoAtual,
    required this.numParcelas,
    required this.porcentDesconto,
  }) : super(key: key);

  @override
  State<TourPackageCard> createState() => _TourPackageCardState();
}

class _TourPackageCardState extends State<TourPackageCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(8)),
                child: Image.network(widget.imagem),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                margin: const EdgeInsets.all(8),
                child: Text(
                  "-${widget.porcentDesconto}%",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFFD6C00)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                widget.titulo,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                widget.transporte,
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
                    "${widget.numDiarias} Diárias",
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
                    "${widget.numPessoas} Pessoas",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "A partir de R\$ ${widget.precoAntigo}",
                style: TextStyle(color: Colors.grey[700]),
              ),
              Row(
                children: [
                  Text(
                    "R\$ ${widget.precoAtual}",
                    style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFD6C00)),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Taxa Grátis em até ${widget.numParcelas}x",
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
