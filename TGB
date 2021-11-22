#include<iostream>
#include<ctime>
using namespace std;


//function declarations
void shop();
void Monster();
void Battle (int MonsterHealth);
void NPC(int x);


//global variables
string inventory[10]; 
int health = 100;


int main() {

  int room = 1;
  string input = "a";
  string inventory[10]; 

  cout << "You wake up to find yourself in a spooky dungeon. Can you escape? Good luck" << endl;

  do {//GAME LOOP----------------------------

    
    cout << "Your inventory " ;
    for (int i = 0; i < 5; i++)
        cout << inventory[i] << " ";

    switch (room) {

    case 1:
      cout << "you are in a room" << endl;
      cout << "you can go (n)orth, (s)outh, or (w)est." << endl;
      cout << "type shop for shop" << endl;
      cin >> input;
      if (input == "N")
          room = 4;
      else if (input == "W")
        room = 2;
      else if (input == "shop")
        shop();//function call
      break;


    case 2://room2
        cout << "You are in room 2. you can go south" << endl;
        cin >> input;
          if (input == "S")
              room = 3;
    else 
        cout << "sorry, not an option" << endl;
    break;


  case 3:
      cout << "you are in room 3. you can go east" << endl;
      cin >> input;
      if (input == "E")
          room = 4;
      else 
        cout << "sorry not an option" << endl;
      break;
   case 4:
        cout << "sorry not an option" << endl;
        cin >> input;
        if (input == "W")
            room = 1;
        else 
          cout << "sorry not an option" << endl;
        break; 
        case 5:
      cout << "you are in room 4. you can go straight" << endl;
      cin >> input;
      if (input == "straight")
          room = 4;
      else 
        cout << "sorry not an option" << endl;
      break;
   case 6:
        cout << "sorry not an option" << endl;
        cin >> input;
        if (input == "W")
            room = 1;
        else 
          cout << "sorry not an option" << endl;
        break;
   case 7:
      cout << "you are in room 5. you can go left" << endl;
      cin >> input;
      if (input == "left")
          room = 2;
      else 
        cout << "sorry not an option" << endl;
      break;
   case 8:
        cout << "sorry not an option" << endl;
        cin >> input;
        if (input == "W")
            room = 1;
        else 
          cout << "sorry not an option" << endl;
        break;
   case 9:
      cout << "you are in room 6. you can go back" << endl;
      cin >> input;
      if (input == "back")
          room = 2;
      else 
        cout << "sorry not an option" << endl;
      break;
   case 10:
        cout << "sorry not an option" << endl;
        cin >> input;
        if (input == "W")
            room = 1;
        else 
          cout << "sorry not an option" << endl;
        break;                                         
    }//end switch

} while (input != "q"); //end of game loop
}//end of program


//function definitions
void shop(){
  string input; //local to shop
  do {
      cout << "Hi, welcome to my shop!" << endl;
      cout << "Enter k for key, p for potion, 1 for lamp"<<endl;
      cout << "q to quit" << endl;
      cin >> input;
      if (input == "q") {
          inventory[0] = "key";
          cout << "you got a key ong bruh!" << endl;
      }
      else if (input == "p") {
          inventory[1] = "potion";
          cout << "you got a potion onfoenem" << endl;
      }
      else if (input == "l") {
          inventory[2] = "lamp";
          cout << "you got a lamp onfoenem bruh" << endl;
      }         
  }while (input != "q");
}//end of shop function

  //Battle system definitions
  void Battle(int MonsterHealth) {
      int damage;
      while (health > 0 && MonsterHealth > 0) {
        //the monster attacks
        if(inventory[6] == "shield") {
        damage = rand() % 10;
        health -= damage;
        cout << "your shield blocks some of the damage ong!" << endl;
      }
      else {
          damage = rand() % 20;
          cout << "you take full damage!" << endl;
        }
        health -= damage;
        cout << "The monster hurts you for " << damage << " damage"<< endl; 

        //player attacks monster
        if(inventory [5] == "sword") {
          cout << "you slice the enemy with your sword!" << endl;
          damage = rand()%50 + 10;
          MonsterHealth -= damage;
        }
        else{
        damage = rand() % 40;
        cout << "you hit the monster with your fist" << endl;
        }
        MonsterHealth -= damage;
        cout << "you hurt the monster for " << damage << " damage" << endl;
      }//end battle loop
      if(MonsterHealth <= 0) {
        cout << "you destroyed the monster" << endl;
      }
      else cout << "you died." << endl;     
  }//end of battle system


void monster() {
  int num = rand() % 100 + 1;
  if (num < 20) {//20%chance]
  cout << "a skeleton appears" << endl;
  Battle(40); //call the battle
}
else if (num < 50) {//30% chance
  cout << "a zombie appears" << endl;
  Battle(50);
}
else if (num < 75) {//25% chance
  cout << "the room is empty." << endl;
}
}

//function definition
void NPC(int x) {
  int num; 
  if (x == 1)
      cout << "a squirrel appears!" << endl;
      num = rand() %3;//gets a number thats 0,1,2
      if (num == 0)
          cout << "Hi, nice weather today, huh" << endl;
      else if (num == 1)
          cout << "I like your shoes!" << endl;
      else if (num == 2)
          cout << "Acorns are tasty!" << endl;

  if (x == 2) 
      cout << "a wolf came outta no where" << endl;
      num = rand() %3;//gets a number thats 0,1,2
      if (num == 0)
          cout << "Hi, nice jacket you got there" << endl;
      else if (num == 1)
          cout << "you better start running" << endl;
      else if (num == 2)
          cout << "Before I rob you" << endl;
  
  if (x == 3)  
      cout << "a bird lands in front of you real quick" << endl;    
      num = rand() %3;//gets a number thats 0,1,2
      if (num == 0)
          cout << "Hi, nice weather today its not as windy for me to be flying" << endl;
      else if (num == 1)
          cout << "It gets pretty windy now this season" << endl;
      else if (num == 2)
          cout << "Anyways gotta go bye" << endl;    
}
