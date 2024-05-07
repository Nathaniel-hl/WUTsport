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
        url: 'view/GuidancePagePackage/GuidancePage',
      })
      router.clear()
    }, 1000)
  }

  build() {
    Column() {
      Text('这是软工实验git测试')
        .fontSize(30)
      
      Blank('30%')
      //中央slogan
      Column(){
        Image($r('app.media.appIconPic'))
          .size({width:'150'})
          .interpolation(ImageInterpolation.Medium)

        Image($r('app.media.appNamePic'))
          .height('15%')
          .padding({left:'35'})
          .objectFit(ImageFit.Fill)

      }
      .height('30%')

      Blank('30%')

      //文字描述
      Text('基于情感化设计理论 大学生运动app')
        .fontSize(15)
        .opacity(0.5)


      //logo


    }
    .height('100%')
    .width('100%')
    .backgroundColor($r('app.color.background_color'))
    .justifyContent(FlexAlign.Center)
  }
}
