//#include "Arduino.h"
//#include "Wire.h"
//#include "uRTCLib.h"

const byte numChars = 64;
char receivedChars[numChars];
boolean newData = false;

//uRTCLib rtc;


#define VER "1.0.3" //current version
#define MODE 1      //0=remote | 1=local
#define BAUD 1200   //1200bps is max supported speed by TCM3105
#define INIT rtc.set(0, 50, 20, 5, 25, 10, 19)
                  //S, M, H, DW, DD, MM, YY 

#define PTT_PIN 12  
#define RCV_RDY 11  //Is modem ready to receive data (CDT pin on TCM3105 is low)
#define PWR_VSS A0
#define SCL_PIN A5
#define SDA_PIN A4
#define CALL "SP1HDI"
#define SSID "-1"
#define DEST "PCB"
#define SRC CALL
#define PTT_MODE LOW   //depends on PTT type in transciever

#define START_MARKER 0x7E
#define END_MARKER 0x17
#define PREAMBULE "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
int x=0;


void setup() {
      if(MODE==0)
      {   //Konfiguracja komunikacji z modemem
          Serial.begin(BAUD); 
          delay(2000);
          Serial.println("FSK MODEM by SP1HDI");
          Serial.println("Remote Mode PCB");
          Serial.println("version 1.0.3");
          Serial.print("Your callsign is: ");
          Serial.print(CALL);
          Serial.println(SSID);
      }
      else
      {
          Serial.begin(BAUD); 
          delay(2000);
          Serial.println("FSK MODEM by SP1HDI");
          Serial.println("Local Mode PCB");
          Serial.println("version 1.0.3");
          Serial.print("Your callsign is: ");
          Serial.print(CALL);
          Serial.println(SSID);
      }

      {   //Konfiguracja pinów mikrokontrolera
          pinMode(RCV_RDY, INPUT);
          pinMode(PTT_PIN,OUTPUT);
          pinMode(LED_BUILTIN,OUTPUT);
      }
//      Wire.begin();
//      rtc.set_rtc_address(0x68);
     // INIT;
      testProcedure();
      
      delay(5000);
      //transmitData();
}

void loop() {
//    if(digitalRead(RCV_RDY) != HIGH)
//    {
//      transmitData();
      PTTon();
      Serial.print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras vel lorem. Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam. Quisque semper justo at risus. Donec venenatis, turpis vel hendrerit interdum, dui ligula ultricies purus, sed posuere libero dui id orci. Nam congue, pede vitae dapibus aliquet, elit magna vulputate arcu, vel tempus metus leo non est. Etiam sit amet lectus quis est congue mollis. Phasellus congue lacus eget neque. Phasellus ornare, ante vitae consectetuer consequat, purus sapien ultricies dolor, et mollis pede metus eget nisi. Praesent sodales velit quis augue. Cras suscipit, urna at aliquam rhoncus, urna quam viverra nisi, in interdum massa nibh nec erat. @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
      PTToff();
      delay(15000);
//    }
    
//    recvWithStartEndMarkers();
 //   showNewData();
//delay(3000);
}

void ACK(){
  PTTon();
  Serial.write(PREAMBULE);
  Serial.write(START_MARKER);

  Serial.print("The quick brown fox jumps over the lazy dog 1 of 3");

  Serial.write(END_MARKER);
  Serial.write(PREAMBULE);
  Serial.write("\n");
  PTToff();
  delay(2000);

  PTTon();
  Serial.write(PREAMBULE);
  Serial.write(START_MARKER);

  Serial.print("The quick brown fox jumps over the lazy dog 2 of 3");

  Serial.write(END_MARKER);
  Serial.write(PREAMBULE);
  Serial.write("\n");
  PTToff();
  delay(2000);

  PTTon();
  Serial.write(PREAMBULE);
  Serial.write(START_MARKER);

  Serial.print("The quick brown fox jumps over the lazy dog 3 of 3");

  Serial.write(END_MARKER);
  Serial.write(PREAMBULE);
  Serial.write("\n");
  PTToff();
  delay(2000);


}

void PTTon() {
  digitalWrite(PTT_PIN, PTT_MODE);
  digitalWrite(LED_BUILTIN,HIGH);
  delay(200);
}

void PTToff() {
  delay(300);
  digitalWrite(PTT_PIN, !PTT_MODE);
  digitalWrite(LED_BUILTIN,LOW);
}

void recvWithStartEndMarkers() {
    static boolean recvInProgress = false;
    static byte ndx = 0;
    char rc;
 
    while (Serial.available() > 0 && newData == false) {
        rc = Serial.read();

        if (recvInProgress == true) {
            if (rc != END_MARKER) {
                receivedChars[ndx] = rc;
                ndx++;
              
                if (ndx >= numChars) {
                    ndx = numChars - 1;
                }
            }
            else {
                receivedChars[ndx] = '\0'; // terminate the string
                recvInProgress = false;
                ndx = 0;
                newData = true;
            }
        }

        else if (rc == START_MARKER) {
            recvInProgress = true;
        }
    }
}

void showNewData() {
    if (newData == true) {
        Serial.print("This just in ... ");
        Serial.println(receivedChars);
        newData = false;
    if (strcmp("TEST123", receivedChars) == 0)
     {
      delay(5000);
        ACK();
     }
    }
}


void prepareFrame()
{

//odczytajCzas();
//odczytajDate();
//odczytajTemperature();
//odczytajWilgotnosc();
//znakWywolawczyZrodlowy();
//znakWywolawczyDocelowy();
//odczytajNapiecie5V();
//odczytajInneDane();

  
}

void transmitData()
{
//rtc.refresh();

  PTTon();
  
  Serial.write(PREAMBULE);
  Serial.write(START_MARKER);
  Serial.print(DEST);
  Serial.print('>');
  Serial.print(SRC);
  Serial.print("-1");
  Serial.print(':');
  Serial.print('T');

//  Serial.print(rtc.year());
  Serial.print('/');
//  Serial.print(rtc.month());
  Serial.print('/');
//  Serial.print(rtc.day());

  Serial.print('.');

//  Serial.print(rtc.hour());
  Serial.print(':');
//  Serial.print(rtc.minute());
  Serial.print(':');
//  Serial.print(rtc.second());

  Serial.print(' ');

  Serial.print("Telemetry test - FSK Modem");

  Serial.write(END_MARKER);
  Serial.write(PREAMBULE);
  Serial.write("\n");
  
  PTToff();

}

void receiveData()
{


  
}




void testProcedure()
{
          digitalWrite(LED_BUILTIN,HIGH);
          digitalWrite(PTT_PIN,PTT_MODE);
          delay(350);
          digitalWrite(PTT_PIN,!PTT_MODE);
          digitalWrite(LED_BUILTIN,LOW);
          delay(350);
          digitalWrite(LED_BUILTIN,HIGH);
          digitalWrite(PTT_PIN,PTT_MODE);
          delay(350);
          digitalWrite(PTT_PIN,!PTT_MODE);
          digitalWrite(LED_BUILTIN,LOW);
          delay(350);
          Serial.println("Test procedure completed!");
}
