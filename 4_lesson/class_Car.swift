import Foundation

class Car {
    var model: String?
    var year: Int?
    var volume: Double?
    var engine: Bool?
    var windows: Bool?
    var maxVolume: Double?
    
    init (model: String? = nil, year: Int? = nil, volume: Double? = nil, engine: Bool? = nil, windows: Bool? = nil, maxVolume: Double? = nil){
        self.model = model
        self.year = year
        self.volume = volume
        self.engine = engine
        self.windows = windows
        self.maxVolume = maxVolume
    }
    
    func performAction () {
        
    }
    var description: String {
        (model == nil ? "" : "model: \(model ?? "")") +
        (year == nil ? "" : ", year: \(self.year ?? 0)") +
        (volume == nil ? "" : ", volume: \(self.volume ?? 0)") +
        (engine == nil ? "" : ", engine: \(self.engine ?? false)") +
        (windows == nil ? "" : ", windows: \(windows ?? false)") +
        (maxVolume == nil ? "" : ", maxVolume: \(maxVolume ?? 0)")
    }
}
