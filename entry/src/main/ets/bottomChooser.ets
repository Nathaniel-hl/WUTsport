@Component
export default struct bottomChooser{
  @State homePagePic:Resource=$r('app.media.homePage_false')
  @State exercisePic:Resource=$r('app.media.exercisePage_false')
  @State communityPic:Resource=$r("app.media.communityPage_false")
  @State minePic:Resource=$r('app.media.minePage_false')

  bottomChooser(pattern:BotIconPattern){
    switch (pattern)
    {
      case BotIconPattern.Home:
      this.homePagePic=$r('app.media.homePage_true')
      break
      case BotIconPattern.Exercise:
      this.exercisePic=$r('app.media.exercisePage_true')
      break
      case BotIconPattern.Community:
      this.communityPic=$r('app.media.communityPage_true')
      break
      case BotIconPattern.Mine:
      this.minePic=$r('app.media.minePage_true')
      break
    }
  }
  build(){
    Row({space:10}){
      Column(){
        Image(this.homePagePic)
          .width('10%')
          .autoResize(true)
        Text('首页')
      }

      Column(){
        Image(this.exercisePic)
          .width('10%')
          .autoResize(true)
        Text('运动')
      }

      Image($r('app.media.speakInputIcon'))
      .width('30%')
      .height('70%')
      .padding({bottom:10})

      Column(){
        Image(this.communityPic)
          .width('10%')
          .autoResize(true)
        Text('社区')
      }

      Column(){
        Image(this.minePic)
          .width('5%')
          .height('30%')
          .autoResize(true)
        Text('我的')
      }
    }
    .justifyContent(FlexAlign.SpaceAround)
    .width('100%')
    .height('20%')
    .backgroundColor($r('app.color.bottom_chooser_color'))
    .alignItems(VerticalAlign.Center)
  }

}
//底部选择页面样式
export declare enum BotIconPattern{
  Home,//选择首页
  Exercise,//选择运动页面
  Community,//选择社区
  Mine//选择我的
}