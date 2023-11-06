import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Welcome extends StatelessWidget {
  final _appBarTitle = 'Instagram';
  final _randomImageUrl = 'https://picsum.photos/200/300';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
          actions: [
            IconButton(onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (context)=> Column(),
            );},
                icon: Icon(Icons.favorite))],
          title: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.wallpaper),
              Text(
                _appBarTitle,
                style: Theme.of(context).primaryTextTheme.headline5!.copyWith(color: Colors.white),
              ),
            ],
          ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
              child:
              ListView(
                children: [
                  Container(
                    width: 500,
                    height: 100,
                    color: Colors.grey,
                  )
                ],
              )
          ),
          Expanded(
            flex: 3,
              child:
                 ListView.builder(
                    itemCount:100,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                      child: Card(
                      child: ListTile(
                      onTap: (){},
                      leading: CircleAvatar(
                      backgroundImage: NetworkImage(_randomImageUrl),
                      ),
                      title: Text('$_appBarTitle $index'),
                      trailing: Icon(Icons.arrow_right_alt),
                      ),
                      ),
                      );

                    }
                ),

              ),

          Expanded(
            flex: 1,
              child:
              Dismissible(
                key: UniqueKey(),
                background: Container(color: Colors.grey),
                secondaryBackground: Container(color: Colors.red),
                child: Container(
                  color: Colors.tealAccent,
                ),
              )
          ),

        ],
      ),
    );
  }
}