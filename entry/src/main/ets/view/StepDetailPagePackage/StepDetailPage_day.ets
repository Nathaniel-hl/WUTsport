import bottomChooser from '../../bottomChooser'
import router from '@ohos.router'
import TimeChooser from './TimeChooser'
@Entry
@Component
struct StepDetailPage_day {

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
        Text('步行详情')
          .fontSize(30)
          .fontWeight(400)
          .padding({right:20})
        Blank()
      }
      .width('90%')
      .backgroundColor(Color.White)
      .height('10%')

      //中间滑动图案
      List({space:15}){
        //按钮选择
        ListItem(){
          TimeChooser({time:0})
        }
        .width('100%')
        .margin({top:10})
      }
      .width('90%')

      //底部页面选择
      Blank()
      bottomChooser({isExercisePage:true })
    }
    .height('100%')
    .width('100%')
    .backgroundColor($r('app.color.background_color'))
  }
}