import Foundation

struct PhotoMetadata {
    var aperture: Double
    var shutterSpeed: Double
    var iso: Int
    var ev: Double
    var description: String = ""
    var lux: Double {
        2.5 * pow(2.0, ev)
    }
    
    init(aperture: Double, shutterSpeed: Double, iso: Int) {
        self.aperture = aperture
        self.shutterSpeed = shutterSpeed
        self.iso = iso
        ev = log2(pow(aperture, 2) / shutterSpeed) + log2(Double(iso) / 100.0)
    }
    
    mutating func setDescription(description: String) {
        self.description = description.uppercased()
    }
}
