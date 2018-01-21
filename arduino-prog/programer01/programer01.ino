

void setup() {
  // put your setup code here, to run once:
   pinMode(13, OUTPUT);
   pinMode(12, OUTPUT);
   pinMode(11, OUTPUT);
   pinMode(10, OUTPUT);
   pinMode(9, OUTPUT);
   pinMode(8, OUTPUT);
   pinMode(7, OUTPUT);
   pinMode(6, OUTPUT);
   pinMode(5, OUTPUT);

}
void loop() {
  binout(0x7a);
  binout(0x7b);
  binout(0x30);
  binout(0x00);
  while(1)
  {

  }
}

void input()
{
  digitalWrite(5, HIGH);
  delay (1000);
  digitalWrite(5, LOW);
  delay (1000);
}
void binout(int var)
{
  digitalWrite(6, HIGH && (var & B10000000));
  digitalWrite(7, HIGH && (var & B01000000));
  digitalWrite(8, HIGH && (var & B00100000));
  digitalWrite(9, HIGH && (var & B00010000));
  digitalWrite(10, HIGH && (var & B00001000));
  digitalWrite(11, HIGH && (var & B00000100));
  digitalWrite(12, HIGH && (var & B00000010));
  digitalWrite(13, HIGH && (var & B00000001));
  input();
}
