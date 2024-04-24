import bottomChooser from '../../bottomChooser'

@Entry
@Component
struct MinePage {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text('这是我的页面')
        bottomChooser({ isMinePage: true })
      }
      .width('100%')
    }
    .height('100%')
  }
}