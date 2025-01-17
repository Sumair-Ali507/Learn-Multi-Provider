import 'package:flutter/material.dart';
import 'package:learn_provider/Provider/Screens/Favourite/favourite_item_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {

  List<int> selectedItems = [];
  @override
  Widget build(BuildContext context) {
    print('Build Widget');
    return Scaffold(

      appBar: AppBar(
        actions: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> FavouriteItemScreen()));
            },

            child: Icon(Icons.favorite),


          ),

          SizedBox(width: 20,)

        ],
        title: Text('Favorite Item'),

      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 20,
                itemBuilder: (_, index)=>
                    ListTile(
                      onTap: (){

                        if(selectedItems.contains(index)){
                          selectedItems.remove(index);
                        }

                        else{
                          selectedItems.add(index);
                        }
                        setState(() {

                        });
                      },
                      title: Text('Item $index'),
                      trailing: Icon(selectedItems.contains(index)? Icons.favorite: Icons.favorite_border_outlined),

            
                    )
            ),
          )
        ],
      ),
    );
  }
}
