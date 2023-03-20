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
    @IBOutlet var resultText: UILabel!
    let images = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]

    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageViewOne.image = UIImage(imageLiteralResourceName: images[0])
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: images[0])
    }

    @IBAction func rollPressed(_ sender: UIButton) {
        let randomPickOne = Int.random(in: 0 ... 5) // Include starting and stop steps.
        let randomPickTwo = Int.random(in: 0 ... 5)
        // Random kullanmak yerine, Array içerisinden .randomElement() fonksiyonu ile de işimizi halledebilirdik.
        
        diceImageViewOne.image = UIImage(imageLiteralResourceName: images[randomPickOne])
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: images[randomPickTwo])
        if randomPickOne == randomPickTwo {
            resultText.text = "It's a Draw !"
        } else if randomPickOne > randomPickTwo {
            resultText.text = "Player One Wins !"
        } else {
            resultText.text = "Player Two Wins !"
        }
    }
}
