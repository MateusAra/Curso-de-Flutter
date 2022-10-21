import 'package:curso/models/usuario.dart';

class Database{
  //Singleton
  static final Database _singleton = Database._internal();

  Database._internal();

  factory Database(){
    return _singleton;
  }

  List<Usuario> usuarios = [
    Usuario(
      codigo: 1, 
      nome: "Mateus", 
      email: "mateus@gmail", 
      senha: "123"
    ),
  ];

  Usuario? login(String email, String senha){
    for(var usuario in usuarios){
      if(usuario.email == email && usuario.senha == senha){
        return usuario;
      }
    }

    return null;
  }
  Usuario? usuarioLogado;
}