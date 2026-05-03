import Foundation

struct Car {
    let model: String
    let year: Int
    var volume: Double
    var engine: Bool
    var windows: Bool
    let maxVolume: Double
    var LoadingVolume: Double
    enum Action {
        case engineOn
        case engineOff
        case openWindiws
        case closeWindows
        case loadCargo (Double)
        case unloadCargo (Double)
    }
    mutating func performAction (action: Action) {
        switch action {
        case .engineOn: engine = true
        case .engineOff:engine = false
        case .closeWindows: windows = false
        case .openWindiws: windows = true
        case .loadCargo (let volume):
            LoadingVolume += volume
            if volume > maxVolume {
                LoadingVolume = 0.0
                print (model, "Невозможно загрузить груз")
            }
        case .unloadCargo (let volume):
            if volume < LoadingVolume {
                LoadingVolume = 0.0
                print (model,"Невозможно разгрузить груз")
            } else {
                LoadingVolume -= volume
            }
        }
    }
    
}
var Rav4 = Car ( model: "Rav4", year: 2019, volume: 2.0, engine: true, windows: true, maxVolume: 10.0, LoadingVolume: 0.0)
var kamaz = Car ( model: "Kamaz", year: 2020, volume: 5.0, engine: true, windows: true, maxVolume: 50.0, LoadingVolume: 0.0)

kamaz.performAction(action: .engineOff)
Rav4.performAction(action: .loadCargo(20.0))
print (kamaz)
print (Rav4)
