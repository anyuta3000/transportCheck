var priceRenges = ["car": [500,1000], "bike": [100,200]]

func decisionPrint(decision: String, price: Int, type: String){
    if decision == "low"{
        print("price \(price) is too low for \(type)")
    }
    else if decision == "ok"{
        print("price \(price) is ok for \(type)")
    }
    else if decision == "high"{
        print("price \(price) is too high for \(type)")
    }
    
}

func transportPriceCheck(price: Int, type: String){

    var decision = ""
    
    let priceRange = priceRenges[type]!
    let minPrice = priceRange[0]
    let maxPrice = priceRange[1]
    
    if price > maxPrice{
        decision = "high"
    }
    else if price < minPrice{
        decision = "low"
        }
    else {
        decision = "ok"
    }


    decisionPrint(decision: decision, price: price, type: type)
    
}
    

transportPriceCheck(price: 600, type: "car")


