import Foundation
var userInput = true
var stuArr = [Student]()
var empArr = [Employee]()
class Student {
  var strID = " "
  var strName = ""
  var strAddress = "" 
init(strID:String , strName:String ,strAddress:String) {
  self.strID = strID
   self.strName = strName
   self.strAddress = strAddress
  }
}
class Employee {
  var empID = " "
  var empName = ""
  var empAddress = "" 
init(empID:String , empName:String ,empAddress:String) {
  self.empID = empID
   self.empName = empName
   self.empAddress = empAddress
  }
}
func computerPlay()
{
  print("Your turn .. Enter Rock /Paper /Scissors")
    var userChoice = readLine()!
    userChoice.lowercased()
  if (userChoice != "quit")
  {
    let computerChoice = Double.random(in: 0...1)
    var randomChoice = " "
    if (computerChoice < 0.34)
    { 
     randomChoice = "rock"
    }
    else if(computerChoice <= 0.67) 
    {
     randomChoice = "paper"
    }
    else 
    { 
     randomChoice = "scissors" 
    } 
 print ("Computer choose " + randomChoice)
    var compare = gameCompare(computerChoice:randomChoice ,     userChoice:userChoice)
    print (compare)
    computerPlay()
  }
}
func twoPlayer()
{
  print("1st Player turn ..Enter Rock /Paper /Scissors")
    var playerFirst = readLine()!
    playerFirst.lowercased()
if(playerFirst != "quit")
  {
   print("2nd Player turn .. Enter Rock /Paper /Scissors")
    var playerTwo = readLine()!
     playerTwo.lowercased()
 var compare = gameCompare(computerChoice:playerFirst , userChoice:playerTwo)
    print (compare)
  twoPlayer()
  }
}
func gameCompare(computerChoice: String ,userChoice:String) -> String {
     if(computerChoice == userChoice)
      {
       return "The result is a tie!"
      } else if(computerChoice == "rock")
    { 
     if(userChoice == "scissors") 
      { 
       return "rock wins"; 
      } else 
      { 
       return "paper wins"; 
      } 
    } else if(computerChoice == "paper") 
      { 
       if(userChoice == "rock")
        { 
         return "paper wins"
        } else
        { 
         return "scissors wins"
        } 
      } else if(computerChoice == "scissors")
      {
       if(userChoice == "rock")
        {
         return "rock wins"
        } 
        else 
        { 
         return "scissors wins"
        }
      }else{
        return " "
      }

}

func managerApp()
{
    print("Please input the command you like to play:")
    print("Type H for Help")
    print("Type AS for Add Student")
    print("Type AE for Add Manager")
    print("Type D for Delete")
    print("Type List for List all Student and Manager") 
    print("Type Q for Quit")
    print("Your choice: ",terminator: " ")
    let myChoice = readLine()
    if(myChoice == "H")  
        {
          print ("\n\nHeres the some list of commands and                     their descriptions.\n\nIf you enter command                  AS then you can add student which has                         student id , student name and student                       Address. \n\nIf you enter command AE then                     you can add Employee which has Emplyoee                     Number , Employee FullName and Employee                       Address.\n\nIf you want to delete then go                     with D Command.\n\nList all student and                     manager list using List Command.\n\nPress                    Q for exit the system\n\n")
                managerApp()
        }
else if (myChoice == "AS"){
  var number = ""
  var name = ""
  var add = ""
print ("Please Enter Student ID")
 number = readLine()!
var stuFound = false 
    for student1 in stuArr
    {
      if(student1.strID == number)
      {
        stuFound = true
        break
      }
    }
  if (stuFound == false)
  {
   print ("Please Enter Student Name")
 name = readLine()!
print ("Please Enter Student Address")
add = readLine()!

stuArr.append(Student(strID: number, strName: name , strAddress:add ))
    managerApp()
  }else{
    print ("Student is already exist")
    managerApp()
  }
}

else if(myChoice == "AE")
{
var empnumber = ""
  var empname = ""
  var empadd = ""
print ("Please Enter Employee Number")
 empnumber = readLine()!

var empFound = false 
    for employee1 in empArr
    {
      if(employee1.empID == empnumber)
      {
        empFound = true
        break
      }
    }
  if (empFound == false)
  {
    print ("Please Enter Employee Name")
 empname = readLine()!
print ("Please Enter Employee Address")
empadd = readLine()!
    empArr.append(Employee(empID:empnumber , empName:empname , empAddress:empadd ))
    managerApp()
  }else{
    print ("Employee is already exist")
    managerApp()
  }

}

 else if(myChoice  == "Q"){  
    }
    
   else if(myChoice == "D") {
      print ("Please Press S if you want to delete student OR Press E if you want to delete Employee")
     
 var choice = readLine()!
     if (choice == "S")
     {
 print ("Please enter student ID")
       var ID = " "
       ID = readLine()!
       for i in 0..<stuArr.count
       {
         if stuArr[i].strID == ID {
           stuArr.remove(at: i)
           print("Student " + ID + " is removed")
         managerApp()
         }else
         {
           print("No Student Found..!")
managerApp()
         }
       }
       managerApp()
  
     }else if (choice == "E")
     {
        print ("Please enter Employee Number")
       var empID = " "
       empID = readLine()!
       for i in 0..<empArr.count
       {
         if empArr[i].empID == empID {
           empArr.remove(at:i)
            print("Employee " + empID + " is removed")
         managerApp()
         }
         else{
           print ("No Employee Found..!")
           managerApp()
         }
       }
       managerApp()
     }else
     {
       print("Wrong input choose")
       managerApp()
     }
    }
   else if(myChoice == "List")
   {
     for student in stuArr
  {
    print("Student ID is " + student.strID)
     print("Student Name is " + student.strName)
     print("Student Address is " + student.strAddress) 
  }
for employee in empArr
  {
    print("Employee Number is " + employee.empID)
     print("Employee Name is " + employee.empName)
     print("Employee Address is " + employee.empAddress)
  }
     managerApp()
   }
  else{
        print("Invalid input. Try again.\n")
    }
   
}

repeat{
    print("Please input the task you like to run:")
    print("R for Rock-Paper-Scissors")
    print("E for Enum")
    print("Emp for Employee-Student Manager")
    print("Your choice: ",terminator: " ")
let userChoice = readLine()
    if(userChoice == "R")
{
 print("To whom do you play with ?")
  print ("Press C for play with Computer and Press T for play with your friend")
  var userPlay = readLine()!
  
  if(userPlay == "C")
  {
  computerPlay()
    }
else if (userPlay == "T")
  {
  twoPlayer( )
}
}
else if (userChoice == "E"){
enum SearchEngine: String, CaseIterable {
    case search1 = "How many programs available for MAY 2023 intake in cambrian ?";
    case search2 = "Part time jobs in Sudbury ?";
    case search3 = "What is the attractions of Sudbury ?";
    case search4 = "IT jobs in Sudbury ?";
    case search5 = "IS my mobile works well in Sudbury ?"
}
SearchEngine.allCases.forEach {
    print($0.rawValue)
}

}else if
 (userChoice  == "Emp"){
        print("You choose \(userChoice!).\n")
   managerApp()
    
 

}
  else{

    userInput = false
  }

}while (userInput)

  