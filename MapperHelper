import UIKit
import ObjectMapper

class Speciality: NSObject,Mappable,DataModel,NSCoding{
    
    var id: Int?
    var name: String?
    var pivot: Pivot?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        pivot <- map["pivot"]
    }
    
    required init(coder decoder: NSCoder) {
        self.id                =  decoder.decodeObject(forKey: "id") as? Int
        self.name              =  decoder.decodeObject(forKey: "name") as? String
        self.pivot              =  decoder.decodeObject(forKey: "pivot") as? Pivot
    }
    
    
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(id, forKey: "id")
        coder.encode(pivot, forKey: "pivot")
    }
}

 let msg = json["message"].stringValue
 let isSuccess = json["status_code"]
  if isSuccess == 200 {
     let result = Mapper<User>().map(JSON: (json["data"].dictionaryObject ?? [:])) //Map Dict
     let token = json["data"]["token"].stringValue //String
     let data = Mapper<Profile>().mapArray(JSONArray:json["data"]["profiles"].arrayObject as? [[String : Any]] ?? [[:]]) // Map Array
     let encodedData = NSKeyedArchiver.archivedData(withRootObject: result!)
     UserDefaultManager.sharedManager.addValue(object: encodedData, key: Constants.UserDefaultsKeys.user) // Save Model to user default
   }
