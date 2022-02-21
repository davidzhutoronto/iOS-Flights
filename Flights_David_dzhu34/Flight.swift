//
//  Flight.swift
//  Flights_David_dzhu34

class Flight:CanBeDisplayed{
    var flightNum:String
    var depAirport:String
    var arrAirport:String
    var distance:Double
    
    //cost is a computed property
    var cost:Double{
        get{
            if(distance > 500){
                return 1000 + Double(distance) * 0.25
            }
            else{
                return 200 + Double(distance) * 0.5
            }
        }
    }
    
    
    init(flightNum:String, depAirport:String, arrAirport:String, distance:Double){
        self.flightNum = flightNum
        self.depAirport = depAirport
        self.arrAirport = arrAirport
        self.distance = distance
    }
    
    
    
    func display(){
        print("Departing \(depAirport), Arriging \(arrAirport) on Flight \(flightNum)")
    }
    
}
