alert('Hello World');

var hello = 'Hello World';
alert(hello);

alert('Hello' + 'World');

var box1 = 'Hello';
var box2 = 'World!!';
alert(box1 + box2);

var orange = 100;
var apple = 120;

if (orange > apple){
	alert('みかんの値段がより安い');
}else if (orange == apple){
	alert('みかんとりんごの値段が同じ');
}else {
	alert('みかんの値段がリンゴより高い');
}

var max = 100;
var num = 1;
var count = 0;

while(num < max){
	num = num * 2;
	count = count + 1;
}

alert('2をかけ続けて' + max + 'を越えるのに必要だった回数は' + count + '回です');

var i;
var num = 0;

for(i = 1; i < 11; i++){
	num = num + i;
}



var promptStr = prompt('今日は天気がいいですね');

alert(promptStr);










