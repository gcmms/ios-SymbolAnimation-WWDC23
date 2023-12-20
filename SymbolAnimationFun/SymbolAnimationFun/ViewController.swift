//
//  ViewController.swift
//  SymbolAnimationFun
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 20/12/23.
//

import UIKit

class ViewController: UIViewController {

    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "airplane")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()

        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
            self.myImageView.setSymbolImage(
                UIImage(systemName: "house")!, //please do not use the force
                contentTransition: .automatic,
                options: .repeating
            ) { _ in

            }
            self.myImageView.addSymbolEffect(.scale, animated: true)


        }
    }

    private func setUp() {
        view.addSubview(myImageView)
        NSLayoutConstraint.activate([
            myImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            myImageView.heightAnchor.constraint(equalToConstant: 200), 
            myImageView.widthAnchor.constraint (equalToConstant: 200),
        ])
    }

}

