//
//  ViewController.swift
//  GaleriaJsonCollectionView
//
//  Created by Desarrollo DAM on 04/05/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var fotos: UICollectionView!
    
    var fotografias = [Fotografia]()

    override func viewDidLoad() {
        
        obtieneJson{
            print("OK")
            self.fotos.reloadData()
        }
        
        super.viewDidLoad()
        fotos.delegate = self
        fotos.dataSource = self
    }
    
    func obtieneJson(completed: @escaping()-> ()){
            let url = URL(string: "https://api.unsplash.com/photos/?client_id=LDq19IN7rc19qBfjAyKYPMwBqYH8CAFmpNs-hz383Ak")
            URLSession.shared.dataTask(with: url!){
                (data, response, error) in
                
                if(error == nil)
                {
                    do{
                        self.fotografias = try JSONDecoder().decode([Fotografia].self, from: data!)
                        DispatchQueue.main.async {
                            completed()
                        }
                    }
                    catch{
                        print("Error al obtener el JSON")
                        print(error)
                    }
                }
            }.resume()
        }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fotografias.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "celda", for: indexPath) as! FotosCollectionViewCell
        
        let url = URL(string: fotografias[indexPath.row].urls["small"]!)
        let data = try? Data(contentsOf: url!)
        celda.foto.image = UIImage(data:data!)
        return celda
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let pantalla = UIScreen.main.bounds
        return CGSize(width: pantalla.width, height: pantalla.height)
    }
    
    func collectionview(collection: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int)-> CGFloat{
        return 0.0
    }
}

