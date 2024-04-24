import bottomChooser from '../../bottomChooser'

@Entry
@Component
struct ExercisePage {
  @State message: string = 'Hello World'
  @State user_coin_num :number = 18

  private items:listItem[]=[
    new listItem('连续步行',20,false),
    new listItem('平衡训练',10,false),
    new listItem('全身拉伸',10,false),
    new listItem('自由运动',20,false),
  ]
  build() {
    Column() {
      //首页title
      Row(){
        Text('首页')
          .fontSize(30)
      }
      .height('10%')
      .backgroundColor(Color.White)
      .width('100%')
      .justifyContent(FlexAlign.Center)

      //每日打卡+编辑+金币数量显示+是否完成图标
      Row(){
        Text('每日打卡   ')
          .fontSize(25)
          .padding({left:'5%'})

        Text('编辑')
          .fontSize(20)

        Blank()

        Text(this.user_coin_num+'')
          .fontSize(20)
          .opacity(0.8)

        Image($r('app.media.coinPic'))
          .objectFit(ImageFit.Fill)
          .size({height:20,width:30})
          .padding({right:10})


        Image($r('app.media.circlePic'))
          .objectFit(ImageFit.Fill)
          .size({height:20,width:20})
      }
      .height('5%')
      .width('100%')
      .alignItems(VerticalAlign.Bottom)
      //打卡列表
      List({space: 10}){
        ForEach(
          this.items,
          (item:listItem)=>{
            ListItem(){
              Row(){
                Text(`${item.name}${item.duration}分钟`)
                  .fontSize(25)
                  .padding({left:10})

                Blank()

                Button('去完成')
              }
              .justifyContent(FlexAlign.Start)

            }
            .width('90%')
            .height('15%')
            .backgroundColor(Color.White)
            .borderRadius(20)
          }
        )
      }.width('100%')
      .height('50%')
      .alignListItem(ListItemAlign.Center)



      //健康数据+编辑
      Row(){

      }

      //健康数据图片
      Row(){

      }

      //底部页面跳转
      Blank()
      bottomChooser({isExercisePage:true})
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.background_color'))
  }
}
class listItem{
  name:string
  duration:number
  isFinished:boolean

  constructor(name:string,duration:number,isFinished:boolean) {
    this.name=name
    this.duration=duration
    this.isFinished=isFinished
  }
}