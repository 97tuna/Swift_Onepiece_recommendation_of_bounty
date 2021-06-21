# Swift_Onepiece_recommendation_of_bounty
<br>
<p align="center">
<img width="300px" src="https://user-images.githubusercontent.com/50114556/122708359-f73f9a00-d296-11eb-80c8-af02b3d20d25.gif"/>
</p>
<br>

## 코드 회고 (Clone Coding)
 - MVC 패턴에서 MVVC 패턴으로 변경 (중요)
 - 데이터가 묶여있지 않기 때문에 각각 접근해야하는 불편함이 있었음 (단점)
 - UITableView를 이용한 각 원피스 캐릭터 별 현상금을 표시 (구현내용)
 - 뷰 컨트롤러간 데이터를 어떻게 전달하는지
 - 가장 기초적으로 뷰에서 어떤 함수를 통해서 뷰에 전달하는지 학습
 - 뷰가 올라오는 애니메이션과 캐릭터 이름, 현상금 애니메이션 적용


#### MVVM 패턴으로 구성
```
    Model
    - BountyInfo
    > BountyInfo 만들자

    View
    - ListCell 만들기
    > ListCell 필요한 정보를 ViewModel한테서 받아야겠다
    > ListCell은 ViewModel로 부터 받은 정보로 뷰 업데이트 하기

    ViewModel
    - BountyViewModel
    > BountyViewModel을 만들고, ViewLayer에서 필요한 메서드 만들기
    > Model을 가지고 있어야함, BountyInfo 들
```

## Developer
<table>
    <tr>
        <td align="center" width="135px">
            <a href="https://github.com/97tuna"><img height="100px" width="100px" src="https://avatars3.githubusercontent.com/u/50114556?s=400&v=4"></img></a><br />
            <sub> <b> 97tuna </b> </sub>
        </td>
    </tr>
</table>