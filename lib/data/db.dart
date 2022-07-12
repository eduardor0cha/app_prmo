import 'package:app_prmo/domain/pacote_turistico.dart';

class DB {
  static final List<PacoteTuristico> _pacotes = [
      PacoteTuristico(
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
    ),
    PacoteTuristico(
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
    ),
  ];

  static List<PacoteTuristico> getPacotesTuristicos() => _pacotes;
}