//
//  DetailMemeViewController.swift
//  Memento
//
//  Created by Darren Leith on 05/02/2016.
//  Copyright © 2016 Darren Leith. All rights reserved.
//

import UIKit

class DetailMemeViewController: UIViewController {
	
	//MARK: - properties
	var meme: Meme?
	@IBOutlet weak var memeImage: UIImageView!
	
	
	//MARK: - lifecycle methods
	override func viewDidLoad() {
		super.viewDidLoad()
		navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Edit, target: self, action: "editMeme")
	}
	
	override func viewWillAppear(animated: Bool) {
		if let meme = meme {
			memeImage.image = UIImage(data: meme.memedImage)
		}
	}
	
	
	//MARK: - editMeme()
	//this will set the detail meme properties on the MemeViewController, and navigate.
	func editMeme() {
		
		if let meme = meme {
			let memeNavController = storyboard!.instantiateViewControllerWithIdentifier("MemeNavigationController") as! UINavigationController
			let memeVC = memeNavController.viewControllers[0] as! MemeViewController
			
			//set the top and bottom text fields in the MemeViewController
			memeVC.topTextFieldString = meme.topText
			memeVC.bottomTextFieldString = meme.bottomText
			
			presentViewController(memeNavController, animated: true, completion: { _ in
				memeVC.imageView.image = UIImage(data: meme.originalImage)
				memeVC.shareIcon.enabled = true
			})
		}
	}
}
