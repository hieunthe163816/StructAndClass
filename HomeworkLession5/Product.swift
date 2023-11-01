//
//  Product.swift
//  HomeworkLession5
//
//  Created by Hiếu đang cáu on 10/10/2023.
//

import Foundation

class Product{
    var name: String
    let id: String
    var price: Double
    var quantity: Int
    
    init(name: String, id: String, price: Double, quantity: Int) {
        self.name = name
        self.id = id
        self.price = price
        self.quantity = quantity
    }
}

class productManager{
    var productList :[Product] = []
    
    func addProduct(name: String, id: String, price: Double, quantity: Int){
        let product : Product = Product.init(name: name, id: id, price: price, quantity: quantity)
        productList.append(product)
    }
    
    func updateProduct(name: String, id: String, price: Double, quantity: Int){
        for i in productList.indices{
            if(productList[i].id == id){
                productList[i].name = name
                productList[i].price = price
                productList[i].quantity = quantity
                break
            }
        }
    }
    
    func showProducts(){
        print("----List of Products----")
        for i in productList{
            print("Id: \(i.id)  Name: \(i.name)")
            print("Price: \(i.price)  Quantity: \(i.quantity)")
            print("----------------------")
        }
    }
    
    func searchProductByName(name: String){
        var check:Bool = false;
        print("----Search Product----")
        for i in productList{
            if(i.name == name){
                check = true
                print("Id: \(i.id)  Name: \(i.name)")
                print("Price: \(i.price)  Quantity: \(i.quantity)")
                print("----------------------")
            }
        }
        if(!check){
            print("Không có sản phẩm có tên \(name) trong kho hàng")
        }
    }
}
