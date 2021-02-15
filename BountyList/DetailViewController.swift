//
//  DetailViewController.swift
//  BountyList
//
//  Created by 이동헌 on 2020/12/20.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MVVM
    
    // Model
    // - BountyInfo
    // > BountyInfo 만들자
    
    // View
    // - imgView, nameLabel, bountyLabel
    // > view들은, viewModel들을 통해서 구성되기 ?
    
    // View Model
    // - DetailViewModel
    // > ViewLayer에서 필요한 메서드 만들기
    // > Model을 가지고 있어야함, BountyInfo 들
    
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    @IBOutlet weak var nameLabelCenterX: NSLayoutConstraint!
    @IBOutlet weak var bountyLabelCenterX: NSLayoutConstraint!
    
    let viewModel = DetailViewModel()
    
    
    override func viewDidLoad() { // 뷰가 보여진 시점 X, 메모리에 올라옴
        super.viewDidLoad()
        updateUI()
        prepareAnimation()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showanimation()
    }
    
    private func prepareAnimation() { // 뷰 밖으로
        nameLabelCenterX.constant = view.bounds.width
        bountyLabelCenterX.constant = view.bounds.width
    }
    
    private func showanimation() {
        nameLabelCenterX.constant = 0
        bountyLabelCenterX.constant = 0
        
//        UIView.animate(withDuration: 0.3) {
//            self.view.layoutIfNeeded()
//        }
        
//        UIView.animate(withDuration: 0.3,
//                       delay: 0.1,
//                       options: .curveEaseIn,
//                       animations: {
//                        self.view.layoutIfNeeded()
//                       }, completion: nil)
        
        UIView.animate(withDuration: 0.3, delay: 0.6, usingSpringWithDamping: 0.6, initialSpringVelocity: 2, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.transition(with: imgView, duration: 0.3, options: .transitionFlipFromLeft, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    func updateUI() {
        if let bountyInfo = viewModel.bountyInfo {
            imgView.image = bountyInfo.image
            nameLabel.text = bountyInfo.name
            bountyLabel.text = "\(bountyInfo.bounty)"
        }
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

class DetailViewModel {
    var bountyInfo: BountyInfo?
    
    func update(model: BountyInfo?) {
        bountyInfo = model
    }
}
