//
//  QueryConcreteCell.swift
//  QueryFinal
//
//  Created by Justin Kim on 7/19/21.
//

import UIKit

class QueryConcreteCell: UITableViewCell {
    
    private let productNameLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 16)
        lbl.textAlignment = .left
        return lbl
    }()
    
    private let ownerNameLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 16)
        lbl.textAlignment = .left
        return lbl
    }()
    
    private let productImage : UIImageView = {
        let imgView = UIImageView(image: UIImage(named: "Logo-Kobe-Bryant"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(productImage)
        addSubview(productNameLabel)
        addSubview(ownerNameLabel)
        
        productImage.translatesAutoresizingMaskIntoConstraints = false
        productNameLabel.translatesAutoresizingMaskIntoConstraints = false
        ownerNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
                                    productImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            productImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
                                     productImage.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
                                     productImage.widthAnchor.constraint(equalToConstant: 90),
                                     productImage.heightAnchor.constraint(equalToConstant: 100),
                                        productNameLabel.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant: 20),
            productNameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
                                     productNameLabel.widthAnchor.constraint(equalToConstant: frame.size.width / 2),
                                     productNameLabel.heightAnchor.constraint(equalToConstant: 20),
            ownerNameLabel.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant: 20),
            ownerNameLabel.topAnchor.constraint(equalTo: productNameLabel.bottomAnchor, constant: 20),
            ownerNameLabel.widthAnchor.constraint(equalToConstant: frame.size.width / 2),
            ownerNameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension QueryConcreteCell: QueryConfigurableTableViewCell {
    func configure(with model: QueryTableViewCellModel) {
        guard let model = model as? QueryConcreteCellModel
        else { fatalError("QueryConcreteCell cannot be configured with the given model. Please use an instance of QueryConcreteCellModel to configure.") }
        self.productNameLabel.text = model.name
        self.ownerNameLabel.text = model.ownerLoginName
    }
}
