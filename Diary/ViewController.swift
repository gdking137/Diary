//
//  ViewController.swift
//  Diary
//
//  Created by Songhee Yim on 12/9/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    
    private var diaryList = [Diary]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let writeDiaryViewController = segue.destination as? WriteDiaryViewController{
            writeDiaryViewController.delegate = self
        }
    }

}

extension ViewController: WriteDiaryViewDelegate{
    func didSelectRegister(diary: Diary) {
        self.diaryList.append(diary)
    }
}
