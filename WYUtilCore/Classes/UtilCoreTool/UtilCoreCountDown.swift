//
//  UtilCoreCountDown.swift
//  WYUtilCore
//
//  Created by mac on 2021/4/3.
//

import Foundation

//MARK: 倒计时
public class UtilCoreCountDown {
    
    var timer: DispatchSourceTimer!
    var pageStepTime: DispatchTimeInterval = .seconds(1)
    /// 每秒执行一次block
    public  func countDownWith_Block(updateBlock:@escaping (() -> Void)) {
        
        timer = DispatchSource.makeTimerSource(queue: .main)
        timer?.schedule(deadline: .now() + pageStepTime, repeating: pageStepTime)
        timer?.setEventHandler {
            updateBlock()
        }
        // 启动定时器
        timer?.resume()
    }
    
    ///默认定时器1秒触发一次
    public init(_ steps:Int = 1 ) {
        pageStepTime = .seconds(steps)
    }
    
    public  func deinitTimer() {
        if let time = self.timer {
            time.cancel()
            timer = nil
        }
    }
}
