import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_application/models/models.dart';

import 'list_tile.dart';

class MyList extends StatelessWidget {
  final List<MySuperHero> mHeroes = new List<MySuperHero>();
  final _mHeroesListKey = GlobalKey<AnimatedListState>();

  MyList() {
    mHeroes.clear();
    mHeroes.add(new MySuperHero('Title One', 'Text 1', 'Subtext 1'));
    mHeroes.add(new MySuperHero('Title Two', 'Text 2', 'Subtext 2'));
    mHeroes.add(new MySuperHero('Title Three', 'Text 3', 'Subtext 3'));
  }

  void _doSomething() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List'),
      ),
      body: Center(
        child: AnimatedList(
          key: _mHeroesListKey,
          initialItemCount: mHeroes.length,
          itemBuilder: (context, index, animation) {
            return _buildItem(animation, index);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addItem(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void _addItem() {
    mHeroes.add(new MySuperHero('Dummy Title', 'Dummy text', 'Dummy Sub text'));
    _mHeroesListKey.currentState.insertItem(mHeroes.length - 1);
  }

  void _removeItem(int index) {
    mHeroes.removeAt(index);
    _mHeroesListKey.currentState.removeItem(
        index, (context, animation) => _buildItem(animation, index));
  }

  Widget _buildItem(Animation animation, int index) {
    return SizeTransition(
      sizeFactor: animation,
      child: ListTile(
        leading: Icon(Icons.access_alarms),
        title: Text(mHeroes[index].img),
        subtitle: Text(mHeroes[index].body),
        onTap: () => _doSomething(),
        trailing: Icon(Icons.call_end),
      ),
    );
  }
}
