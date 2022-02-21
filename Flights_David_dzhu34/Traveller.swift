//
//  Traveller.swift
//  Flights_David_dzhu34
//
import Foundation

class Traveller: CanBeDisplayed{
    
    let name:String
    let id:String
    var passportNum:Int?
    var email:String
    var reservationsList:[Reservation]
    var balance:Double{
        get{
            var bal:Double = 0.0
            for i in 0..<reservationsList.count{
                bal += reservationsList[i].cost
            }
            return bal
        }
    }
        
    init (id:String, name:String, passportNum:Int, email:String){
        self.name = name
       
        if (passportNum  >= 10000 && passportNum <= 99999){
            self.passportNum = passportNum
        }
        else{
            self.passportNum = nil
        }
        self.id = id
        self.email = email
        self.reservationsList = []
    }
    
    func calculateBalance()->Double{
        var balance:Double = 0
        for i in 0..<reservationsList.count{
            balance += reservationsList[i].cost
        }
        return balance
    }
    
    func display() {
        var passportValidation:String
        var reservationString:String
        
        if (passportNum == nil){
            passportValidation = "No"
        }else{
            passportValidation = "Yes"
        }
        
        if(reservationsList.isEmpty){
            reservationString = "\(self.name) does not have any reservations"
        }else{
        var totalRes:Int
            totalRes = self.reservationsList.count
            reservationString = "Total Reservations: \(totalRes)"
        }
        
        print("Name: \(self.name)")
        print("Email: \(self.email)")
        print("Valid passport? \(passportValidation)")
        print("\n")
        print("\(reservationString)")

        if(!reservationString.isEmpty){
            for i in 0..<reservationsList.count{
                print("\n")
                reservationsList[i].display()
            }
        }
    }
    
    func makeReservation(reservationDate:String,flight:Flight)->Bool{
        let flightNum = flight.flightNum
        let depAirport = flight.depAirport
        let arrAirport = flight.arrAirport
        let distance = flight.distance
        let reservationDate = reservationDate
        let cost = flight.cost
       
        if(self.passportNum != nil){
            let myRes = Reservation(flightNum: flightNum, depAirport: depAirport, arrAirport: arrAirport, distance: distance, departureDate: reservationDate, cost: cost)
            self.reservationsList.append(myRes)
            return true
        }
        else
        {
            return false
        }
        
    }
    
}
