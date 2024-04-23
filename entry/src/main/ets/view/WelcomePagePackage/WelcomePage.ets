import router from '@ohos.router'
@Entry
@Component
struct WelcomePage {
  @State message: string = 'Hello World'
  a:Boolean=true
  build() {
    Column() {
      //中央slogan
      Text('这是欢迎页面')
        .fontSize(100)
        .onClick(
          ()=>{
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
  jumpToHomePage(){
    router.replaceUrl(
      {
        url:'view/homePagePackage/homePage'
      }
    )
  }
}