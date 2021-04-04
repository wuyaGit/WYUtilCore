//
//  String+UtilCore.swift
//  WYUtilCore
//
//  Created by mac on 2021/4/3.
//

import Foundation

//MARK: 字符串截取
/*
 let text = "Hello world"
 text[...3] // "Hell"
 text[6..<text.count] // world
 text[NSRange(location: 6, length: 3)] // wor
 */
extension String {
    
    /*
     字符串截取
     let str00 = "hello world"
     let str01 = str00[1..<str00.count-1]
     print(str00)
     print(str01)
     */
    public  subscript(value: NSRange) -> Substring {
        return self[value.lowerBound..<value.upperBound]
    }
    
    /*
     闭合截取
     let str00 = "hello world"
     let str01 = str00[1...str00.count]
     */
    public subscript(value: CountableClosedRange<Int>) -> Substring {
        get {
            guard let upperIndex = index(at: value.upperBound) else{
                guard let lowerIndex = index(at: value.lowerBound) else{
                    return self[self.startIndex...self.endIndex]
                }
                return self[lowerIndex...]
            }
            guard let lowerIndex = index(at: value.lowerBound) else{
                /// 这块表示 截取最后一个字母
                if upperIndex >= self.endIndex{
                    return self[self.startIndex...]
                }else{
                    return self[self.startIndex...upperIndex]
                }
            }
            /// 这块表示 截取最后一个字母
            if upperIndex >= self.endIndex{
                return self[lowerIndex...]
            }else{
                return self[lowerIndex...upperIndex]
            }
        }
    }
    /*
     非闭合截取
     let str00 = "hello world"
     let str01 = str00[1..<str00.count]
     */
    public  subscript(value: CountableRange<Int>) -> Substring {
        get {
            guard let upperIndex = index(at: value.upperBound) else{
                guard let lowerIndex = index(at: value.lowerBound) else{
                    return self[self.startIndex..<self.endIndex]
                }
                return self[lowerIndex..<self.endIndex]
            }
            guard let lowerIndex = index(at: value.lowerBound) else{
                return self[self.startIndex..<upperIndex]
            }
            return self[lowerIndex..<upperIndex]
        }
    }
    /*
     非闭合截取
     let str00 = "hello world"
     let str01 = str00[..<str00.count]
     */
    public  subscript(value: PartialRangeUpTo<Int>) -> Substring {
        get {
            guard let index = index(at: value.upperBound) else{
                return self[..<self.endIndex]
            }
            return self[..<index]
        }
    }
    /*
     闭合截取
     let str00 = "hello world"
     let str01 = str00[...str00.count]
     */
    public subscript(value: PartialRangeThrough<Int>) -> Substring {
        get {
            guard let index = index(at: value.upperBound) else{
                return self[..<self.endIndex]
            }
            return self[...index]
        }
    }
    /*
     闭合截取
     let str00 = "hello world"
     let str01 = str00[3...]
     */
    public  subscript(value: PartialRangeFrom<Int>) -> Substring {
        get {
            guard let index = index(at: value.lowerBound) else{
                return self[self.startIndex...]
            }
            /// 这块表示 截取最后一个字母
            if index >= self.endIndex{
                return self[self.startIndex...]
            }
            return self[index...]
        }
    }
    func index(at offset: Int) -> String.Index? {
        if self.count < offset {
            return nil
        }
        return index(startIndex, offsetBy: offset)
        
    }
}

//MARK: 字符串的一般处理
extension String {
    
    public  var length:Int {
        return self.count
    }
    
    public func indexOf(_ target: String) -> Int? {
        let range = (self as NSString).range(of: target)
        return range.location
    }
    
    public func lastIndexOf(target: String) -> Int? {
        let range = (self as NSString).range(of: target, options: NSString.CompareOptions.backwards)
        return self.length - range.location - 1
    }
    
    public func contains(s: String) -> Bool {
        return (self.range(of: s) != nil) ? true : false
    }
}

// MARK: - 根据文字计算高度
extension String {
    public func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        return boundingBox.height
    }
}
