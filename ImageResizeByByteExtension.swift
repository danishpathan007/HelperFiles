
///-----------------------------------------------------------------------------------------------
var getImage : Data = Data()
let pickedImage:UIImage = info[UIImagePickerController.InfoKey.editedImage] as! UIImage

pickedImage.resizeByByte(maxByte: 300000, completion: { (getImages) in
    getImage = getImages
})
///-----------------------------------------------------------------------------------------------
import Foundation
import UIKit

///----------------------------------------------------------------------------------------------------
/// UIImage
///----------------------------------------------------------------------------------------------------
extension UIImage {

func resizeByByte(maxByte: Int, completion: @escaping (Data) -> Void) {
    var compressQuality: CGFloat = 1
    var imageData = Data()
    var imageByte = self.jpegData(compressionQuality: 1)?.count

    while imageByte! > maxByte {
        imageData = self.jpegData(compressionQuality: compressQuality)!
        imageByte = self.jpegData(compressionQuality: compressQuality)?.count
        compressQuality -= 0.1
    }

    if maxByte > imageByte! {
        imageData = self.jpegData(compressionQuality: 0.75)!
        completion(imageData)
    } else {
        completion(self.jpegData(compressionQuality: 1)!)
    }
}
}
