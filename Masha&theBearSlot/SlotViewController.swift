//
//  ViewController.swift
//  Masha&theBearSlot
//
//  Created by doriswlc on 2022/8/23.
//

import UIKit

class SlotViewController: UIViewController {

    let picArr = [UIImage(named: "Bear"), UIImage(named: "Masha"), UIImage(named: "Penguin"), UIImage(named: "Sheep"), UIImage(named: "Wolf")]
    var timer: Timer?
    var time = 15
    
    @IBOutlet weak var pic1Image: UIImageView!
    @IBOutlet weak var pic2Image: UIImageView!
    @IBOutlet weak var pic3Image: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        pic1Image.layer.borderWidth = 3
        pic1Image.layer.cornerRadius = 15
        pic1Image.layer.borderColor = UIColor.yellow.cgColor
        pic2Image.layer.borderWidth = 3
        pic2Image.layer.cornerRadius = 15
        pic2Image.layer.borderColor = UIColor.yellow.cgColor
        pic3Image.layer.borderWidth = 3
        pic3Image.layer.cornerRadius = 15
        pic3Image.layer.borderColor = UIColor.yellow.cgColor
    }

    @IBAction func playButton(_ sender: UIButton) {
        playButton.isEnabled = false
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(switchImage), userInfo: nil, repeats: true)
    }
    @objc func switchImage() {
        time -= 1
        if time == 0 {
            timer?.invalidate()
            playButton.isEnabled = true
            pic1Image.image = picArr[Int.random(in: 0...4)]
            pic2Image.image = picArr[Int.random(in: 0...4)]
            pic3Image.image = picArr[Int.random(in: 0...4)]
            time = 15
        } else {
            pic1Image.image = picArr[Int.random(in: 0...4)]
            pic2Image.image = picArr[Int.random(in: 0...4)]
            pic3Image.image = picArr[Int.random(in: 0...4)]
        }
    }
    
}

