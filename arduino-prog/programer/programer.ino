void setup() {
  // put your setup code here, to run once:
   pinMode(14, OUTPUT);
   pinMode(13, OUTPUT);
   pinMode(12, OUTPUT);
   pinMode(11, OUTPUT);
   pinMode(10, OUTPUT);

}
void loop() {

binout(0);
}


void binout(int var)
{
   digitalWrite(10, HIGH && (var & B00001000));
   digitalWrite(11, HIGH && (var & B00000100));
   digitalWrite(12, HIGH && (var & B00000010));
   digitalWrite(13, HIGH && (var & B00000001));
}
