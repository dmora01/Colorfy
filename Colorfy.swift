//: Playground - noun: a place where people can play

import UIKit

class Colorfy : UIView
{
    private let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    private var counter = 0
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        let colorChanger = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) {
            (timer) in UIView.animate(withDuration: 2.0)
        {
            self.layer.backgroundColor = self.colors[self.counter % 6].cgColor
            self.counter += 1
        }
      }
        
        colorChanger.fire()
    }
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
}