import 'package:app11_pokedex/models/pokemon_model.dart';
import 'package:app11_pokedex/pages/detail_page.dart';
import 'package:app11_pokedex/ui/widgets/item_type.dart';
import 'package:flutter/material.dart';

class ItemPokemonWidget extends StatelessWidget {
 //String name;
 //String image;
 //List<String> types;

 PokemonModel pokemon;

 ItemPokemonWidget({
  //required this.name,
  //required this.image,
  //required this.types,
  required this.pokemon,
 });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
      },
      child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff4ccfb2),
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom:-20 ,
                          right: -20,
                          child: Image.asset('assets/images/pokeball.png',
                          height: 120.0,
                          color: Colors.white.withOpacity(0.27),),
                        ),
    
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 12.0),
                          child: Column(children: [
                            Text(pokemon.name,style: TextStyle(
                              color: Colors.white,
                              fontSize:16.0 ,
                              fontWeight: FontWeight.bold,
                            ),),
    
                           //Column(children: types.map((e) => ItemTypeWidget()).toList()
                           //,),
                          ...pokemon.type.map((e) => ItemTypeWidget(text: e,)).toList(),
    
    
                          ],),
                        ),
    
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Image.network(pokemon.img)),
                      ],
                    ),
                  ),
    );
  }
}