//
//  UIColor+UtilCore.swift
//  Pods
//
//  Created by mac on 2021/4/3.
//

import Foundation


extension UIColor {
    
    public convenience init(hex: String, alpha: CGFloat = 1.0) {
        
        let scanner:Scanner = Scanner(string:hex)
        var valueRGB:UInt32 = 0
        if scanner.scanHexInt32(&valueRGB) == false {
            self.init(red: 0,green: 0,blue: 0,alpha: alpha)
        }else{
            self.init(
                red:CGFloat((valueRGB & 0xFF0000)>>16)/255.0,
                green:CGFloat((valueRGB & 0x00FF00)>>8)/255.0,
                blue:CGFloat(valueRGB & 0x0000FF)/255.0,
                alpha:CGFloat(alpha)
            )
        }
    }
    
    public convenience init(r: CGFloat, g: CGFloat, b: CGFloat, alpha: CGFloat = 1.0) {
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: alpha)
    }

    public func getImage() -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        if let context = context{
            context.setFillColor(self.cgColor)
            context.fill(rect)
        }
        let theImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return theImage!
    }
    
    /// 随机生成颜色
    public static  func randomColor() -> UIColor {
        let hue = CGFloat(arc4random()%100)/100.0
        let saturation = CGFloat(arc4random()%50)/100 + 0.5
        let brightness = CGFloat(arc4random()%50)/100 + 0.5
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1.0)
    }
}
