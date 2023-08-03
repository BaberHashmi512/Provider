import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/favourite_provider.dart';
import 'package:provider_app/screen/favourite/myfavourite.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<int> selectedItem =[];
  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Favourite App"),
        actions: [
          InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> MyFavouriteItemScreen())
                );
              },
              child: Icon(Icons.favorite)),
          SizedBox(width: 15,)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10000,
                itemBuilder: (context, index)  {
                return Consumer<FavouriteItemProvider>(builder: (context, value, child){
                  return ListTile(
                    onTap: (){
                      if (value.selectedItem.contains(index)){
                        value.removeItem(index);
                      }else{
                        value.addItem(index);
                      }
                      value.addItem(index);
                    },
                    title: Text('Items' +index.toString()),
                    trailing: Icon(
                        value.selectedItem.contains(index) ?Icons.favorite :Icons.favorite_border_outlined),
                  );
                });
                },

            ),
          )
        ],
      ),
    );
  }
}
