//
//  NavigationViewController.swift
//  testNavBar
//
//  Created by yuki.osu on 2021/03/17.
//

import UIKit

class NavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTitle(title: "Title", subtitle: "Subtitle")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setTitle(title: "Title", subtitle: "Subtitle")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func setTitle(title:String, subtitle:String) {
        let one = UILabel()
        one.text = title
        one.font = UIFont.systemFont(ofSize: 17)
        one.sizeToFit()

        let two = UILabel()
        two.text = subtitle
        two.font = UIFont.systemFont(ofSize: 11)
        two.textAlignment = .center
        two.sizeToFit()

        let stackView = UIStackView(arrangedSubviews: [one, two])
        stackView.distribution = .equalCentering
        stackView.axis = .vertical
        stackView.alignment = .center

        let width = max(one.frame.size.width, two.frame.size.width)
        stackView.frame = CGRect(x: 0, y: 0, width: width, height: self.navigationBar.bounds.height)

        one.sizeToFit()
        two.sizeToFit()

        self.navigationItem.titleView = stackView
    }

}
