import router from '@ohos.router'
@Entry
@Component
struct CoinMallPage {
  @State message: string = 'Hello World'

  build() {
    Column() {
      //顶部title和返回按钮
      Row(){
        Text('<')
          .fontSize(50)
          .onClick(()=>{
            router.back()
          })
        Blank()
        Text('金币换奖品')
          .fontSize(30)
          .fontWeight(400)
          .padding({right:20})
        Blank()
      }
      .width('100%')
      .backgroundColor(Color.White)
      .height('10%')

    }
    .height('100%')
    .width('100%')
    .backgroundColor($r('app.color.background_color'))
  }
}