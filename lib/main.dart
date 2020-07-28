import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sudoku Solver',
      home: MyHomePage(title: 'Sudoku Solver'),
    );
  }
}
int mn = 0 ;
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
int _counter = 0;
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return solver() ;
  }
}


var lst = [
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0] ];


class solver extends StatefulWidget {
  @override
  _solverState createState() => _solverState();
}

class _solverState extends State<solver> {
  void shit(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('  Sudoku Solver'),
          centerTitle: true,
          leading:Icon(Icons.games),
        ),
        body: Container(
          margin: EdgeInsets.all(5),
          child:
          Column(
            children: <Widget>[

              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1 , color: Colors.black)
                  ),
                  child:
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(child: button('00'),),
                          Expanded(child: button('01'),),
                          Expanded(child: button('02'),),
                          Expanded(child: button('03'),),
                          Expanded(child: button('04'),),
                          Expanded(child: button('05'),),
                          Expanded(child: button('06'),),
                          Expanded(child: button('07'),),
                          Expanded(child: button('08'),),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(child: button('10'),),
                          Expanded(child: button('11'),),
                          Expanded(child: button('12'),),
                          Expanded(child: button('13'),),
                          Expanded(child: button('14'),),
                          Expanded(child: button('15'),),
                          Expanded(child: button('16'),),
                          Expanded(child: button('17'),),
                          Expanded(child: button('18'),),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(child: button('20'),),
                          Expanded(child: button('21'),),
                          Expanded(child: button('22'),),
                          Expanded(child: button('23'),),
                          Expanded(child: button('24'),),
                          Expanded(child: button('25'),),
                          Expanded(child: button('26'),),
                          Expanded(child: button('27'),),
                          Expanded(child: button('28'),),
                        ],
                      ),
                    ],
                  )
              ),// grid_0
              Container(
                decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide (width: 1 , color: Colors.black),
                      left: BorderSide (width: 1 , color: Colors.black),
                    )
                ),
                child:
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(child: button('30'),),
                        Expanded(child: button('31'),),
                        Expanded(child: button('32'),),
                        Expanded(child: button('33'),),
                        Expanded(child: button('34'),),
                        Expanded(child: button('35'),),
                        Expanded(child: button('36'),),
                        Expanded(child: button('37'),),
                        Expanded(child: button('38'),),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: button('40'),),
                        Expanded(child: button('41'),),
                        Expanded(child: button('42'),),
                        Expanded(child: button('43'),),
                        Expanded(child: button('44'),),
                        Expanded(child: button('45'),),
                        Expanded(child: button('46'),),
                        Expanded(child: button('47'),),
                        Expanded(child: button('48'),),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: button('50'),),
                        Expanded(child: button('51'),),
                        Expanded(child: button('52'),),
                        Expanded(child: button('53'),),
                        Expanded(child: button('54'),),
                        Expanded(child: button('55'),),
                        Expanded(child: button('56'),),
                        Expanded(child: button('57'),),
                        Expanded(child: button('58'),),
                      ],
                    ),
                  ],
                )
                ,
              ),// grid_1
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1 , color: Colors.black)
                ),
                child:
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(child: button('60'),),
                        Expanded(child: button('61'),),
                        Expanded(child: button('62'),),
                        Expanded(child: button('63'),),
                        Expanded(child: button('64'),),
                        Expanded(child: button('65'),),
                        Expanded(child: button('66'),),
                        Expanded(child: button('67'),),
                        Expanded(child: button('68'),),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: button('70'),),
                        Expanded(child: button('71'),),
                        Expanded(child: button('72'),),
                        Expanded(child: button('73'),),
                        Expanded(child: button('74'),),
                        Expanded(child: button('75'),),
                        Expanded(child: button('76'),),
                        Expanded(child: button('77'),),
                        Expanded(child: button('78'),),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: button('80'),),
                        Expanded(child: button('81'),),
                        Expanded(child: button('82'),),
                        Expanded(child: button('83'),),
                        Expanded(child: button('84'),),
                        Expanded(child: button('85'),),
                        Expanded(child: button('86'),),
                        Expanded(child: button('87'),),
                        Expanded(child: button('88'),),
                      ],
                    ),
                  ],
                )
                ,
              ),// grid_2
              Container(
                child:Column(
                  children: <Widget>[
                    Container(
                      height:MediaQuery.of(context).size.height * 0.7- MediaQuery.of(context).size.width,
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child:
                          Row(
                            children: <Widget>[
                              Expanded(child: nums(1),) ,
                              Expanded(child: nums(2),) ,
                              Expanded(child: nums(3),) ,
                              Expanded(child: nums(4),) ,
                              Expanded(child: nums(5),) ,
                            ],
                          )
                      ),
                    ),
                    Container(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child:
                          Row(
                            children: <Widget>[
                              Expanded(child: nums(6),) ,
                              Expanded(child: nums(7),) ,
                              Expanded(child: nums(8),) ,
                              Expanded(child: nums(9),) ,
                              Expanded(child: nums(0),) ,
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ),// numbers
              Container(
                height:MediaQuery.of(context).size.height * 0.15,
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.only(left: 5,right: 5),
                              child:OutlineButton(
                                onPressed: (){m(context);setState((){});},
                                child: Text("SOLVE",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 25),),
                                color: Colors.green,
                                borderSide: BorderSide(
                                    color: Colors.green,
                                    width: 2,
                                    style: BorderStyle.solid
                                ),
                              )
                          ),
                        ),
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.only(left: 5,right: 5),
                              child:OutlineButton(
                                onPressed: (){clear();setState((){});},
                                child: Text("CLEAN",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 25),),
                                color: Colors.green,
                                borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2,
                                    style: BorderStyle.solid
                                ),
                              )
                          ),
                        ),
                      ],
                    )
                ),
              ) // solve and clean button
            ],
          ),
        )
    );
  }


  void  incrementCounter(String s) {
    setState(() {
      int r = int.parse(s[0]);
      int c = int.parse(s[1]);
      lst[r][c]= nownum;
    });
  }
  Widget button (String s) {
    int r = int.parse(s[0]);
    int c = int.parse(s[1]);
    double mini1 = MediaQuery.of(context).size.height*0.1;
    double mini2 = MediaQuery.of(context).size.width*0.1;
    if(mini1>mini2)mini1=mini2;
    String n = '';
    if(lst[r][c]!=0) n = lst[r][c].toString();
    bool safe = true;
    if(lst[r][c]!=0 && !good(r, c, lst[r][c]))safe=false;
    return

      GestureDetector(

        onTap: () => incrementCounter(s), // handle your onTap here
        child:Container(
          height: mini1,
          child: Center (child:
          Text('$n' , style: lst[r][c]==nownum
              ? TextStyle(color: Colors.blue , fontWeight: FontWeight.bold ,fontSize: 22)
              : TextStyle(color: Colors.black ,fontSize: 20)
          )
          ) ,
          decoration: BoxDecoration(
            border: Border(
                left: c%3==0 && c>0
                    ? BorderSide( width: 1.0,  color: Colors.black)
                    : BorderSide( width: 1.0,  color: Colors.grey )
                ,
                top: r%3==0
                    ? BorderSide.none
                    : BorderSide( width: 1.0,  color: Colors.grey )
            ),
            color: safe
                ? Colors.white
                : Colors.deepOrange[200]
            ,

          ),
        ),
      );
  }
  Widget nums (int x) {

    double mini1 = MediaQuery.of(context).size.height*0.1;
    double mini2 = MediaQuery.of(context).size.width*0.1;
    if(mini1>mini2)mini1=mini2;

    Container c = Container(
        width: mini1,
        height: mini1,
        child: OutlineButton(
            onPressed: (){nownum = x;setState((){});},
            child:x==0
                ? Icon(Icons.flip ,color: x==nownum?Colors.green : Colors.black,)
                : Text(x.toString(),style:TextStyle(color: x==nownum?Colors.green:Colors.black,fontSize: 20))
        ),
        decoration: BoxDecoration(
          border: Border(
            left: x!=1 && x!=6
                ? BorderSide( width: 1.0,  color: Colors.black)
                : BorderSide.none ,
          ),
          color: Colors.white,
        )
    );

    return c;
  }

}


