import 'package:curso/models/usuario.dart';
import 'package:curso/models/lembretes.dart';

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
      email: "mateus", 
      senha: "123"
    ),
  ];

  List<Lembrete> lembretes = [];

  void addLembrete( Lembrete lembrete){
    lembretes.add(lembrete);
  }

  void removeLembrete(int index){
    lembretes.removeAt(index);
  }

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