# flutter-dev
a number of flutter projects created while doing tutorials

create a flutter project

### in vscode

`ctrl+p`
`Flutter: New Project`

### in terminal

`flutter create myapp`
`cd myapp`


read this 
https://flutter.io/get-started/test-drive/#terminal

# 

# Widgets/Code snippets

- Card
- raisedbutton
- FlatButton
- icon
- image.assets
- Container
- Center
- color: Theme.of(context).accentColor
- Drawer - sidebar
- ButtonBar

# Gotchas

- `CrossAxisAlignment` won't work inside a column unless the column is in the center, this is because the column width is only as big as the largest element inside in. Wrap it in a `Center`

# Section 1: Introduction

- `var` can be used for a variable, but if you assign it a string eg `var bob='name'` then you won't be able to change it to another type eg `bob=32`. 
- use `dynamic` if the type needs to change
- can't use `const` and `var` as `const` is for defined types. But you can define a list as constant `var constList = const [1, 2, 3]`
- `final` variables that are lists can still be appended to, as it's the reference that is final. `final` is initalised once from the constructor
- can use `static const` for static instance variables that won't change
- String literals `"hi the variable value is ${val}"`

## Maps

```
Map<K,V> = {}
var myMap = {}
myMap.keys // property
myMap['key']

```

## Lists

```{dart}
List<int> myList = [1,2,3,4,5];
```

### iteration

```
var newList = myMan.map((e) => e+1);
newList.forEach((e) => print(e));
myMap.forEach((k,v) => print(v))
```

# Section 2 : Diving into basics and understanding widgets

- Stateful widgets change state in the State class, not the StatefulWidget class
- Any variables you want to set, set them as `final` in the `class ... extends StatefulWidget` class, set the values in the `constructor`
- if `State` class needs to access this, you can use the `widget.` property to get the variable.

```
@override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);  
  }
```

### Stateful lifecycle hooks
- initState()
- setState()
- didUpdateWidget()

# Section 5 : Working with Lists & Conditionals

- Don't use Column Widget, use `ListView` instead
- `ListView` can't be used with another widget  above it, if you need to, there are 2 ways you can.
    - Wrap the `ListView` inside `Container` and set the height, eg `Container(height: x ...`
    - Use `Expanded`
    ```
    Expanded(
        child: ListView(
            children: [Products(products)],
        ),
    ...
    )
    ```

- For lots and lots of items, don't use `ListView`, use `ListView.builder` instead (it renders only what's on screen)

```
ListView.builder(
    itemBuilder: // function to build an item
    itemCount: // how many items to build
)
```
```
  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/pizza.jpg'),
          Text(products[index])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ProductControl(_addProducts),
      Expanded(
        child: ListView.builder(
          itemBuilder: _buildProductItem,
          itemCount: products.length,
        ),
      )
    ]);
  }
```


# Section 6 : Navigation

### Pushing
```
onPressed: () => Navigator.push<String>(
  context,
  // we push a route
  MaterialPageRoute(
    // pass in teh  build context for what you want to load
    builder: (BuildContext context) => ProductPage()
  )
).then((String message) => 
  print(message)
)// returns a future
```

```
ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("Details"),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ProductPage(index.toString()))),
              )
            ]
          )
```
### Popping (going back)

```
onPressed: () => Navigator.pop(context),
```

### Passing data back to parent page when child page is popped

`onPressed: () => Navigator.pop(context, 'any value you want') `

Value can be whatever you want, then on the parent page, you can use `.then()` which is a Future

```
Navigator.push(context, etc etc).then((value){


})
```

Can give the type of the return aswell

```
Navigator.push<bool>(context).then((bool value){


})
```

There is another way to pass data back, using the `WillPopScope`, because sometimes the back button is pressed and you need to pass data back, you need to return a Future

This is on the child page, the page about to be popped

```
WillPopScope(
onWillPop: (){
	Navigator.pop(context, false);
	return Future.value(false)
	}

)
```

### Ensuring you can't go back

eg When a user has authenticated, you don't want the user to go back to the auth page, use

`Navigator.pushreplacement()`

## Sidebar

Use `Drawer` in the scaffold app

```
Scaffold(
        drawer: Drawer(
...
```

You can actually use an `AppBar` inside a `Column`, ensure you set `automaticallyImplyLeading: False` otherwise it infers the style from the main SideBar and will end up using the hamburger icon

