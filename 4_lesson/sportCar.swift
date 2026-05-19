import Foundation
class sportCar: Car {
    init (model: String){
        super.init ()
        self.model = model
    }
    init (year: Int){
        super.init ()
        self.year = 2003
    }
    init (engine: Bool){
        super.init ()
        self.engine = engine
    }
    init (windows: Bool){
        super.init ()
        self.windows = windows
    }
    enum Action {
        case engineOn
        case engineOff
        case openWindows
        case closeWindows
    }
    func performAction(_ action: Action) {
        switch action {
        case .engineOn:
            engine = true
            print ("Двигатель заведен")
        case .engineOff:
            engine = false
            print ("Двигатель выключен")
        case .openWindows:
            windows = true
            print ("Окна открыты")
        case .closeWindows:
            windows = false
            print ("Окна закрыты")
        }
    }
}
var porcshe = sportCar (model: "Panamera")
var lamborghini = sportCar (model: "Huracán")



