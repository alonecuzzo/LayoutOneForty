//
//  ViewController.swift
//  LayoutOneForty
//
//  Created by Jabari Bell on 9/4/15.
//  Copyright (c) 2015 Code Mitten. All rights reserved.
//

import UIKit
import TZStackView
import SnapKit
import UIColor_Hex_Swift

extension UIColor {
    
    static func twitterBlue() -> UIColor {
        
        return UIColor(rgba: "#4099ff")
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blackColor()
        
//        //lots of repeated code...
//        // 1. should be an easy way to return a container view
//        
//        let box = UIView()
//        box.backgroundColor = UIColor.redColor()
//        
//        let box1 = UIView()
//        box1.backgroundColor = UIColor.greenColor()
//        
//        let greenBox1 = UIView()
//        greenBox1.backgroundColor = UIColor.purpleColor()
//        
//        let greenBoxSubBox1 = UIView()
//        greenBoxSubBox1.backgroundColor = UIColor.orangeColor()
//        
//        let greenBoxSubBox2 = UIView()
//        greenBoxSubBox2.backgroundColor = UIColor.orangeColor()
//        
//        let greenBoxSubBox3 = UIView()
//        greenBoxSubBox3.backgroundColor = UIColor.orangeColor()
//        
//        let greenBoxSubBox4 = UIView()
//        greenBoxSubBox4.backgroundColor = UIColor.orangeColor()
//        
//        let greenBox1StackView = TZStackView(arrangedSubviews: [greenBoxSubBox1, greenBoxSubBox2, greenBoxSubBox3, greenBoxSubBox4])
//        greenBox1StackView.alignment = TZStackViewAlignment.Fill
//        greenBox1StackView.distribution = TZStackViewDistribution.FillEqually
//        greenBox1StackView.spacing = 10
//        greenBox1StackView.axis = .Vertical
//        greenBox1StackView.setTranslatesAutoresizingMaskIntoConstraints(false)
//        
//        greenBox1.addSubview(greenBox1StackView)
//        
//        greenBox1StackView.snp_makeConstraints { (make) -> Void in
//            
//            make.edges.equalTo(greenBox1).inset(UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10))
//        }
//        
//        
//        let greenBox2 = UIView()
//        greenBox2.backgroundColor = UIColor.purpleColor()
//        
//        let greenBox3 = UIView()
//        greenBox3.backgroundColor = UIColor.purpleColor()
//        
//        let greenBoxStackView = TZStackView(arrangedSubviews: [greenBox1, greenBox2, greenBox3])
//        greenBoxStackView.alignment = TZStackViewAlignment.Fill
//        greenBoxStackView.distribution = TZStackViewDistribution.FillEqually
//        greenBoxStackView.spacing = 10
//        greenBoxStackView.axis = .Horizontal
//        greenBoxStackView.setTranslatesAutoresizingMaskIntoConstraints(false)
//        
//        box1.addSubview(greenBoxStackView)
//        
//        greenBoxStackView.snp_makeConstraints { (make) -> Void in
//            
//            make.edges.equalTo(greenBoxStackView.superview!).inset(UIEdgeInsets(top: 20, left: 20, bottom: 40, right: 20))
//        }
//        
//        let box2 = UIView()
//        box2.backgroundColor = UIColor.purpleColor()
//        
//        let container = UIView()
//        container.backgroundColor = UIColor.blueColor()
//        view.addSubview(container)
//        
//        container.snp_makeConstraints { (make) -> Void in
//            
//            make.edges.equalTo(self.view).inset(UIEdgeInsets(top: 40, left: 40, bottom: 40, right: 40))
//        }
//        
//        let bottomStackView = TZStackView(arrangedSubviews: [box1, box2])
//        bottomStackView.alignment = TZStackViewAlignment.Fill
//        bottomStackView.distribution = TZStackViewDistribution.FillEqually
//        bottomStackView.spacing = 10
//        bottomStackView.axis = .Horizontal
//        bottomStackView.setTranslatesAutoresizingMaskIntoConstraints(false)
//        
//        
//        let containerStackView = TZStackView(arrangedSubviews: [box, bottomStackView])
//        containerStackView.alignment = TZStackViewAlignment.Fill
//        containerStackView.distribution = TZStackViewDistribution.FillEqually
//        containerStackView.spacing = 10
//        containerStackView.axis = .Vertical
//        containerStackView.setTranslatesAutoresizingMaskIntoConstraints(false)
//        
//        container.addSubview(containerStackView)
//        
//        containerStackView.snp_makeConstraints { (make) -> Void in
//            
//            make.edges.equalTo(container).inset(UIEdgeInsets(top: 30, left: 10, bottom: 10, right: 10))
//        }
//        
        buildTwitterLayout()
    }
    
