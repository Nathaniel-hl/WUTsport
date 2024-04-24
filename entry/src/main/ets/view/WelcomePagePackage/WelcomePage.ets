// @ts-nocheck
import router from '@ohos.router'
import PreferencesUtil from 'ets/common/util/PreferencesUtil'

@Entry
@Component
struct WelcomePage {
  @State message: string = 'Hello World'

  aboutToAppear() {
    setTimeout(() => {
      router.replaceUrl({
        url: 'view/GuidancePagePackage/GuidancePage'
      })
    }, 1000)
  }

  build() {
    Column() {
      //中央slogan
      Text('这是欢迎页面')
        .fontSize(100)
        .onClick(
          () => {
            this.jumpToHomePage()
          }
        )

      //logo

      //文字描述
    }
    .height('100%')
    .width('100%')
    .backgroundColor($r('app.color.background_color'))
  }
  //跳转到主页
  jumpToHomePage() {
    router.replaceUrl(
      {
        url: 'view/HomePagePackage/HomePage'
      }
    )
  }
}