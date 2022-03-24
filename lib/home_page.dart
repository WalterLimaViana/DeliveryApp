import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Home')),
//       body: Center(
//         child: Text('Delivery App'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {},
//       ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();
  final list = <String>[];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curso Flutter'),
      ),
      body: Center(
        child: Stack(
          //centralizando os elementos do Stack no centro da tela
          alignment: Alignment.center,
          children: [
            //Colocando uma imagem de fundo
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/img/blog2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            //Aplicando uma máscara com opacidade utilizando um container
            Container(
              color: Color.fromARGB(255, 3, 3, 3).withOpacity(.6),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                  //centralizar a coluna na tela
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FlutterLogo(
                      size: 150,
                      style: FlutterLogoStyle.horizontal,
                      textColor: Colors.white,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Entrar no App'),
                    )
                  ]),
            ),
            //Colocando um botão com um icone
          ],
        ),
      ),
    );
  }
}















/* Listas*/
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final controller = TextEditingController();
//   final list = <String>[];

  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text('Delivery APP')),
//         body: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       controller: controller,
//                     ),
//                   ),
//                   IconButton(
//                       onPressed: () {
//                         final text = controller.text;
//                         setState(() {
//                           list.add(text);
//                         });
//                         controller.clear();
//                       },
//                       icon: const Icon(Icons.add)),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: list.length,
//                 itemBuilder: (context, index) {
//                   final item = list[index];

//                   return ListTile(
//                     title: Text(item),
//                   );
//                 },
//               ),
//             )
//           ],
//         ));
//   }
// }
