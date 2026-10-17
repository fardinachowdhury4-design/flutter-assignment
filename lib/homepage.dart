import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
      return 
       Scaffold(
        appBar: AppBar(title:Text("HomePage"),//appbar er jonno
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 71, 84, 183),
        foregroundColor:const Color.fromARGB(255, 18, 66, 110) ,//appbar er colors cng hobe
        //leading: Icon(Icons.home),//home sign ashbe size color cng kora barite
        actions: [
          IconButton(onPressed:(){} , icon: Icon(Icons.search)),
          IconButton(onPressed:(){} , icon: Icon(Icons.person)),

        ],//multiple widget use kora jay icon buttons

        ),
        drawer: Drawer(
          child: Column(children: [UserAccountsDrawerHeader
          (accountName: Text("Name"), 
          accountEmail: Text("Email"),
          decoration: BoxDecoration(color:const Color.fromARGB(255, 51, 139, 184),)),
          
          
          ListTile(title: Text("Homepage"),
          leading: Icon(Icons.home),
          hoverColor: const Color.fromARGB(255, 162, 159, 221)
          ,onTap: (){}),
          Divider(),
          Spacer(),
           
          ListTile(title: Text("Profile"),
          leading: Icon(Icons.person),
          hoverColor: const Color.fromARGB(255, 160, 116, 100)
          ,onTap: (){}),
          ],
          ),
        ),//aita dile leading cmnt kore rakhbo

        body:Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
           // mainAxisAlignment: MainAxisAlignment.end, onno side chole jay
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: (){}, 
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 87, 116, 182),
                foregroundColor: const Color.fromARGB(255, 37, 35, 34),
                fixedSize: Size(100, 20),
                side: BorderSide()
                //elevation:10,
                ),
              
               child: Text("TextButton"),),
               SizedBox(width: 10,),
          
              ElevatedButton(onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 79, 122, 176),
                foregroundColor: const Color.fromARGB(255, 37, 35, 34),
                fixedSize: Size(150, 20),
                side: BorderSide()
          
              ),
              
              child:Text("ElevatedButton") ),
          
              OutlinedButton(onPressed: (){}, child: Text("OutlineButton")),
              IconButton(onPressed: (){}, icon:Icon(Icons.login))
            ],
          ),
        ),
     floatingActionButton: FloatingActionButton(onPressed: (){}, 
     tooltip: "Add",
     foregroundColor:const Color.fromARGB(255, 53, 116, 158) ,
     shape: BeveledRectangleBorder(),
     backgroundColor:const Color.fromARGB(255, 57, 65, 152) ,
     child: Icon(Icons.add),),
     );
  
  }

}