import 'package:flutter/material.dart';

class DialogRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("对话框"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () async {
              bool delete = await showDeleteConfirmDialog1(context);
              if (delete == null) {
                print("取消删除");
              } else {
                print("已确认删除");
              }
            },
            child: Text("对话框"),
          ),
          RaisedButton(
            onPressed: () async {
              changeLanguage(context);
            },
            child: Text("选择对话框"),
          ),
          RaisedButton(
            onPressed: () async {
              showListDialog(context);
            },
            child: Text("列表对话框"),
          ),
          RaisedButton(
            onPressed: () async {
              showCustomDialog2(context);
            },
            child: Text("自定义效果对话框"),
          ),
          RaisedButton(
            onPressed: () async {
              int type = await _showModalBottomSheet(context);
              print(type);
            },
            child: Text("显示底部菜单列表"),
          ),
          RaisedButton(
            onPressed: () {
              _showBottomSheet(context);
            },
            child: Text("显示菜单列表(有bug)"),
          ),
          RaisedButton(
            onPressed: () {
              showLoadingDialog(context);
            },
            child: Text("Loading框"),
          ),
          RaisedButton(
            onPressed: () {
              showLoadingDialog2(context);
            },
            child: Text("自定义Loading框"),
          ),
        ],
      ),
    );
  }
}

Future<bool> showDeleteConfirmDialog1(BuildContext context) {
  return showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("提示"),
        content: Text("您确定要删除当前文件吗？"),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text("取消"),
          ),
          FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text("删除"),
          ),
        ],
      );
    },
  );
}

Future<void> changeLanguage(BuildContext context) async {
  int i = await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text("请选择语言"),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 1);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: const Text("中文简体"),
              ),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 2);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: const Text("美国英语"),
              ),
            )
          ],
        );
      });
  if (i != null) {
    print("选择了:${i == 1 ? "中文简体" : "美国英语"}");
  }
}

Future<void> showListDialog(BuildContext context) async {
  int index = await showDialog<int>(
    context: context,
    builder: (BuildContext context) {
      var child = Column(
        children: <Widget>[
          ListTile(
            title: Text("请选择"),
          ),
          Expanded(
            child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text("${index}"),
                onTap: () => Navigator.of(context).pop(index),
              );
            }),
          )
        ],
      );
      return Dialog(
        child: child,
      );
    },
  );
  if (index != null) {
    print("点击了：$index");
  }
}

Future<T> showCustomDialog<T>({
  @required BuildContext context,
  bool barrierDismissible = true,
  WidgetBuilder builder,
}) {
  final ThemeData theme = Theme.of(context, shadowThemeOnly: true);
  return showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext buildcontext, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        final Widget pageChild = Builder(builder: builder);
        return SafeArea(
          child: Builder(
            builder: (BuildContext context) {
              return theme != null
                  ? Theme(data: theme, child: pageChild)
                  : pageChild;
            },
          ),
        );
      },
      barrierDismissible: barrierDismissible,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black87,
      transitionDuration: const Duration(milliseconds: 150),
      transitionBuilder: _buildMaterialDialogTransitions);
}

Widget _buildMaterialDialogTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
  return ScaleTransition(
    scale: CurvedAnimation(
      parent: animation,
      curve: Curves.easeInOut,
    ),
    child: child,
  );
}

Future<bool> showCustomDialog2<bool>(BuildContext context) {
  return showCustomDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示"),
          content: Text("您确定要删除当前文件吗?"),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("取消"),
            ),
            FlatButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text("删除"),
            ),
          ],
        );
      });
}

Future<int> _showModalBottomSheet(BuildContext context) {
  return showModalBottomSheet<int>(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("$index"),
            onTap: () => Navigator.of(context).pop(index),
          );
        });
      });
}

PersistentBottomSheetController<int> _showBottomSheet(BuildContext context) {
  return showBottomSheet<int>(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
            itemCount: 30,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text("$index"),
                onTap: () {
                  print("$index");
                  Navigator.of(context).pop();
                },
              );
            });
      });
}

showLoadingDialog(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircularProgressIndicator(),
              Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: Text("正在加载，请稍后..."),
              )
            ],
          ),
        );
      });
}

showLoadingDialog2(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return UnconstrainedBox(
          constrainedAxis: Axis.vertical,
          child: SizedBox(
            width: 280,
            child: AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircularProgressIndicator(
                    value: .8,//删除则转动
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 26.0),
                    child: Text("正在加载，请稍后..."),
                  )
                ],
              ),
            ),
          ),
        );
      });
}
