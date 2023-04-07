import 'package:flutter/material.dart';

void main() {

runApp( const MaterialApp(

home: contador(),

));
}

class contador extends StatefulWidget {

 const contador({super.key});

@override

 State<contador> createState() => _contadorState();
}



class _contadorState extends State<contador> {int count = 0;

void decrement(){
  if(count > 0)
      setState((){
      count--;
    });
    print(count);
  }

void increment(){
  if(count < 10
  ){
       setState((){
      count++;
      });
  }
  

  print(count);
  }


@override
Widget build(BuildContext context) {
  return  Scaffold(
    backgroundColor: Colors.red,
    body: Container(
      decoration: const BoxDecoration(
       image: DecorationImage(image: AssetImage("images/restaurant.png"),
       fit: BoxFit.cover) 
      ),
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:  [
      Text(count < 10 ?"Bem Vindo!": "Restaurante cheio! Volte mais tarde.", style: TextStyle(fontSize: 50,color: Colors.white),),
      
      Text(count.toString(), style: TextStyle(fontSize: 50,color: Colors.white),),

      Padding(padding: const EdgeInsets.all(40),
      //child: Text(count.toString(),
      //style: const TextStyle(fontSize: 100, color: Colors.white)),
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [  

          TextButton(
            onPressed: decrement,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              fixedSize: Size(100, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)            
              )
            ), 
            child: Text("Saiu", style: TextStyle(fontSize: 20,color: Colors.black),
          )                             
          ),
          
          SizedBox(width: 64,),

          TextButton(
            onPressed: increment,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              fixedSize: Size(100, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)            
              )
            ), 
            child: Text("Entrou", style: TextStyle(fontSize: 20,color: Colors.black),

          ),
                   
          ),
        ],
          
      )
   ],
  )
    )
  );
  
}
}


