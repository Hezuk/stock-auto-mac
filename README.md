# StockTracker - macOS Stock Price Checker

SwiftUI로 만든 macOS용 주가 정보 확인 앱입니다.

## 실행 방법

이 프로젝트는 Swift Package Manager(SPM)를 지원하도록 설정되어 있습니다.

1.  **Xcode 설치**: 맥에 Xcode가 설치되어 있어야 합니다.
2.  **프로젝트 열기**:
    - Xcode를 실행하고 `Open a project or file`을 선택한 후, 이 프로젝트 폴더를 선택하여 엽니다.
    - 또는 폴더 내의 `Package.swift` 파일을 더블 클릭합니다.
3.  **타겟 설정**: Xcode 상단 툴바에서 타겟이 `StockTracker`로 선택되어 있고, 실행 기기가 `My Mac`으로 되어 있는지 확인합니다.
4.  **실행**: `Cmd + R` 키를 누르거나 재생 아이콘(Run) 버튼을 클릭하여 앱을 실행합니다.

## 프로젝트 구조

- `StockTracker/Models`: 데이터 모델 (Stock.swift)
- `StockTracker/ViewModels`: 비즈니스 로직 및 목업 데이터 (StockViewModel.swift)
- `StockTracker/Views`: SwiftUI 뷰 (ContentView.swift)
- `StockTracker/StockTrackerApp.swift`: 앱 진입점