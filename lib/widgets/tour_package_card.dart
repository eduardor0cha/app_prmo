import 'package:app_prmo/domain/pacote_turistico.dart';
import 'package:app_prmo/pages/pacote_detalhes.dart';
import 'package:flutter/material.dart';

class TourPackageCard extends StatefulWidget {
  final PacoteTuristico pacoteTuristico;

  const TourPackageCard({Key? key, required this.pacoteTuristico})
      : super(key: key);

  @override
  State<TourPackageCard> createState() => _TourPackageCardState();
}

class _TourPackageCardState extends State<TourPackageCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return PacoteDetalhes(pacoteTuristico: widget.pacoteTuristico);
        }));
      },
      child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Column(children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(8)),
                  child: Container(
                    height: 120,
                    child: Image.network(
                      widget.pacoteTuristico.imagem,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  margin: const EdgeInsets.all(8),
                  child: Text(
                    "-${widget.pacoteTuristico.porcentDesconto}%",
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.pacoteTuristico.titulo,
                      style: const TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.pacoteTuristico.transporte,
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Wrap(
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
                              "${widget.pacoteTuristico.numDiarias} Diárias",
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.person_outline,
                              color: Colors.grey[700],
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "${widget.pacoteTuristico.numPessoas} Pessoas",
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "A partir de R\$ ${widget.pacoteTuristico.precoAntigo}",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    Wrap(
                      children: [
                        FittedBox(
                          child: Text(
                            "R\$ ${widget.pacoteTuristico.precoAtual}",
                            style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFD6C00)),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Taxa Grátis em até ${widget.pacoteTuristico.numParcelas}x",
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
    );
  }
}
