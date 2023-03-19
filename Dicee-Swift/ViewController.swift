//
//  ViewController.swift
//  Dicee-Swift
//
//  Created by Eren Candan on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
    // Bu kısımda Control tuşu ile Storyboard'daki Image elementini ViewController'e bağlıyoruz
    // Ve daha sonra viewDidLoad fonksiyonu içerisinde
    // İlgili view yüklenir yüklenmez gerçeklecek işlemi yazıyoruz,
    // Bu durumda biz ilgili değişkenlerimizin image property'lerini değiştirmiş olduk.
    @IBOutlet var diceImageViewOne: UIImageView!
    @IBOutlet var diceImageViewTwo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        diceImageViewOne.image = UIImage(imageLiteralResourceName: "DiceSix")
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: "DiceSix")
    }

    @IBAction func rollPressed(_ sender: UIButton) {
        diceImageViewOne.image = UIImage(imageLiteralResourceName: "DiceOne")
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: "DiceTwo")
    }
}
