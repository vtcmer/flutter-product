import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:product_control/entities/product.dart';
import 'package:product_control/presenter/product_presenter.dart';
import 'package:product_control/view/product_list_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> implements ProductListView{

  ProductPresenter _productPresenter;
  List<Product> _productList = [];
  bool _isLoading = false;

  final List<MaterialColor> _colors = [Colors.blue, Colors.indigo, Colors.red];

  _HomePageState() {
    this._productPresenter = new ProductPresenter(this);
  }

  @override
  void initState() {
    super.initState();
    this._isLoading = true;
    this._productPresenter.loadProducts();
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Control de Productos"),
        elevation: defaultTargetPlatform == TargetPlatform.iOS ? 0.0: 5.0,
      ),
      body: _isLoading ?
            new Center(
              child: new CircularProgressIndicator(),
            )
            :_productsWidget(),

    );

  }

  Widget _productsWidget(){
    return new Container(
      child: new Column(
        children: <Widget>[
          new Flexible(
              child: new ListView.builder(
                  itemCount:  _productList.length,
                  itemBuilder: (BuildContext context, int index){
                    final Product item = _productList[index];
                    final MaterialColor color = _colors[index % _colors.length];
                    return _getItem(item, color);
                  }))
        ],

      ),
    );
  }
  ListTile _getItem(Product item, MaterialColor color){
    return new ListTile(
      leading: new CircleAvatar(
        backgroundColor:  color,
        child: new Text(item.name[0]),
      ),
      title: new Text(item.name),
      //isThreeLine: true,
      //subtitle: new Text("hola")
    );
  }

  @override
  void onLoadProductComplete(List<Product> items) {
    setState(() {
      this._productList = items;
      this._isLoading = false;
    });
  }

  @override
  void onLoadProductError() {
    // TODO: implement onLoadProductError
  }
}





