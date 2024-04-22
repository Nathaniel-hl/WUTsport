import systemDateTime from '@ohos.systemDateTime';
import media from '@ohos.multimedia.media';
import resourceManager from '@ohos.resourceManager';
@Entry
@Component
struct HomePage {
  @State message: string = 'Hello World'
  date:Date      //当前日期
  build() {
    Column()
    {
      Row(){                   //首页，搜索栏
        Text('首页')
          .fontSize(50)


      }
      .height('10%')
      .alignItems(VerticalAlign.Bottom)

    }
    .height('100%')
    .width('100%')
    .backgroundColor($r('app.color.background_color'))
  }
  //获取当前日期
  getCurTime() {
    this.date.toString()
  }
}
