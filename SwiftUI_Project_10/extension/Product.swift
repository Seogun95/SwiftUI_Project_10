

import SwiftUI

struct Product {
    let name: String
    let ImageName: String
    let movie: String
    let description: String
    var isFavorite: Bool = false
}

let ProductList = [
    Product(name: "소스케", ImageName: "Sosuke", movie: "벼랑위의 포뇨", description: "5살 남자 아이. 본작품의 주인공. 벼랑 위에 있는 2~3층 정도 되는 주택에서 엄마와 함께 살고 있다."),
    Product(name: "포뇨", ImageName: "Ponyo", movie: "벼랑위의 포뇨", description: "귀여운 물고기. 햄을 굉장히 좋아하며, 자신에게 적대적인 태도를 보이는 사람 에게는 입으로 물총을 쏴서 응수한다."),
    Product(name: "소피아", ImageName: "Sophia", movie: "하울의 움직이는 성", description: "어린 소녀지만 마법 때문에 90살의 늙은 할머니 모습이 되어버렸다. 하지만 삶을 여유롭게 포용할 수 있는 마음의 소유자."),
    Product(name: "하울", ImageName: "Howl", movie: "하울의 움직이는 성", description: "움직이는 성의 주인이자 뛰어난 마법사. 잘생긴 외모로 여성들의 심장을 빼앗아간다는 으스스한 소문의 주인공이기도 하다."),
    Product(name: "캘시퍼", ImageName: "Calcifer", movie: "하울의 움직이는 성", description: "하울이 어렸을 때 하울과 계약을 맺고 하울의 심장을 가진 대신, 하울의 성에 묶여 동력원 겸 관리자가 된다.")
]
