//
//  RecipeModel.swift
//  FoodRecipe
//
//  Created by 정호윤 on 2022/05/04.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let dataPublished: String
    let url: String
    
    var isFavorite: Bool
}

extension Recipe {
    static let sampleData: [Recipe] = [
        Recipe(
            name: "비건 마요네즈",
            image: "https://www.seriouseats.com/thmb/JUf_PzwJe4vyZakoBLx4PGGttaE=/880x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__images__2012__01__20120121-vegan-mayonnaise-2-2-78d2732a08d541838fc12c69549cb73d.jpg",
            description: "It's pretty simple, really. We all know that oil and water don't mix, right? It has to do with the way those tiny molecules are charged. Oil molecules are charged to like other oil, while water molecules are charged to like other water. Mix the two together and eventually all the water molecules will find each other and organize into one big group that then sinks to the bottom of the cup, no matter how thoroughly you mix the two to begin with.",
            ingredients: """
4 ounces soft silken tofu,
1 clove garlic
2 teaspoons lemon juice
2 teaspoons dijon mustard
1 1/2 cups vegetable oil
Kosher salt
""",
            directions: """
1. Combine tofu, garlic, lemon juice, and dijon mustard in a plastic or glass cup just big enough to fit your hand blender. Blend until tofu is broken down. Pour oil on top of tofu. Place head of hand blender all the way at the bottom of the jar and switch it on. Slowly pull the blender upwards until all the oil has been emulsified. Season to taste with salt. Mayonnaise will keep in the fridge for up to two weeks.

2. To Make With a Countertop Blender: Combine tofu, garlic, lemon juice, and mustard in the jar of a blender and blend until smooth, scraping down sides as necessary. With blender running on lowest speed, slowly drizzle in oil in a very thin stream until it is completely incorporated and emulsified. Season to taste with salt. Mayonnaise will keep in the fridge for up to two weeks.
""",
            category: "Side",
            dataPublished: "2019-06",
            url: "https://www.seriouseats.com/how-to-make-vegan-mayonnaise-mayo",
            isFavorite: false
        ),
        
        Recipe(
            name: "알리오올리오",
            image: "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fdftu1u%2FbtrdjdfHBHb%2FfeBMZX56F7G3hIuNmRTSBk%2Fimg.jpg",
            description: """
[ 레시피 ]
올리브 오일을 팬에 8큰술 넣어줍니다.
마늘을 칼 옆면으로 눌러 으깨준 뒤 팬에 넣어줍니다.
마늘에서 거품이 나기 전까지 강불로 볶아줍니다.
거품이 나기 시작하면 약불로 줄여주고 9~10분간 볶아줍니다.
물 800ml를 넣어준 뒤 짜지 않을 정도로 소금을 넣고 강불로 끓여줍니다.
물이 팔팔 끓으면 면을 넣습니다.
면이 익을 때까지 면이 골고루 익게 적당히 뒤집어 주며 봉투에 적혀있는 조리시간만큼 끓입니다
면이 익는 중간중간 물이 부족하다 싶으면 조금씩 보충해줍니다.
면이 원하는 만큼 익으면 불을 끄고 (선택: 파슬리를 넣고) 30초 정도 팬을 돌리거나 섞어줍니다.
그릇에 담고 (선택: 파마산 치즈가루를 약간 뿌려) 완성해줍니다.
""",
            ingredients: """
[ 필수 재료 ] - 2인분 기준
스파게티(면) 400g
마늘 8쪽
엑스트라 버진 올리브 오일 8큰술
물 800ml 이상
소금 적당량

[ 선택 재료 ] - 넣으면 더 맛있지만 없어도 무관
페페론치노 2개
파마산 치즈가루 약간
다진 생 파슬리
""",
            directions: """
1. 엑스트라 버진 올리브 오일을 8큰술 넣어줍니다. 8큰술 정도를 넣으면 대충 팬 바닥에 얇게 깔리는 정도의 양입니다.

※ 주의 ※
무조건 엑스트라 버진 등급의 올리브 오일이어야 합니다!
시중에 판매되는 올리브 오일은 대부분 엑스트라 버진 등급이니 크게 신경 쓰지 않으셔도 돼요.
그래도 혹시 모르니 넣기 전에 확인해주세요.(용기 앞에 써져있습니다.)

2. 마늘을 칼 옆면으로 눌러 으깨서 팬에 넣어주세요. 마늘은 너무 으깰 필요는 없지만, 그렇다고 너무 으깨지 않으면 안 됩니다. 대충 사진에 나온 정도면 충분해요.

3. 불을 강불(자취방 화력 기준: 9)로 올려주세요. 마늘에서 거품이 나기 시작하면 약불(자취방 화력 기준: 1~3)로 줄여줍니다.
만약 하이라이트가 아닌 가스레인지라면 강불이 아닌 중불 정도로 해주시고, 약불은 최대한 약한 불로 해주세요.

4. 약불로 바꾸신 뒤 마늘의 상태를 봐가면서 9~10분 정도 볶아주세요. 마늘이 과하게 볶아진다 싶으면 불에서 잠시 팬을 떼주셔야 합니다!

선택
매콤한 맛을 원하시면 7분 정도에 페페론치노를 취향껏 부셔서 넣어주세요.
매운 거 못 먹는 사람 기준 저는 1인당 1개가 적당하다 생각해요.

※ 주의 ※
페페론치노를 만진 손은 매우니 얼굴을 만지지 마시고, 흐르는 물에 씻어주세요.


※ 중요 ※
오른쪽 사진과 같은 정도로 마늘이 볶아지면 향이 충분히 우러나온 겁니다. 마늘에 짙은 색이 나면 안 됩니다!
화력에 따라 조리되는 시간이 다를 수 있으므로 금색(골든 브라운)을 내는데 집중해주세요.
약불로 오래 볶는 게 마늘의 향을 최대로 끌어내는데 도움이 됩니다.

Tip.
마늘의 향이 잘 우러나왔는지를 판단하는 또 다른 기준도 있습니다.
마늘이 볶아지는 냄새를 맡았을 때 처음에는 매운 향이 올라오지만 시간이 지날수록 살짝 쌉싸름한 향도 같이 올라오는데 그런 상태가 되면 향이 잘 우러나왔다고 볼 수 있습니다.


5. 마늘을 볶던 팬에 물 800ml와 소금을 적당히 넣어줍니다. 넣었으면 불을 강불로 올려줍니다.
물의 양은 꼭 800ml가 아니더라도 8번 아래에 정리된 기준으로 맞춰주세요!

Tip.
잘 섞은 뒤 맛을 봤을 때 적당하거나 살짝 밍밍한 정도의 간이면 딱 좋습니다.
물이 졸아들면서 짜지기 때문에 소금의 양을 잘 모르시겠는 분들은 조금씩 넣어가며 맛을 봐주세요.
소금을 넣고 섞은 뒤 물을 떠서 맛을 봤을 때 맛있으면 절반은 성공했다고 봐도 됩니다!

400g 정도의 면(2인분 정도)


좌: 면을 넣은 직후 / 우: 면이 물 속으로 들어갈 수 있게 적당히 저어 줍니다.
6. 물이 팔팔 끓으면 면을 넣습니다.

7. 면을 살살 풀어주세요. 아래 사진과 같이 면이 완전히 잠긴 뒤부터 시간을 재주세요. 시간은 면마다 다르니 봉투에 적힌 시간을 기준으로 조리해주세요. 골고루 익도록 면을 30초에 한번 꼴로 뒤적여 주세요.

Tip.
면을 중간중간 맛보면서 원하는 익힘 정도로 조리해주는 게 베스트입니다.
저 같은 경우는 적혀있는 시간보다 살짝 짧게 조리하는 편입니다.

면이 잠길수 있게 살살 풀어주세요.
8. 면을 익힐 시간이 많이 남았는데, 물이 부족해 보인다면 물을 조금씩(50ml~100ml 정도) 추가해주세요.
너무 중요한 부분이니 아래에 따로 정리했습니다.

※ 시간에 따른 '적당한' 물의 양 ※
- 면 넣은 직후: 물에 살짝 잠기는 정도(면 높이의 100~90%)
- 넣은 직후 ~ 3분: 면 높이의 90~70%
- 3분 ~ 7분: 면 반 물 반(면 높이의 70~50%)
- 7분 ~ 완성: 자작한 상태(면 높이의 50~20%)
*정확한 시간이 아닌 진행 상황 정도로 받아들여주세요.


좌: 완전히 풀린 상태가 된 직후의 면 / 우: 면이 완전히 풀어진 상태 정도이후 소스가 된 모습


좌: 불 끄기 직전 남아있는 물의 양 / 우: 불을 끄고 팬을 돌리거나 면을 섞어줍니다.
면이 원하는 만큼 익어, 불을 끄고 면을 섞는 마무리 작업을 하기 전 대충 저 정도의 물이 남아있으면 됩니다.
물이 너무 많거나, 너무 적지만 않으면 괜찮습니다~ 팬을 돌리기 전에 맛을 봐주시고 간을 잘 맞춰주세요.


섞기전 소스의 질감(섞으면 좀 더 크리미해짐)
9. 면이 원하는 만큼 익으면 불을 끄고 30초 정도 팬을 돌려줍니다.(팬을 잘 못 돌린다면 그냥 잘 섞어주셔도 됩니다.)

선택
파슬리를 넣으실 분들은 불을 끈 뒤 면을 섞기 전에 넣어주시면 됩니다.
많이 넣으면 마늘의 향이 가려질 수 있으니 적당히 넣어주세요!


10. 잘 섞었다면 그릇에 예쁘게 담아 주세요.
""",
            category: "Main",
            dataPublished: "2021-08",
            url: "https://stemcook.tistory.com/1",
            isFavorite: true
        ),
        
        Recipe(
            name:
                "볶음밥",
            image: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.tefal.co.kr%2Fmedias%2F%3Fcontext%3DbWFzdGVyfHJvb3R8MzMwMjB8aW1hZ2UvanBlZ3xoZDkvaDk0LzE0MDcwMjU5NzEyMDMwLmpwZ3w2MWU4ODA3MDFiNzU1NWNhNjU4MmJmNmE3NDVkYTgxYWNkODExNzAwMjQyZDhmMWVjOGEyYjQyMGQ2NTIyZDcz&imgrefurl=https%3A%2F%2Fwww.tefal.co.kr%2Frecipe%2F%25ED%2598%25B8%25ED%2585%2594%25EC%258B%259D-%25EC%25A4%2591%25EA%25B5%25AD-%25EB%25B3%25B6%25EC%259D%258C%25EB%25B0%25A5%2Fr%2F230551&tbnid=vvxM4bL2fwU-7M&vet=12ahUKEwjUv-nx58f3AhWtQ_UHHX7RBssQMygJegUIARD_AQ..i&docid=2x9F3SxdlrAlLM&w=426&h=342&q=볶음밥&client=safari&ved=2ahUKEwjUv-nx58f3AhWtQ_UHHX7RBssQMygJegUIARD_AQ",
            description: """
[ 레시피 ]

계란과 밥을 뭉치지 않게 잘 섞어줍니다. 섞기 전에 소금을 약간 넣어줍니다.
식용유를 자작하게 두르고 중-중강 불로 대파를 볶아줍니다.
대파가 색이 나면 (계란과 섞은) 밥을 넣어준 뒤 중강-강불로 올려줍니다.
계란이 다 익어 물기가 없어질 때 가지 볶아줍니다.
물, 간장, 굴소스, 설탕을 넣고 한 번 볶아줍니다.
(선택) 참기름과 고춧가루를 넣고 한 번 볶아줍니다.
(선택) 후추와 깨를 뿌리고 한 번 볶은 뒤 마무리해줍니다.
""",
            ingredients: """
[ 필수 재료 ] - 2인분

쌀 1.5컵(1.5-2 공기)
계란 4-5개
식용유
간장 1큰술
물 2큰술
굴소스 1큰술
소금
후추

[ 선택 재료 ]

대파
설탕 0.5큰술
굵은 고춧가루 0.5큰술
볶은 깨 약간
참기름 0.5큰술
""",
            directions: """
1. 밥과 계란을 숟가락으로 잘 섞어줍니다. 섞기 전에 약간의 소금 간을 해주세요. (한 꼬집 정도)
밥과 계란의 비율: 밥을 넣었을 때 계란에 살짝 잠기는 정도의 비율이 베스트

※ 주의 ※
밥이 뭉치지 않게 숟가락으로 잘 풀어주세요!
2. 식용유를 자작하게 두르고 대파를 중-중강 불로 볶아줍니다. (대파의 양은 취향껏 넣으시면 됩니다.)

Tip.
대파는 살짝 탄 상태가 오히려 더 맛있습니다. 너무 타지 않게만 주의해주세요.
추가로 저는 개인적으로 대파가 살짝 식감이 있을 정도의 크기를 좋아합니다.
저는 요리할때 스패출라와 집게를 자주 사용합니다. 편해요.

3. 대파가 색이 나면 계란과 섞어놓은 밥을 넣은 뒤, 강불로 올려줍니다. 밥이 뭉치지 않게 주걱이나 스패출라로 살살 눌러가며 풀어주세요.

※ 주의 ※
저는 여기서부터 마무리할 때까지 계속 강불입니다.
자신의 실력에 맞게 불 조절을 해주세요! 조리시간은 조금 늘어나겠지만 중-중강 불로 하셔도 됩니다.
(팬을 돌려가며 볶는 게 제일 잘 섞입니다.)
4. 위 사진처럼 계란이 다 익어 물기가 없어질 때까지 볶아줍니다.


5. 간장 1큰술을 넣고 한 번 볶아줍니다. 잘 섞어가며 볶아주세요! 그다음 물 2큰술을 넣고 섞어주세요.

Tip.
간장을 넣을 때 밥 위에 뿌리지 말고, 공간을 만들어 프라이팬에 직접 닿게 넣어주면 더 좋습니다. 간장이 살짝 타면서 풍미가 강해집니다.
물을 넣는 이유: 계속 강불로 볶으면 팬이 과열되며 밥알이 너무 건조해지는데, 팬을 식힘과 동시에 밥알에 약간의 수분감을 주기 위해
하지만? 굳이 물은 안 넣어도 됩니다. 큰 차이 없어요 ㅋㅋ
6. 굴소스 1큰술, 설탕 취향껏(최대 0.5큰술) 넣은 뒤 한 번 볶아줍니다.
7. (선택) 고춧가루 0.5큰술과 참기름 0.5큰술을 넣어주고 또 한 번 볶아주세요.

※ 주의 ※
고춧가루는 0.5큰술 이하로 넣어주세요.(0.5큰술은 매운 거 못 먹는 저 기준 살짝 매콤한 정도입니다.)
단, 0.5큰술보다 많이 넣지는 마세요. 매운 거 좋아하시면 고춧가루 대신에 청양고추를 추가로 넣는 것을 추천드립니다.
고춧가루만 많이 넣으면 잘 볶아도 텁텁해지고 전체적인 맛의 밸런스를 해칠 수 있습니다.
참기름과 같이 넣는 이유는 고추기름을 살짝 내기 위해서입니다.
8. (선택) 후추와 깨를 취향껏 적당히 넣어주고 섞은 뒤 마무리해줍니다.

Tip.
깨는 손바닥으로 돌려가며 으깨면서 넣으면 더 고소합니다.
9. 꼭 간을 보시고 싱겁다면 소금을 조.금.씩. 추가해주세요!

마지막에 고명으로 쪽파 같은 거 올려도 맛있을 것 같네요!
맛있게 해드세요~ 감사합니다!
""",
            category: "Main",
            dataPublished: "2021-08",
            url: "https://stemcook.tistory.com/2",
            isFavorite: false
        )
    ]
}
