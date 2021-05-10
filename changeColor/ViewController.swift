//
//  ViewController.swift
//  changeColor
//
//  Created by 羅承志 on 2021/4/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stitchImageView: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeColor(_ sender: Any) {
        //設定去背圖片之背景色，將顏色套入slider值
        stitchImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        
        //slider值顯示在label中
        redLabel.text = String(format: "%.2f", (redSlider.value))
        greenLabel.text = String(format: "%.2f", (greenSlider.value))
        blueLabel.text = String(format: "%.2f", (blueSlider.value))
        alphaLabel.text = String(format: "%.2f", (alphaSlider.value))
    }
    
    @IBAction func randomButton(_ sender: Any) {
        //使用亂數隨機出色
        redSlider.value = Float.random(in: 0...1)
        greenSlider.value = Float.random(in: 0...1)
        blueSlider.value = Float.random(in: 0...1)
        alphaSlider.value = Float.random(in: 0...1)
        //連動Slider
        stitchImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        //slider值顯示在label中
        redLabel.text = String(format: "%.2f", (redSlider.value))
        greenLabel.text = String(format: "%.2f", (greenSlider.value))
        blueLabel.text = String(format: "%.2f", (blueSlider.value))
        alphaLabel.text = String(format: "%.2f", (alphaSlider.value))
    }
}

