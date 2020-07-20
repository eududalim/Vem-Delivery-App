class Usuario {
  String _id;
  String _nameUser;
  String _emailUser;
  String _telefone;
  String _cpf;
  String _cnpj;
  bool _comercial;

  Usuario(
    this._nameUser,
    this._id,
    this._emailUser,
    this._telefone,
    this._cpf,
    this._cnpj,
    this._comercial,
  );

  String get getId => _id;

  set setId(String value) {
    _id = value;
  }

  String get getTelefone => _telefone;

  set setTelefone(String value) {
    _telefone = value;
  }

  String get getEmailUser => _emailUser;

  set setEmailUsuario(String value) {
    _emailUser = value;
  }

  String get getNomeUser => _nameUser;

  set setNomeUser(String value) {
    _nameUser = value;
  }

  String get getCpf => _cpf;

  set setCpf(String value) {
    _cpf = value;
  }

  String get getCnpj => _cnpj;

  set setCnpj(String value) {
    _cnpj = value;
  }

  bool get getComercial => _comercial;

  set setComercial(bool value) {
    _comercial = value;
  }
}
