main(List<String> args)
{
  String isim = 'a';
  print('hello');
  function();
  print(tekcift(4));
  print('adı $isim');
}
void function(){
  print('merhaba');
}

String tekcift(int data) => data % 2 == 0 ? 'Çift' : 'Tek';

