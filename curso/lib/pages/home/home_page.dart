import 'package:curso/models/lembretes.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:curso/db/database.dart';
import 'package:curso/models/lembretes.dart';
import 'package:curso/models/usuario.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Home"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Olá, ${Database().usuarioLogado?.nome ?? ""}'),
            const SizedBox(height: 15),
            Text(
              'Você tem ${Database().lembretes.length} lembretes',
              style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
          )
        ),
        const SizedBox(height: 15),
        Expanded(
          child: ListView.builder(
            itemCount: Database().lembretes.length,
            itemBuilder: (context, index){

              var item = Database().lembretes.elementAt(index);
              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  height: 80,
                  color: Color.fromARGB(255, 238, 238, 238),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 20),
                      const Icon(Icons.calendar_month),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(item.titulo),
                          Text(item.descricao)
                        ]
                      )
                      )
                    ]
                  )
                )
              );
            }
          )
        )
        ],
        ),
      )
    );
  }
}