//
//  Reservation.swift
//  Flights_David_dzhu34
//

import Foundation
class Reservation:Flight{
    let reservationID:String
    var reservationDate:String
    
    init(flightNum:String, depAirport:String, arrAirport:String, distance:Double, departureDate:String, cost:Double){
        //reservationID is a random number with 'S' or 'L'
        let randomInt = Int.random(in: 1000..<10000)
        if(distance <= 500){
            self.reservationID = "\(randomInt)S"
        }else{
            self.reservationID = "\(randomInt)L"
        }
        
        self.reservationDate = departureDate
        
        super.init(flightNum:flightNum, depAirport:depAirport, arrAirport: arrAirport, distance:distance)
    }
    
    override func display(){
        print("Reservation ID: \(self.reservationID)")
        print("Date of Departure: \(self.reservationDate)")
        super.display()
    }
  
}
