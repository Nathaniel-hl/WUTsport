import bottomChooser, { BotIconPattern } from '../../bottomChooser'
import searchHeader from './searchHeader'
import systemDateTime from '@ohos.systemDateTime';

@Entry
@Component
struct HomePage {
  @State message: string = 'Hello World'
  date:Date    //当前日期

  build() {
    Column({space:20})
    {
      //首页，搜索栏
      Row({space:20}){
        Text('首页')
          .fontSize(40)
          .padding({left:10})
          .opacity(0.9)
        searchHeader()
      }
      .height('10%')
      .alignItems(VerticalAlign.Bottom)

      //我的步行+日期
      Text(' 我的步行 12月1日')
        .fontSize(25)
        .fontWeight(4)
        .opacity(0.9)//设置透明度

      //步数图案
      Image($r('app.media.stepNumPic'))
        .width('100%')
        .height('30%')
        .padding({left:15,right:15})

      //活动数据+编辑按钮
      Row(){
        Text('活动数据')
          .fontSize(25)
          .fontWeight(4)
          .padding({left:10,right:10})

        Text('编辑')
          .fontSize(20)
          .fontWeight(5)
      }
      .alignItems(VerticalAlign.Bottom)

      //活动数据图片
      Row(){
        Image($r("app.media.activeDataPic1"))
          .padding({left:10,right:10})
          .width('50%')
          .height('100%')
          .autoResize(true)

        Image($r('app.media.activeDataPic2'))
          .height('100%')
          .width('50%')
          .autoResize(true)
          .padding({left:10,right:10})
      }.height('23%')
      .width('100%')

      //底端选择栏
      bottomChooser({isHomePage:true});
    }
    .height('100%')
    .width('100%')
    .backgroundColor($r('app.color.background_color'))
    .justifyContent(FlexAlign.Start)
    .alignItems(HorizontalAlign.Start)
  }
  //获取当前日期
  getCurTime() {
    try {
      systemDateTime.getCurrentTime(false, (error:Error, time: number) => {
        if (error) {
          console.info(`Failed to get currentTime. message: ${error.message}, code: ${error}`);
          return;
        }
        this.date=new Date(time);
        console.info(`Succeeded in getting currentTime : ${time}`);
      });
    } catch(e) {
      let error = e as Error;
      console.info(`Failed to get currentTime. message: ${error.message}, code: ${error}`);
    }
  }
}
