import image from '@ohos.multimedia.image'
import router from '@ohos.router'
import {HomePage} from './view/HomePagePackage/HomePage'
import {ExercisePage} from './view/ExercisePagePackage/ExercisePage'
import {CommunityPage} from './view/CommunityPage/CommunityPage'
import {MinePage} from './view/MinePagePackage/MinePage'

@Entry
@Component
export default struct bottomChooser {
  private controller: TabsController = new TabsController();
  wid:Number
  @State selectIndex:number = 0

  @Builder
  myBuilder(itemIndex:number,title:string|Resource,img:ResourceStr,selImg:ResourceStr){
    Column(){
      if(title=='我的'){
        Image(itemIndex == this.selectIndex ? selImg : img)
          .width(20)
      }
      else{
        Image(itemIndex == this.selectIndex ? selImg : img)
          .width(title == '' ? 60 : 30)
      }
      Text(title)
        .fontColor(Color.Black)
    }
  }

  //判断当前页面选择
  // isHomePage: Boolean = false
  // isExercisePage: Boolean = false
  // isCommunityPage: Boolean = false
  // isMinePage: Boolean = false

  build() {
  //   Row({ space: 10 }) {
  //     //首页图标
  //     Column() {
  //       Image(this.isHomePage ? $r('app.media.homePage_true') : $r('app.media.homePage_false'))
  //         .width('10%')
  //         .autoResize(true)
  //           //点击事件，如果当前不为首页则跳转至首页
  //         .onClick(() => {
  //           if (this.isHomePage) {
  //             return
  //           }
  //           else {
  //             router.replaceUrl({
  //               url: 'view/HomePagePackage/HomePage'
  //             })
  //           }
  //         })
  //       Text('首页')
  //     }
  //
  //     //运动图标
  //     Column() {
  //       Image(this.isExercisePage ? $r('app.media.exercisePage_true') : $r('app.media.exercisePage_false'))
  //         .width('10%')
  //         .autoResize(true)
  //           //点击事件，如果当前不为运动页面则跳转至运动页面
  //         .onClick(() => {
  //           if (this.isExercisePage) {
  //             return
  //           }
  //           else {
  //             router.replaceUrl({
  //               url: 'view/ExercisePagePackage/ExercisePage'
  //             })
  //           }
  //         })
  //       Text('运动')
  //     }
  //
  //     //语音输入图标
  //     Image($r('app.media.speakInputIcon'))
  //       .width('31%')
  //       .height('72%')
  //       .padding({ bottom: 10 })
  //       .objectFit(ImageFit.Contain)
  //       .interpolation(ImageInterpolation.Medium)
  //
  //     //社区图标
  //     Column() {
  //       Image(this.isCommunityPage ? $r('app.media.communityPage_true') : $r('app.media.communityPage_false'))
  //         .width('10%')
  //         .autoResize(true)
  //           //点击事件，如果不为社区页面则跳转至社区页面
  //         .onClick(() => {
  //           if (this.isCommunityPage) {
  //             return
  //           }
  //           else {
  //             router.replaceUrl({
  //               url: 'view/CommunityPage/CommunityPage'
  //             })
  //           }
  //         })
  //       Text('社区')
  //     }
  //
  //     //我的图标
  //     Column() {
  //       Image(this.isMinePage ? $r('app.media.minePage_true') : $r('app.media.minePage_false'))
  //         .width('5%')
  //         .height('30%')
  //         .autoResize(true)
  //         .onClick(() => {
  //           if (this.isMinePage) {
  //             return
  //           } else {
  //             router.replaceUrl({
  //               url: 'view/MinePagePackage/MinePage'
  //             })
  //           }
  //         })
  //       Text('我的')
  //     }
  //   }
  //   .justifyContent(FlexAlign.SpaceAround)
  //   .width('100%')
  //   .height('20%')
  //   .backgroundColor($r('app.color.bottom_chooser_color'))
  //   .alignItems(VerticalAlign.Center)
  // }
    Column(){
      Tabs({
        barPosition: BarPosition.End,
        controller:this.controller
      }){
        TabContent(){
          HomePage()
            .height('100%')
        }
        .tabBar(this.myBuilder(0,'首页',$r('app.media.homePage_false'),$r('app.media.homePage_true')))

        TabContent(){
          ExercisePage()
          //Text("222222")a
        }
        .tabBar(this.myBuilder(1,'运动',$r('app.media.exercisePage_false'),$r('app.media.exercisePage_true')))

        TabContent(){
          Text("这是语言界面")
        }
        .tabBar(this.myBuilder(2,'',$r('app.media.speakInputIcon'),$r('app.media.speakInputIcon')))

        TabContent(){
          CommunityPage()
          //Text("22222222")
        }
        .tabBar(this.myBuilder(3,'社区',$r('app.media.communityPage_false'),$r('app.media.communityPage_true')))

        TabContent(){
          MinePage()
          //Text("111111")
        }
        .tabBar(this.myBuilder(4,'我的',$r('app.media.minePage_false'),$r('app.media.minePage_true')))
      }
      .barHeight(100)
      .backgroundColor('#FFCC99')
      .onChange((index:number)=>{
        this.selectIndex=index
      })
    }


  }
}
//底部选择页面样式
// export declare enum BotIconPattern {
//   Home, //选择首页
//   Exercise, //选择运动页面
//   Community, //选择社区
//   Mine //选择我的
// }
//
// @Extend(Image) function iconStyle() {
//
// }