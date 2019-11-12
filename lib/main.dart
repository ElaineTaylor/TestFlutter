import 'package:flutter/material.dart';

import 'src/switch_and_checkbox.dart';
import 'src/text.dart';
import 'src/button.dart';
import 'src/pic.dart';
import 'src/textfield.dart';
import 'src/new_route.dart';
import 'src/random_words.dart';
import 'src/text_field_two.dart';
import 'src/form.dart';
import 'src/row.dart';
import 'src/flex_and_expanded.dart';
import 'src/wrap.dart';
import 'src/flow.dart';
import 'src/stack_and_positioned.dart';
import 'src/padding.dart';
import 'src/constrained_box.dart';
import 'src/size_box.dart';
import 'src/decorated_box.dart';
import 'src/transform.dart';
import 'src/container.dart';
import 'src/scaffold_route.dart';
import 'src/single_child_scrollview.dart';
import 'src/listview.dart';
import 'src/infinite_listview.dart';
import 'src/gridview.dart';
import 'src/infinite_gridview.dart';
import 'src/custom_scrollview_test.dart';
import 'src/scroll_controller.dart';
import 'src/scroll_notification.dart';
import 'src/will_pop_scope.dart';
import 'src/inherited_widget.dart';
import 'src/color.dart';
import 'src/theme.dart';
import 'src/future_builder.dart';
import 'src/stream_builder.dart';
import 'src/dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "new_page": (context) => NewRoute(),
        "checkbox": (context) => SwitchAndCheckBoxTestRoute(),
        "text": (context) => TextRoute(),
        "button": (context) => ButtonRoute(),
        "pic": (context) => PicRoute(),
        "textField": (context) => TextFieldRoute(),
        "randwords": (context) => RandomWordsWidget(),
        "textFieldTwo": (context) => FocusTestRoute(),
        "form": (context) => FormTestRoute(),
        "row": (context) => RowRoute(),
        "flexAndEx": (context) => FlexAndExRoute(),
        "wrap": (context) => WrapRoute(),
        "flow": (context) => FlowRoute(),
        "stackAndPos": (context) => StackAndPositioned(),
        "padding": (context) => PaddingRoute(),
        "constainedBox": (context) => ConstrainedBoxRoute(),
        "sizebox": (context) => SizeBoxRoute(),
        "decoratedBox": (context) => DecorateBoxRoute(),
        "transform": (context) => TransformRoute(),
        "container": (context) => ContainerRoute(),
        "scaffold": (context) => ScaffoldRoute(),
        "singleChildScrollView": (context) => SingleChildScrollViewRoute(),
        "listview": (context) => ListViewRoute(),
        "infiniteListView": (context) => InfiniteListView(),
        "gridView": (context) => GridViewRoute(),
        "infiniteGridViewRoute": (context) => InfiniteGridViewRoute(),
        "customScrollView": (context) => CustomScrollViewTestRoute(),
        "scrollController": (context) => ScrollControllerTestRoute(),
        "scrollNotification(有bug)": (context) => ScrollNotificationTestRoute(),
        "willPopScope": (context) => WillPopScopeRoute(),
        "inheritedWidget": (context) => InheritedWidgetRoute(),
        "color": (context) => ColorRoute(),
        "theme": (context) => ThemeRoute(),
        "futureBuilder": (context) => FutureBuilderRoute(),
        "streamBuilder": (context) => StreamBuilderRoute(),
        "dialog":(context)=>DialogRoute(),
      },
      home: MyHomePage(title: 'Flutter学习'),
    );
  }
}

class EchoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    return Scaffold(appBar: AppBar(title: Text(args)));
  }
}

