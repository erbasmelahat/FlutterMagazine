// ignore: file_names
import 'package:flutter/material.dart';


class RealHome extends StatelessWidget {
  const RealHome({ Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[        
         Container(           
         margin: const EdgeInsets.only(top: 100),
          // alignment: Alignment.center,             
         padding: const EdgeInsets.symmetric(horizontal: 18),
          height: 50,         
          decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(30),
           color: Colors.transparent,        
           ),
           child: Row(
            children: <Widget>[          
                  Expanded(
                    child: TextField(
                       onChanged: (value) {},
                       decoration: InputDecoration( 
                          icon: const Icon(                          
                            Icons.search,
                             color: Colors.black,
                           ),                                  
                         hintText: "Search",
                         hintStyle: TextStyle(
                           color: Colors.black.withOpacity(0.5),
                        ),
                       ),
                     ),
                  ),
                 ],
            ),
          ),
          Column(
           children:const [            
             SizedBox(               
               height: 120,),],),
               
          Row(
           children:[       
             const SizedBox(
               width: 40,),     
             SizedBox(               
               height: 250,
               child: Container( 
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 238, 236, 230), 
                  border: const Border.symmetric() , ),                     
                 width: 160,
                 child: const Center(child: Text("Deneme"),),
                  ),
                 
              ),
               const SizedBox(
               width: 20,),
             SizedBox(
               height: 250,
               child: Container( 
                 alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 238, 236, 230)   ),                     
                 width: 160,
                 child: const Center(child: Text("Deneme"),), ),
                 ), 
           ],
        ),

         Column(
           children:const [            
             SizedBox(               
               height: 20,),],),

          Row(
           children:[       
             const SizedBox(
               width: 40,), 
             SizedBox(               
               height: 250,
               child: Container( 
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  ),                     
                 width: 160,
                 
                 child: ElevatedButton(
                   child: const Text(
                      'Deneme',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                   style: ElevatedButton.styleFrom(
                     shadowColor: Colors.transparent,
                    primary: const Color.fromARGB(255, 238, 236, 230)),
                    onPressed: (){},
                 )
                  ),
                 
              ),
               const SizedBox(
               width: 20,),
             SizedBox(
               height: 250,
               child: Container( 
                 alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 238, 236, 230)   ),                     
                 width: 160,
                 child: const Center(child: Text("Deneme"),), ),
                 ), 
           ],

        ),



       ],
     );
      
  }

  
}
