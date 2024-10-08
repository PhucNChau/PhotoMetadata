import Foundation

func convertShutterSpeedToDouble(number: String) -> Double {
    var result: Double = 0
    if number.contains("/") {
        let components = number.split(separator: "/")
        if components.count == 2 {
            if let numerator = Double(components[0]), let denominator = Double(components[1]), denominator != 0 {
                result = numerator / denominator
            }
        }
    } else {
        result = Double(number) ?? 0
    }
    return result
}

func main() {
//    var photo = PhotoMetadata(aperture: 4.0, shutterSpeed: 1/4000, iso: 200)
//    photo.setDescription(description: "a photo of mountain")
    
    print("Please enter the first photo metadata.")
    print("What is the aperture of the photo?")
    var aperture = Double(readLine() ?? "") ?? 0
    print("What is the shutter speed of the photo?")
    var shutterSpeed = convertShutterSpeedToDouble(number: readLine() ?? "")
    print("What is the ISO of the photo?")
    var iso = Int(readLine() ?? "") ?? 0
    print("What is the description of the photo?")
    var description = readLine() ?? ""
    
    var photo1 = PhotoMetadata(aperture: aperture, shutterSpeed: shutterSpeed, iso: iso)
    photo1.setDescription(description: description)
    
    print("Please enter the second photo metadata.")
    print("What is the aperture of the photo?")
    aperture = Double(readLine() ?? "") ?? 0
    print("What is the shutter speed of the photo?")
    shutterSpeed = convertShutterSpeedToDouble(number: readLine() ?? "")
    print("What is the ISO of the photo?")
    iso = Int(readLine() ?? "") ?? 0
    print("What is the description of the photo?")
    description = readLine() ?? ""
    
    var photo2 = PhotoMetadata(aperture: aperture, shutterSpeed: shutterSpeed, iso: iso)
    photo2.setDescription(description: description)
    
    print("The first photo metadata is \(photo1.aperture) aperture, \(photo1.shutterSpeed) sec, \(photo1.iso) ISO, \(photo1.ev) EV, and \(photo1.lux) lux. The photo's description is \"\(photo1.description)\".")
    
    print("The second photo metadata is \(photo2.aperture) aperture, \(photo2.shutterSpeed) sec, \(photo2.iso) ISO, \(photo2.ev) EV, and \(photo2.lux) lux. The photo's description is \"\(photo2.description)\".")
}

main()
