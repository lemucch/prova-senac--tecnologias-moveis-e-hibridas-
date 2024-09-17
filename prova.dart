class Pessoa {
  // Atributos públicos
  int id;
  String nome;
  DateTime dataNascimento;
  String endereco;
  String foto;

  // Atributos privados
  String _sexo;
  String _mae;
  String _pai;
  String _email;
  String _telefone;
  double _saldoAtual; // Novo atributo para saldo
  List<String> _transacoes; // Novo atributo para transações

  // Construtor com parâmetros
  Pessoa({
    required this.id,
    required this.nome,
    required this.dataNascimento,
    required this.endereco,
    required this.foto,
    required String sexo,
    required String mae,
    required String pai,
    required String email,
    required String telefone,
    double saldoAtual = 0.0, // Inicializando com saldo padrão
    List<String> transacoes = const [], // Inicializando com lista vazia
  })  : _sexo = sexo,
        _mae = mae,
        _pai = pai,
        _email = email,
        _telefone = telefone,
        _saldoAtual = saldoAtual,
        _transacoes = transacoes;

  // Getters para acessar os atributos privados
  String get sexo => _sexo;
  String get mae => _mae;
  String get pai => _pai;
  String get email => _email;
  String get telefone => _telefone;
  double get saldoAtual => _saldoAtual;
  List<String> get transacoes => _transacoes;

  // Método para exibir histórico financeiro da pessoa
  void mostrarHistoricoFinanceiro() {
    print('Informações de Cadastro de $nome:');
    print('ID: $id');
    print('Nome: $nome');
    print('Data de Nascimento: ${dataNascimento.toLocal().toString().split(' ')[0]}');
    print('Endereço: $endereco');
    print('Foto: $foto');
    print('Sexo: $_sexo');
    print('Mãe: $_mae');
    print('Pai: $_pai');
    print('E-mail: $_email');
    print('Telefone: $_telefone');
    print('-------------------');

    print('Histórico Financeiro de $nome:');
    print('Saldo Atual: \$${_saldoAtual.toStringAsFixed(2)}');
    print('Transações Recentes:');
    for (var transacao in _transacoes) {
      print('- $transacao');
    }
    print('-------------------');
  }

  // Método estático para buscar uma pessoa pelo telefone
  static Pessoa? buscarPorTelefone(List<Pessoa> pessoas, String telefone) {
    for (var pessoa in pessoas) {
      if (pessoa._telefone == telefone) {
        return pessoa;
      }
    }
    return null; // Retorna null se não encontrar
  }
}

void main() {
  // Lista de pessoas
  List<Pessoa> pessoas = [
    Pessoa(
      id: 1,
      nome: 'João Silva',
      dataNascimento: DateTime(1990, 5, 15),
      endereco: 'Rua das Flores, 123',
      foto: 'foto_joao.png',
      sexo: 'Masculino',
      mae: 'Maria Silva',
      pai: 'José Silva',
      email: 'joao.silva@example.com',
      telefone: '123456789',
      saldoAtual: 1500.75,
      transacoes: [
        'Depósito: \$500.00 em 01/09/2024',
        'Retirada: \$200.00 em 05/09/2024',
        'Depósito: \$1000.00 em 10/09/2024',
      ],
    ),
    Pessoa(
      id: 2,
      nome: 'Ana Souza',
      dataNascimento: DateTime(1985, 8, 22),
      endereco: 'Avenida Central, 456',
      foto: 'foto_ana.png',
      sexo: 'Feminino',
      mae: 'Clara Souza',
      pai: 'Carlos Souza',
      email: 'ana.souza@example.com',
      telefone: '987654321',
      saldoAtual: 2500.00,
      transacoes: [
        'Depósito: \$1500.00 em 01/09/2024',
        'Retirada: \$500.00 em 07/09/2024',
      ],
    ),
    Pessoa(
      id: 3,
      nome: 'Carlos Oliveira',
      dataNascimento: DateTime(1978, 3, 10),
      endereco: 'Praça da República, 789',
      foto: 'foto_carlos.png',
      sexo: 'Masculino',
      mae: 'Patrícia Oliveira',
      pai: 'Antonio Oliveira',
      email: 'carlos.oliveira@example.com',
      telefone: '456789123',
      saldoAtual: 320.50,
      transacoes: [
        'Depósito: \$500.00 em 15/09/2024',
        'Retirada: \$179.50 em 20/09/2024',
      ],
    ),
    Pessoa(
      id: 4,
      nome: 'Fernanda Costa',
      dataNascimento: DateTime(1992, 12, 5),
      endereco: 'Rua do Comércio, 101',
      foto: 'foto_fernanda.png',
      sexo: 'Feminino',
      mae: 'Juliana Costa',
      pai: 'Pedro Costa',
      email: 'fernanda.costa@example.com',
      telefone: '321654987',
      saldoAtual: 980.00,
      transacoes: [
        'Depósito: \$600.00 em 03/09/2024',
        'Retirada: \$220.00 em 08/09/2024',
      ],
    ),
    Pessoa(
      id: 5,
      nome: 'Roberto Almeida',
      dataNascimento: DateTime(1988, 7, 30),
      endereco: 'Rua da Paz, 202',
      foto: 'foto_roberto.png',
      sexo: 'Masculino',
      mae: 'Sofia Almeida',
      pai: 'Ricardo Almeida',
      email: 'roberto.almeida@example.com',
      telefone: '654321987',
      saldoAtual: 750.00,
      transacoes: [
        'Depósito: \$300.00 em 12/09/2024',
        'Retirada: \$50.00 em 18/09/2024',
      ],
    ),
    Pessoa(
      id: 6,
      nome: 'Mariana Fernandes',
      dataNascimento: DateTime(1995, 4, 20),
      endereco: 'Avenida das Américas, 303',
      foto: 'foto_mariana.png',
      sexo: 'Feminino',
      mae: 'Letícia Fernandes',
      pai: 'Roberto Fernandes',
      email: 'mariana.fernandes@example.com',
      telefone: '789123456',
      saldoAtual: 410.00,
      transacoes: [
        'Depósito: \$400.00 em 05/09/2024',
        'Retirada: \$90.00 em 15/09/2024',
      ],
    ),
    Pessoa(
      id: 7,
      nome: 'Pedro Lima',
      dataNascimento: DateTime(1982, 11, 11),
      endereco: 'Rua da Alegria, 404',
      foto: 'foto_pedro.png',
      sexo: 'Masculino',
      mae: 'Angela Lima',
      pai: 'Henrique Lima',
      email: 'pedro.lima@example.com',
      telefone: '987321654',
      saldoAtual: 580.00,
      transacoes: [
        'Depósito: \$500.00 em 02/09/2024',
        'Retirada: \$20.00 em 10/09/2024',
      ],
    ),
  ];

  // Exibindo o histórico financeiro e informações de cadastro de cada pessoa na lista
  for (var pessoa in pessoas) {
    pessoa.mostrarHistoricoFinanceiro();
  }

  // Buscando uma pessoa pelo telefone
  String telefoneParaBuscar = '654321987';
  Pessoa? pessoaEncontrada = Pessoa.buscarPorTelefone(pessoas, telefoneParaBuscar);

  if (pessoaEncontrada != null) {
    print('Histórico Financeiro e Informações de Cadastro da pessoa encontrada pelo telefone $telefoneParaBuscar:');
    pessoaEncontrada.mostrarHistoricoFinanceiro();
  } else {
    print('Nenhuma pessoa encontrada com o telefone $telefoneParaBuscar.');
  }
}
