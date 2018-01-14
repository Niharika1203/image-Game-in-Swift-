//
//  ViewController.swift
//  imageGame
//
//  Created by Niharika Srivastav on 6/27/16.
//

import UIKit

var btvalue1:Int?
var btvalue2:Int?
var btvalue5:Int?
var btvalue4:Int?
var a = 0
var imageArray = ["cat.jpg", "dog.jpg", "rabbit.jpg", "bird.jpg"]
class ViewController: UIViewController {
    var timer:NSTimer?

    
    @IBOutlet weak var bt4: UIButton!
    @IBOutlet weak var bt5: UIButton!
    @IBOutlet weak var bt2: UIButton!
    @IBOutlet weak var bt1: UIButton!
    @IBOutlet weak var label1: UILabel!
    @IBAction func startBtn(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: "hello", userInfo: nil, repeats: true)
    }
    @IBAction func stopBtn(sender: AnyObject) {
        timer?.invalidate()
        self.label1.text = String(a)
    }
    @IBAction func abt5(sender: AnyObject) {
        if btvalue5 == 1 {
            a++
        }
        
    }
    @IBAction func abt1(sender: AnyObject) {
        if btvalue1 == 1 {
            a++
        }
    }
    @IBAction func abt2(sender: AnyObject) {
        if btvalue2 == 1 {
            a++
        }
    }
    @IBAction func abt4(sender: AnyObject) {
        if btvalue4 == 1 {
            a++
        }
    }
    @IBAction func refresh(sender: AnyObject) {
        a = 0
        self.label1.text = "Score"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func hello() {
        imageArray = ["cat.jpg", "dog.jpg", "rabbit.jpg", "bird.jpg"]
        var randomIndex = Int(arc4random_uniform(UInt32(imageArray.count)))
        print(imageArray[randomIndex])
       self.bt1.setBackgroundImage(UIImage(named: imageArray[randomIndex]), forState: UIControlState.Normal)
        if imageArray[randomIndex] == "dog.jpg" {
            btvalue1 = 1
        } else {
            btvalue1 = 0
        }
        imageArray.removeAtIndex(randomIndex)
    
       randomIndex = Int(arc4random_uniform(UInt32(imageArray.count)))
       self.bt2.setBackgroundImage(UIImage(named: imageArray[randomIndex]), forState: UIControlState.Normal)
        if imageArray[randomIndex] == "dog.jpg" {
            btvalue2 = 1
        } else {
            btvalue2 = 0
        }
        imageArray.removeAtIndex(randomIndex)
        randomIndex = Int(arc4random_uniform(UInt32(imageArray.count)))
    self.bt5.setBackgroundImage(UIImage(named: imageArray[randomIndex]), forState: UIControlState.Normal)
        if imageArray[randomIndex] == "dog.jpg" {
            btvalue5 = 1
        } else {
            btvalue5 = 0
        }
        imageArray.removeAtIndex(randomIndex)
        randomIndex = Int(arc4random_uniform(UInt32(imageArray.count)))
    self.bt4.setBackgroundImage(UIImage(named: imageArray[randomIndex]), forState: UIControlState.Normal)
        if imageArray[randomIndex] == "dog.jpg" {
            btvalue4 = 1
        } else {
            btvalue4 = 0
        }
        imageArray.removeAtIndex(randomIndex)
    }


}

