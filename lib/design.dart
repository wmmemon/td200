import 'package:flutter/material.dart';
import 'package:td200/apiservice.dart';

class Design extends StatefulWidget {
  const Design({super.key});

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Marve List"),),
      body: FutureBuilder(
        future: fetchmarvelcharacter(),
        builder: (context, snapshot)
          {
            if(snapshot.connectionState == ConnectionState.waiting)
              {
                return const Center(child: CircularProgressIndicator());
              }
            else if (snapshot.hasError)
              {
                return Center(child: Text("Error : ${snapshot.error}"),);
              }
            else if (snapshot.hasData || snapshot.data!.isEmpty)
              {
                return const Center(child: Text("No DAta Available"),);
              }
            final characters = snapshot.data!;
            return ListView.builder
              (
                  itemCount: characters.length,
                  itemBuilder :(context, index)
                  {
                    final character = characters[index];
                    return ListTile
                      (
                      leading: Image.network(character.imageurl!, height: 50, width: 50),
                      title: Text(character.name!, style: TextStyle(fontSize: 30),),
                      subtitle: Column(
                        children: [
                          Text(character.realname!, style: TextStyle(fontSize: 15),),
                          Text(character.team!, style: TextStyle(fontSize: 15),),
                        ],
                      ),

                    );

                  }
            );

          }

      ),
    );
  }
}