//主界面
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Text(
            'You have pushed the button this many times:$_counter',
          ),
          FlatButton(
            child: Text("打开新界面"),
            textColor: Colors.blue,
            onPressed: () {
              //第一种
              /*Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new NewRoute();
                }));*/
              //第二种
              Navigator.pushNamed(context, "new_page");
              //第三种
              //Navigator.of(context).pushNamed("new_page", arguments: "hi");
            },
          ),
          FlatButton(
            child: Text("随机数"),
            onPressed: () {
              Navigator.of(context).pushNamed("randwords");
            },
          ),
          FlatButton(
            child: Text("打开文本，字体样式"),
            onPressed: () {
              Navigator.of(context).pushNamed("text");
            },
          ),
          FlatButton(
            child: Text("按钮"),
            onPressed: () {
              Navigator.of(context).pushNamed("button");
            },
          ),
          FlatButton(
            child: Text("图片和icon"),
            onPressed: () {
              Navigator.of(context).pushNamed("pic");
            },
          ),
          FlatButton(
            child: Text("单选框和复选框"),
            onPressed: () {
              Navigator.pushNamed(context, "checkbox");
            },
          ),
          FlatButton(
            child: Text("输入框和表单之输入框1"),
            onPressed: () {
              Navigator.pushNamed(context, "textField");
            },
          ),
          FlatButton(
            child: Text("输入框和表单之输入框2"),
            onPressed: () {
              Navigator.pushNamed(context, "textFieldTwo");
            },
          ),
          FlatButton(
            child: Text("输入框和表单之表单"),
            onPressed: () {
              Navigator.pushNamed(context, "form");
            },
          ),
          FlatButton(
            child: Text("线性布局Row、Column之row"),
            onPressed: () {
              Navigator.pushNamed(context, "row");
            },
          ),
          FlatButton(
            child: Text("弹性布局Flex"),
            onPressed: () {
              Navigator.pushNamed(context, "flexAndEx");
            },
          ),
          FlatButton(
            child: Text("流式布局Row"),
            onPressed: () {
              Navigator.pushNamed(context, "wrap");
            },
          ),
          FlatButton(
            child: Text("流式布局flow"),
            onPressed: () {
              Navigator.pushNamed(context, "flow");
            },
          ),
          FlatButton(
            child: Text("层叠布局Stock、Postioned"),
            onPressed: () {
              Navigator.pushNamed(context, "stackAndPos");
            },
          ),
          FlatButton(
            child: Text("Padding"),
            onPressed: () {
              Navigator.pushNamed(context, "padding");
            },
          ),
          FlatButton(
            child: Text("布局限制类容器ConstraintedBox"),
            onPressed: () {
              Navigator.pushNamed(context, "constainedBox");
            },
          ),
          FlatButton(
            child: Text("布局限制类容器SizedBox"),
            onPressed: () {
              Navigator.pushNamed(context, "sizebox");
            },
          ),
          FlatButton(
            child: Text("装饰容器decoratedBox"),
            onPressed: () {
              Navigator.pushNamed(context, "decoratedBox");
            },
          ),
          FlatButton(
            child: Text("变换transform"),
            onPressed: () {
              Navigator.pushNamed(context, "transform");
            },
          ),
          FlatButton(
            child: Text("container容器"),
            onPressed: () {
              Navigator.pushNamed(context, "container");
            },
          ),
          FlatButton(
            child: Text("scaffold、TabBar、底部导航"),
            onPressed: () {
              Navigator.pushNamed(context, "scaffold");
            },
          ),
          FlatButton(
            child: Text("singleChildScrollView"),
            onPressed: () {
              Navigator.pushNamed(context, "singleChildScrollView");
            },
          ),
          FlatButton(
            child: Text("listview"),
            onPressed: () {
              Navigator.pushNamed(context, "listview");
            },
          ),
          FlatButton(
            child: Text("infiniteListView"),
            onPressed: () {
              Navigator.pushNamed(context, "infiniteListView");
            },
          ),
          FlatButton(
            child: Text("gridView"),
            onPressed: () {
              Navigator.pushNamed(context, "gridView");
            },
          ),
          FlatButton(
            child: Text("infiniteGridView"),
            onPressed: () {
              Navigator.pushNamed(context, "infiniteGridViewRoute");
            },
          ),
          FlatButton(
            child: Text("customScrollView"),
            onPressed: () {
              Navigator.pushNamed(context, "customScrollView");
            },
          ),
          FlatButton(
            child: Text("滚动监听scrollController"),
            onPressed: () {
              Navigator.pushNamed(context, "scrollController");
            },
          ),
          FlatButton(
            child: Text("滚动控制scrollNotification（有Bug）"),
            onPressed: () {
              Navigator.pushNamed(context, "scrollNotification");
            },
          ),
          FlatButton(
            child: Text("导航返回拦截willPopScope"),
            onPressed: () {
              Navigator.pushNamed(context, "willPopScope");
            },
          ),
          FlatButton(
            child: Text("数据共享INheritedWidget(未看完)"),
            onPressed: () {
              Navigator.pushNamed(context, "inheritedWidget");
            },
          ),
          FlatButton(
            child: Text("跨组件状态共享Provider(未做)"),
            onPressed: () {
              //Navigator.pushNamed(context, "inheritedWidget");
            },
          ),
          FlatButton(
            child: Text("颜色Color"),
            onPressed: () {
              Navigator.pushNamed(context, "color");
            },
          ),
          FlatButton(
            child: Text("主题Theme"),
            onPressed: () {
              Navigator.pushNamed(context, "theme");
            },
          ),
          FlatButton(
            child: Text("异步更新UI之futureBuilder"),
            onPressed: () {
              Navigator.pushNamed(context, "futureBuilder");
            },
          ),
          FlatButton(
            child: Text("异步更新UI之streamBuilder"),
            onPressed: () {
              Navigator.pushNamed(context, "streamBuilder");
            },
          ),
          FlatButton(
            child: Text("对话框"),
            onPressed: () {
              Navigator.pushNamed(context, "dialog");
            },
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
