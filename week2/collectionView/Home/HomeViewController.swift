//
//  HomeViewController.swift
//  collectionView
//
//  Created by JoohyuckPark on 2020/11/14.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

//    Tuple 타입 Array
//    https://docs.swift.org/swift-book/ReferenceManual/Types.html#grammar_tuple-type
    let dataList : [(title: String, subtitle: String, content: String)] = [
        ("Title", "SubTitle", "Lorem Ipsum is simply dummy text of the printing"),
        ("Title2", "SubTitle", "Lorem Ipsum is simply dummy text of the printing"),
        ("Title3", "SubTitle", "Lorem Ipsum is simply dummy text of the printing"),
        ("Title4", "SubTitle", "Lorem Ipsum is simply dummy text of the printing"),
        ("Title5", "SubTitle", "Lorem Ipsum is simply dummy text of the printing"),
        ("Title6", "SubTitle", "Lorem Ipsum is simply dummy text of the printing")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

//    아래 두 개의 메서드는 UICollectionViewDataSource 프로토콜을 구현한 것이다. (Adopt a UICollectionViewDataSource protocol)
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataList.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        이 함수는 collectionView, indexPath 파라메터를 가진채 호출된다. 우리는 그에 맞는 Cell 을 구성해 리턴한다.
//         dequeueReusableCell 은 화면 밖으로 벗어난 Cell을 재활용한다.
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainDefaultCell", for: indexPath) as? HomeCollectionViewCell else {
            return UICollectionViewCell()
        }

        let index = indexPath.row
        cell.titleLabel.text = dataList[index].title
        cell.subtitleLabel.text = dataList[index].subtitle
        cell.contentLabel.text = dataList[index].content

        cell.contentView.layer.borderWidth = 1
        cell.contentView.layer.borderColor = UIColor.gray.cgColor
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

//        Cell 하나의 사이즈를 리턴한다.
        return CGSize(width:collectionView.bounds.width, height:200)
    }
}
