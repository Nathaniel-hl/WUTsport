//import bottomChooser from '../../bottomChooser'

@Entry
@Component
export struct CommunityPage {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text('这是社区页面')
        //bottomChooser({ isCommunityPage: true })
      }
      .width('100%')
    }
    .height('100%')
  }
}