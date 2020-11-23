# Cocoa Workshop 강의노트 

## Week 3
*2020.11.21 코로나로 원격 진행*

### Lecture - Cocoa Framework
- Cocoa, Cocoa Touch Framework의 역할과 역사
- Foundation 과 UIKit (Cocoa Touch Framework)
- 런타임 & 컴파일 타임에 대하여

### Workshop - Card Matching Game 만들기 (Feat. MVC 패턴)
> 지난 주에 학습한 UICollectionView의 활용

1. 요구 조건을 정리하고(기획) 함수 단위로 역할을 분리한 뒤(설계) 순차적으로 구현 (개발)
1. Card, CardGameManager 클래스를 만들어 Data와 비즈니스 로직을 Model로 분리하기
1. `collectionView(_:didSelectItemAt:)` 메서드를 활용한 카드 Flipping 효과 구현

## Week 2 
*2020.11.14*

### Lecture - 컴퓨터 아키텍쳐 맛보기
- 컴퓨터 아키텍쳐의 기본 (프로세서와 메모리)
- 클래스와 메모리 할당

### Workshop - UICollectionView 파헤치기
> UICollectionView iOS의 모든 리스트형 UI의 기본!

1. Interface Builder (Storyboard)로 CollectionView, Cell 구현하기
1. Protocol과 Delegate 패턴 (UICollectionViewDataSource, UICollectionViewDelegateFlowLayout)
1. 효율적 메모리 관리를 위한 Cell의 재사용
1. Instrument를 활용해 메모리 모니터링하기(Cell이 어떻게 재사용되는지 직접 확인)
1. if 문과 guard 문의 활용 (Early exit에 관하여)
