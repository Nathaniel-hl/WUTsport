@Entry
@Component
struct GuidancePage {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Text('是否完善个人信息           ')
        .fontSize(30)
        .padding({top:20,bottom:20})

      Text('进行运动定制?')
      Image($r('app.media.guidancePic'))
        .width('80%')
        .height('40%')
    }
    .justifyContent(FlexAlign.Center)
    .height('100%')
    .width('100%')
    .backgroundColor($r('app.color.background_color'))
  }
}