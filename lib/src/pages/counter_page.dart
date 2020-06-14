import 'dart:developer';

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {

	@override
	createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
	final TextStyle _textStyle = new TextStyle(fontSize: 20);

	int _counter = 0;

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Stateful'),
				centerTitle: true,
			),
			body: Center(
				child: Column(
					children: <Widget>[
						Text(
							'Numero de clicks:',
							style: _textStyle,
						),
						Text(
							'$_counter',
							style: _textStyle,
						),
					],
					mainAxisAlignment: MainAxisAlignment.center,
				) ,
			),
			floatingActionButton: _createButtons(),
	  );
	}

	Widget _createButtons() {
		return Row(
			mainAxisAlignment: MainAxisAlignment.spaceAround,
				children: <Widget>[
					FloatingActionButton(
						child: Icon(Icons.remove),
						onPressed: _remove,
					),
					FloatingActionButton(
						child: Icon(Icons.refresh),
						onPressed: _refresh,
					),
					FloatingActionButton(
						child: Icon(Icons.add),
						onPressed: _add,
					),
				],
		);
	}

	void _add() {
		setState(() => _counter++);
	}

	void _refresh() {
		setState(() => _counter = 0);
	}

	void _remove() {
		setState(() => _counter--);
	}
}