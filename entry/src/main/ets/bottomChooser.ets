@Component
export default struct bottomChooser{
  homePagePic:Resource=$r('app.media.homePage_false')
  exercisePic:Resource=$r('app.media.exercisePage_false')
  communityPic:Resource=$r("app.media.communityPage_false")
  minePic:Resource=$r('app.media.minePage_false')

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
    Row(10){
      Column(){
        Image(this.homePagePic)
        Text('首页')
      }
      Column(){
        Image(this.exercisePic)
        Text('运动')
      }
      Image($r('app.media.speakInputIcon'))
      Column(){
        Image(this.communityPic)
        Text('社区')
      }
    }
    .justifyContent(FlexAlign.SpaceAround)
    .width('100%')
    .height('20%')
    .backgroundColor($r('app.color.bottom_chooser_color'))
  }

}
//底部选择页面样式
declare enum BotIconPattern{
  Home,//选择首页
  Exercise,//选择运动页面
  Community,//选择社区
  Mine//选择我的
}