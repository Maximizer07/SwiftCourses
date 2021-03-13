//
//  ViewController.swift
//  InfoCard
//
//  Created by ИИТ on 11.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var editButton = UIButton(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
    private var flag = true
    @IBOutlet weak var titleName: UITextView!
    @IBOutlet weak var editName: UITextView!
    @IBOutlet weak var titleMobile: UITextView!
    @IBOutlet weak var editMobile: UITextView!
    @IBOutlet weak var titleEmail: UITextView!
    @IBOutlet weak var editEmail: UITextView!
    @IBOutlet weak var titleNotes: UITextView!
    @IBOutlet weak var editNotes: UITextView!
    @IBOutlet weak var editImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Info Card"
        navigationController?.navigationBar.barTintColor = UIColor.blue
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: editButton)
        editButton.setTitle("Edit",for: .normal)
        editButton.addTarget(self, action: #selector(edit), for: .touchUpInside)
        editButton.setTitleColor(.white, for: .normal)
        view.backgroundColor = .white
    }
    
    
    @objc func edit(){
        
        editName?.isEditable.toggle()
        editMobile?.isEditable.toggle()
        editEmail?.isEditable.toggle()
        editNotes?.isEditable.toggle()
        editButton.setTitle("Save",for: .normal)
    }
}

