class Aluno
{
  //atributos
  int _ra = 0;
  String _nome = "";

  //construtores
  Aluno (this._ra, this._nome);

  //getters and setters
  int get ra => this._ra;

  set ra(int value) => this._ra = value;

  get nome => this._nome;

  set nome( value) => this._nome = value;
  
}