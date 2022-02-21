//
//  main.swift
//  Flights_David_dzhu34

//

import Foundation
//create 2 flights
var flight1 = Flight(flightNum: "AA281", depAirport: "DFW", arrAirport: "ICN", distance: 6835.70)
var flight2 = Flight(flightNum: "KL1000", depAirport: "LHR", arrAirport: "CDG", distance: 212.38)

//create 2 travellers
var traveller1 = Traveller(id: "dz", name: "David Zhu", passportNum: 12345, email: "davidzhu@gmail.com")
var traveller2 = Traveller(id: "ws", name: "William Smith", passportNum: 1234567890, email: "williamsmith@hotmail.com")


//make reservation for traveller 1
print("- - - - \n")
print("Reservation for traveller 1 created successfully? \(traveller1.makeReservation(reservationDate: "2022-04-01", flight: flight1))")
print("Reservation for traveller 1 created successfully? \(traveller1.makeReservation(reservationDate: "2022-04-01", flight: flight2))")
print("\n")

//display traveller 1
traveller1.display()
print("\n")

//calculate cost
var traveller1Cost = traveller1.calculateBalance()

print("\(traveller1.name) owes: $\(traveller1Cost)")
print("\n- - - -\n")

//make reservation for traveller 2
print("Reservation for traveller 2 created successfully? \(traveller2.makeReservation(reservationDate: "2022-04-01", flight: flight2))")
print("\n")

//display traveller 2
traveller2.display()

//calculate cost
print("\n")
var traveller2Cost = traveller2.calculateBalance()
print("\(traveller2.name) owes: $\(traveller2Cost)")
