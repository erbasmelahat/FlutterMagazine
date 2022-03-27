import 'package:flutter/material.dart';


class RealHome extends StatelessWidget {
  const RealHome({ Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        
         Container(
           
         margin: const EdgeInsets.only(top: 100),
        alignment: Alignment.center,             
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
           children: const <Widget>[
            
           ],
        ),
       ],
     );
      
  }

  
}
