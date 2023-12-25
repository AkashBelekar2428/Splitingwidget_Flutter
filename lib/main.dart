import 'package:flutter/material.dart';

void main(){
  runApp(spliting());
}

class spliting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  title: "Flutter",
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primarySwatch: Colors.blueGrey
  ),
  home: splittingScreen(),
);
  }
}
class splittingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Split Screen'),
      ),
      body:Column(
        children: [
          circleFunction(),
          listViewFunction(),
          boxDecorationFunction(),
          gridViewFunction()
        ],
      )
    );
  }
}

// MARK: Functions
class circleFunction extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Expanded(
    flex: 1,
    child: Container(
      color: Colors.blueGrey,
      child: ListView.builder(itemBuilder: (context, index) =>
          Padding(padding: EdgeInsets.all(11),
            child: SizedBox(
                width: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                )
            ),
          ),
        scrollDirection: Axis.horizontal,
      ),
    ),
  );
  }
}

class listViewFunction extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return  Expanded(
    flex: 2,
    child: Container(
      color: Colors.green,
      child: ListView.builder (itemBuilder: (context,index) => Padding(padding:
      EdgeInsets.all(8.0),
        child: ListTile(
          title: Text("Name"),
          subtitle: Text("Kolhaur"),
          trailing: Icon(Icons.delete),
          leading: Icon(Icons.ac_unit_sharp),
        ),
      ),
      ),
    ),
  );
  }
}

class boxDecorationFunction extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Expanded(
     flex: 1,
     child: Container(
       color: Colors.greenAccent,
       child: ListView.builder(itemBuilder: (context, index) =>
           Padding(padding: EdgeInsets.all(8.0),
             child: Container(
               padding: EdgeInsets.all(8.0),
               width: 200,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(11),
                 color: Colors.blueGrey,
               ),
             ),
           ),
         itemCount: 10,
         scrollDirection: Axis.horizontal,
       ),
     ),
   );
  }
}

class gridViewFunction extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          color: Colors.amber,
          child: GridView.count(crossAxisCount: 4,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.purple,
                  width: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.purple,
                  width: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.purple,
                  width: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.purple,
                  width: 40,
                ),
              )

            ],
          )


      ),
    );
  }

}