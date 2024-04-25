import bottomChooser from '../../bottomChooser'
@Entry
@Component
struct CommunityPage2 {
  @State message: string = 'Hello World'

  build() {
    Column() {
      //顶部社区title
      Row(){
        Text('社区')
          .fontSize(30)
      }
      .height('7%')
      .backgroundColor(Color.White)
      .width('100%')
      .justifyContent(FlexAlign.Center)

      //底部页面跳转
      Blank()
      bottomChooser({ isCommunityPage: true })
    }
    .height('100%')
    .width('100%')
    .backgroundColor($r('app.color.background_color'))
  }
}