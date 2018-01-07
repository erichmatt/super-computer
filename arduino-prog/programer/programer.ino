void setup() {
  // put your setup code here, to run once:

}
void loop() {

binout(0);
}


void binout(int var)
{
   digitalWrite(11, HIGH && (var & B00001000));
   digitalWrite(12, HIGH && (var & B00000100));
   digitalWrite(13, HIGH && (var & B00000010));
   digitalWrite(14, HIGH && (var & B00000001));
}
