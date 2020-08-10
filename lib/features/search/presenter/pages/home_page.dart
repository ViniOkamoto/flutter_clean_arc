import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mealsapp/features/search/presenter/stores/home_store.dart';
import 'package:mealsapp/features/search/presenter/stores/states/get_state.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeStore _homeStore = HomeStore();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Observer(
            builder: (_) {
              var state = _homeStore.state;
              if (state is ErrorState) {
                return Center(
                  child: Text("Tente novamente"),
                );
              }
              if (state is SuccessState) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(_homeStore.mealRecipe.strMeal),
                    Image.network(
                      _homeStore.mealRecipe.strMealThumb,
                      width: size.width,
                      height: size.height / 3,
                    ),
                    Text(_homeStore.mealRecipe.strInstructions),
                  ],
                );
              }
              return Text("Só clicar");
            },
          ),
          SizedBox(
            height: 100,
          ),
          RaisedButton(
            onPressed: () {
              _homeStore.setState(_homeStore.fetch());
            },
            color: Colors.grey,
            child: Text("Chamar"),
          )
        ],
      ),
    );
  }
}
