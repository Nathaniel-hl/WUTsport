import router from '@ohos.router'

@Entry
@Component
struct GuidancePage {
  @State message: string = 'Hello World'

  aboutToAppear(){
    router.clear()
  }

  build() {
    Column() {
      Blank()

      Text('是否完善个人信息           ')
        .fontSize(30)
        .padding({ top: 20, bottom: 20, left: 20 })
        .opacity(0.9)

      Text('进行运动定制?')
        .fontSize(30)
        .padding({ bottom: 10 })
        .opacity(0.9)

      Image($r('app.media.guidancePic'))
        .width('90%')
        .height('45%')

      Button('开始定制')
        .size({ height: 50, width: 200 })
        .fontSize(25)
        .onClick(() => {
          router.pushUrl({
            url: 'view/GuidancePagePackage/DataChoice_Gender_Age'
          })
        })

      Blank()

      Text('有丰富经验，跳过->')
        .fontSize(20)
        .opacity(0.7)
        .padding({ bottom: 20 })
        .onClick(() => {
          router.replaceUrl({
            url: 'view/HomePagePackage/HomePage'
          })
        })

    }
    .justifyContent(FlexAlign.Center)
    .height('100%')
    .width('100%')
    .backgroundColor($r('app.color.background_color'))
  }
}