    func navButtonWithImage(image:UIImage, title: String) -> UIView {
        
        let view = UIView()
        let imageView = UIImageView(image: image)
        view.addSubview(imageView)
        let label = UILabel()
        label.text = title
        label.textColor = UIColor.twitterBlue()
        label.font = UIFont.boldSystemFontOfSize(14)
        view.addSubview(label)
        //we can set up using constraints!
        imageView.snp_makeConstraints { (make) -> Void in
            
            make.width.equalTo(25)
            make.height.equalTo(25)
            make.left.equalTo(view)
//            make.top.equalTo(view)
            make.centerY.equalTo(view)
        }
        
        label.snp_makeConstraints { (make) -> Void in
            
            make.top.equalTo(view)
            make.left.equalTo(imageView.snp_right).offset(5)
            make.right.equalTo(view.snp_right)
            make.height.equalTo(view)
        }
        
        return view
    }

    func buildTwitterLayout() {
        //vertical stack view
       //top header nav row
        //hero image row
        //profile info row
        
        let containerView = UIView()
        containerView.backgroundColor = UIColor.yellowColor()
        
        let topNavigation = topNavigationView()
        
        let heroImage = UIImageView(image: UIImage(named: "owl.jpg"))
        heroImage.contentMode = UIViewContentMode.ScaleAspectFill
        heroImage.clipsToBounds = true
        heroImage.backgroundColor = UIColor.purpleColor()
        
        let userStats = UIView()
        userStats.backgroundColor = UIColor.blueColor()
        
        let profilePic = UIImageView(image: UIImage(named: "profile_pic.jpg"))
        profilePic.layer.borderColor = UIColor.blackColor().CGColor
        profilePic.layer.borderWidth = 5.0
        
        
        containerView.addSubview(topNavigation)
        containerView.addSubview(heroImage)
        containerView.addSubview(userStats)
        containerView.addSubview(profilePic)
        view.addSubview(containerView)
        
//        let containerStackView = TZStackView(arrangedSubviews: [topNavigation, heroImage, userStats])
//        containerStackView.alignment = TZStackViewAlignment.Fill
//        containerStackView.distribution = TZStackViewDistribution.EqualSpacing
//        containerStackView.spacing = 10
//        containerStackView.axis = .Vertical
//        containerStackView.setTranslatesAutoresizingMaskIntoConstraints(false)
//        
//        view.addSubview(containerStackView)
        
        topNavigation.snp_makeConstraints { (make) -> Void in
            
//            make.edges.equalTo(containerView).inset(UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10))
            make.left.equalTo(containerView.snp_left)
            make.width.equalTo(containerView)
            make.top.equalTo(containerView)
            make.height.equalTo(45)
        }
        
        heroImage.snp_makeConstraints { (make) -> Void in
            
            make.height.equalTo(175)
            make.left.equalTo(containerView)
            make.width.equalTo(containerView)
            make.top.equalTo(topNavigation.snp_bottom)
        }
        
        userStats.snp_makeConstraints { (make) -> Void in
            
            make.height.equalTo(64)
            make.left.equalTo(containerView)
            make.width.equalTo(containerView)
            make.top.equalTo(heroImage.snp_bottom)
        }
        
        containerView.snp_makeConstraints { (make) -> Void in
            
            make.edges.equalTo(self.view).inset(UIEdgeInsets(top: 30, left: 10, bottom: 10, right: 10))
        }
        
        profilePic.snp_makeConstraints { (make) -> Void in
            
            make.left.equalTo(55)
            make.size.equalTo(CGSize(width: 215, height: 215))
            make.top.equalTo(heroImage).offset(55)
        }
        
    }
    
    
    func topNavigationView() -> UIView {
        
        let view = UIView()
        view.backgroundColor = UIColor.blackColor()
        
        //home
        let homeButton = navButtonWithImage(UIImage(named: "house_icon")!, title: "Home")
        view.addSubview(homeButton)
        
        let notificationsButton = navButtonWithImage(UIImage(named: "notification_icon")!, title: "Notifications")
        view.addSubview(notificationsButton)
        
        let messagesButton = navButtonWithImage(UIImage(named: "envelope_icon")!, title: "Messages")
        view.addSubview(messagesButton)
        
        let twitterLogo = UIImageView(image: UIImage(named: "twitter_icon"))
        view.addSubview(twitterLogo)
        
        let searchPanel = UIView()
        searchPanel.backgroundColor = UIColor.orangeColor()
        view.addSubview(searchPanel)
        
        let userIcon = UIView()
        userIcon.backgroundColor = UIColor.orangeColor()
        view.addSubview(userIcon)
        
        let tweetButton = UIView()
        tweetButton.backgroundColor = UIColor.redColor()
        view.addSubview(tweetButton)
        
//        let topNavigationStackView = TZStackView(arrangedSubviews: [homeButton, notificationsButton, messagesButton, twitterLogo, searchPanel, userIcon, tweetButton])
////        topNavigationStackView.alignment = TZStackViewAlignment.Fill
////        topNavigationStackView.distribution = TZStackViewDistribution.FillEqually
//        topNavigationStackView.spacing = 10
//        topNavigationStackView.axis = .Horizontal
        homeButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let viewHeight = 45
        let marginX: CGFloat = 5
        
        homeButton.snp_makeConstraints { (make) -> Void in
            
            make.width.equalTo(95)
            make.height.equalTo(viewHeight)
            make.left.equalTo(view.snp_left)
            make.top.equalTo(view.snp_top)
        }
        
        notificationsButton.snp_makeConstraints { (make) -> Void in
            
            make.width.equalTo(130)
            make.height.equalTo(viewHeight)
            make.top.equalTo(view.snp_top)
            make.left.equalTo(homeButton.snp_right).offset(marginX)
        }
        
        messagesButton.snp_makeConstraints { (make) -> Void in
            
            make.width.equalTo(120)
            make.height.equalTo(viewHeight)
            make.top.equalTo(view.snp_top)
            make.left.equalTo(notificationsButton.snp_right).offset(marginX)
        }
        
        twitterLogo.snp_makeConstraints { (make) -> Void in
            
            make.width.equalTo(45)
            make.height.equalTo(37)
            make.top.equalTo(view.snp_top)
            make.centerX.equalTo(view)
        }
        
        searchPanel.snp_makeConstraints { (make) -> Void in
            
            make.width.equalTo(140)
            make.height.equalTo(viewHeight)
            make.top.equalTo(view.snp_top)
            make.right.equalTo(userIcon.snp_left).offset(-marginX)
        }
        
        userIcon.snp_makeConstraints { (make) -> Void in
            
            make.width.equalTo(45)
            make.height.equalTo(viewHeight)
            make.top.equalTo(view.snp_top)
            make.right.equalTo(tweetButton.snp_left).offset(-marginX)
        }
        
        tweetButton.snp_makeConstraints { (make) -> Void in
            
            make.width.equalTo(90)
            make.height.equalTo(viewHeight)
            make.top.equalTo(view.snp_top)
            make.right.equalTo(view.snp_right)
        }
        
        return view
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }


}

