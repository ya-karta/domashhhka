import Foundation
class trunkCar: Car {
    init (model: String, maxVolume: Double, year: Int? = nil, volume: Double){
        super.init()
        self.model = model
        self.maxVolume = maxVolume
        self.year = year ?? 2008
        self.volume = volume
    }
  
    enum Action {
        case loadCargo (Double?)
        case unloadCargo (Double?)
    }
   
    func performAction (action: Action){
        switch action {
        case .loadCargo (let LoadingVolume):
            if (maxVolume ?? 0) >= (volume ?? 0) + (LoadingVolume ?? 0) {
                volume  = (volume ?? 0) + (LoadingVolume ?? 0)
                print ("Груз погружен")
            } else {
                print ("Недостаточно свободного места")
            }
        case .unloadCargo (let UnloadingVolume):
            if (UnloadingVolume ?? 0) <= (self.volume ?? 0) {
                volume = (self.volume ?? 0) - (UnloadingVolume ?? 0)
                print ("Груз выгружен")
            }
            else {
                print ("Недостаточно груза")
            }
        }
    }
}
var kamaz = trunkCar(model: "K3", maxVolume: 100000, volume: 50000)
var scania = trunkCar(model: "P380", maxVolume: 20000, volume: 0)

