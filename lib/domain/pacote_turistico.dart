class PacoteTuristico {
  final String imagem;
  final String titulo;
  final String validade;
  final String transporte;
  final String cidade;
  final int numDiarias;
  final int numPessoas;
  final double precoAntigo;
  final double precoAtual;
  final int numParcelas;
  final double porcentDesconto;

  PacoteTuristico({
    required this.imagem,
    required this.titulo,
    required this.validade,
    required this.transporte,
    required this.cidade,
    required this.numDiarias,
    required this.numPessoas,
    required this.precoAntigo,
    required this.precoAtual,
    required this.numParcelas,
    required this.porcentDesconto,
  });
}