int nownum =0;

void clear(){
  for(int i=0;i<9;i++)
    for(int j=0;j<9;j++)
      lst[i][j]=0;
}
bool good(int r,int c, int v){
  for(int i=0;i<9;i++)if(lst[r][i]==v && i!=c)return false;
  for(int i=0;i<9;i++)if(lst[i][c]==v && i!=r)return false;

  int boxRowStart = r - r % 3;
  int boxColStart = c - c % 3;

  for (int i = boxRowStart;i < boxRowStart + 3; i++)
    for (int j = boxColStart;j < boxColStart + 3; j++)
      if (lst[i][j] == v && (i!=r || c!=j)) return false;
  return true;
}

bool isSafe(int row, int col,int num){
  for (int d = 0; d < 9; d++)
    if (lst[row][d] == num) return false;

  for (int r = 0; r < 9; r++)
    if (lst[r][col] == num) return false;

  int boxRowStart = row - row % 3;
  int boxColStart = col - col % 3;

  for (int r = boxRowStart;r < boxRowStart + 3; r++)
    for (int d = boxColStart;d < boxColStart + 3; d++)
      if (lst[r][d] == num ) return false;
  return true;
}

bool solveSudoku(){
  cn++;
  if(cn>40000) return false;

  int row = -1;
  int col = -1;
  bool isEmpty = true;
  for (int i = 0; i < 9; i++) {
    for (int j = 0; j < 9; j++)
      if (lst[i][j] == 0) {
        row = i;
        col = j;
        isEmpty = false;
        break;
      }
    if (!isEmpty)break;
  }
  if (isEmpty) return true;
  for (int num = 1; num <= 9; num++)
    if (isSafe(row, col, num)) {
      lst[row][col] = num;
      if (solveSudoku())return true;
      else lst[row][col] = 0;
    }
  return false;
}

int cn = 0;
void m(BuildContext context ){
  cn=0;
  if (solveSudoku()){
    print(cn.toString());
    return;
  }
  _showMyDialog(context);
  clear();
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title:
        Text("It's Impossible to solve! :( "),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Please try another puzzle '),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('OK'),
            onPressed: () {Navigator.of(context).pop();},
          ),
        ],
      );
    },
  );
}