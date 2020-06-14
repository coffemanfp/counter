import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
	final TextStyle textStyle = new TextStyle(fontSize: 20);

	final int counter = 10;

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text(''),
				centerTitle: true,
			),
			body: Center(
				child: Column(
					children: <Widget>[
						Text(
							'Numero de clicks:',
							style: textStyle,
						),
						Text(
							'$counter',
							style: textStyle,
						),
					],
					mainAxisAlignment: MainAxisAlignment.center,
				) ,
			),
			floatingActionButton: FloatingActionButton(
				child: Icon(Icons.add),
				onPressed:  () {
				},
			),

	  );
	}	
}