```
drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(title: Text("Select")),
              ListTile(title : Text("Managed Prducts"),
              )
            ],
          ),
        ),
```

## Tabbed Navigation

```
DefaultTabController(
	length: 2 // the number of tabs
	child: Scaffold

	appBar: AppBar(
		bottom: TabBar(
			tabs: <Widget>[
				Tab(text: 'hello', icon: Icon(Icons.list)),
				Tab(text: 'Second Tab', icon: Icon(Icons.list))
			]
		)
	),

	// pages need to be = to the length/number of tabs above
	body: TabBarView(
		children: <Widget>[
			...put pages here
		]
	)
```
You can add the tabs in the appbar or add bottomNavigationBar widget

## Routes

Can use named routes, rathr than referring to Objects


```
routes: {
    '/': <- if you're using home: in the materialApp() Named argument, don't use this, because / is home
    '/admin' : (BuildContext context) => ProductAdminPage()
}
```
You don't need the slash
use 

`Navigate.pushNamed(context,'/admin')`
or
`Navigate.pushReplacementNamed(context,'/admin')`

when using named routes

## Passing data to pages during routes

use `onGenerateRoute:`
- called when there is no route set in the routes

settings variable holds

```
return MaterialApp(
  route: ...
  // returns a route
  onGenerateRoute: (RouteSettings settings) {
    return MaterialPageRoute(
      builder : (BuildContext context) => ProductPage(32,'john')
    )
  },
  onUnknownRoute : (RouteSettings settings){
    // when onGenerateRoute fails
    
  }
)

```

## Alert Dialogs

```
RaisedButton(
              child: Text("Hi this is awesome"), onPressed: () => showDialog(
                context: context,
                builder: (BuildContext conext) {
                  return AlertDialog(
                    title: Text("are you sure"),
                    content: Text("this action cannot be undone"),
                    actions: <Widget>[
                      FlatButton(child: Text("discard"),onPressed: (){
                        // will close the dialog
                        Navigator.pop(context);
                      },),
                      FlatButton(child: Text("continue"),onPressed: (){
                        Navigator.pop(context);
                      },)

                    ]
                  );
                }
              ),
            )

```

# Handling Input

There is also `onSubmitted`

```
TextField(
  // automatically has the blinker and kayboard up when you load the page
  //autofocus: true,
              onChanged: (String val){
                setState((){
                  mytitle=val;
                });
              },
              // on submitted is when we're done and submitting data
            )
```
to parse a double that has been input

```
onChanged: (String value){
  setState((){
    price = double.parse(value);
  })
}
```

number keyboard - `keyboardType: TextInputType.number,`
multiline = `maxLines: 4`

## Labels

```
TextField(
              // automatically has the blinker and kayboard up when you load the page
              //autofocus: true,
              decoration: InputDecoration(
                labelText: 'Please Enter some text',
                prefixIcon: Icon(Icons.accessible)
              ),
              maxLines: 4,
              onChanged: (String val){
                setState((){
                  mytitle=val;
                });
              },
              // on submitted is when we're done and submitting data
            ),
```

Don't use a column widget with input boxes, you'll get the yellow bars if the keyboard goes
over the screen

use ListView with children instead

```

```


# Design

Don't always need a Container and margin, you can use

`SizedBox()` widget

# Misc

```
 child: DecoratedBox(
                        child: Text("sdf"),
                        decoration: new BoxDecoration(
                            gradient: LinearGradient(
                                begin: FractionalOffset.bottomLeft,
                                end: FractionalOffset.topRight,
                                colors: [
                              Colors.amberAccent,
                              Colors.blueAccent
                            ])),
                      ),
```

# Language Notes

## Named Constructors

# named Arguments

Products({this.personName})

# then to use

Products(personName: "noodle")

# default arguments

Products(this.products = [])

# optional arguments

- named are always optional {}
but for non named, use square brackets

Products([this.products = const[]]) <- needs to be const


```
class Point{
  
  int x,y;
  Point(this.x,this.y);
  
  Point.fromJson(int x,int y){
    this.x = x;
    this.y = y;
  }
  
  printMe(){
    print("x: $x, y:$y");
  }
}

var pt2 = Point.fromJson(4,5);

```

# Cascades
```
 	final myCar = MyCar()

    ..setName('john')
    ..setAge(32);
```