void main() {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  var pessoasNaoDuplicadas = [];
  var pessoasSexoFeminino = [];
  var pessoasSexoMasculino = [];
  var novoArray = [];
  var maioresIdade = [];
  var maisVelho = [];
  for (int i = 0; i < pessoas.length; i++) {
    if (!pessoasNaoDuplicadas.contains(pessoas[i])) {
      pessoasNaoDuplicadas.add(pessoas[i]);
    }
  }
  for (int i = 0; i < pessoasNaoDuplicadas.length; i++) {
    if (pessoasNaoDuplicadas[i].contains('Feminino')) {
      pessoasSexoFeminino.add(pessoasNaoDuplicadas[i]);
    }
    if (pessoasNaoDuplicadas[i].contains('Masculino')) {
      pessoasSexoMasculino.add(pessoasNaoDuplicadas[i]);
    }
  }
  for (int i = 0; i < pessoas.length; i++) {
    novoArray.add(pessoas[i].split("|"));
    if (int.parse(novoArray[i][1]) >= 18) {
      maioresIdade.add(novoArray[i]);
    }
  }
  for (int i = 0; i < maioresIdade.length; i++) {
    maisVelho.add(maioresIdade[i][1]);
    maisVelho.add(maioresIdade[i]);
  }

  print("1 - Remover os duplicados");
  print(pessoasNaoDuplicadas);

  print("2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino");
  print("Feminino: " + pessoasSexoFeminino.length.toString());
  print("Masculino: " + pessoasSexoMasculino.length.toString());
  print(
      """3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e 
  mostre a quantidade de pessoas com mais de 18 anos""");
  print("lista filtrada com maiores de 18 anos " + maioresIdade.toString());
  print("4 - Encontre a pessoa mais velha.");
  print("Pessoa mais velha ");
  maisVelho.sort((n1,n2) => n2.compareTo(n1)); 
  print("Mais velho " + maisVelho[0].toString());
}
