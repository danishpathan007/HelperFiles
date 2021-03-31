enum AssetsColor {
   case appPrimeColorBlue
   case appBlueColor
   case appBlackColor
   case radioButtonBackGroundColor
}

extension UIColor {
    static func appColor(_ name: AssetsColor) -> UIColor {
        switch name {
        case .appPrimeColorBlue:
            return UIColor(named: "AppPrimeColor")! // Assets Color name 
        case .appBlueColor:
            return UIColor(named: "appBlueColor")! // Assets Color name 
        case .appBlackColor:
            return UIColor(named: "appBlackColor")! // Assets Color name 
        case .radioButtonBackGroundColor:
            return UIColor(named: "radioSelectedBackgroudColor")! // Assets Color name 
        }
    }
}


 @IBAction private func getColor(_ sender: UIButton) {
       let assetsColor = UIColor.appColor(.appBlackColor)
  }


