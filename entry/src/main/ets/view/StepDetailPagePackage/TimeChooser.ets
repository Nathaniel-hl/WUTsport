@Preview
@Component
export default struct TimeChooser{
  time:timeChooser
  build(){
    Stack(){
      Image('/view/StepDetailPagePackage/timeChooser_pic.png')
        .width('28%')
        .height('100%')
      
      Row(){
        Row(){
          Text('日')
            .fontSize(35)
            .fontColor(Color.White)
        }
        .width('25%')
        .height('100%')
        .justifyContent(FlexAlign.Center)

        Row(){
          Text('周')
            .fontSize(35)
            .fontColor(Color.White)
        }
        .width('25%')
        .height('100%')
        .justifyContent(FlexAlign.Center)

        Row(){
          Text('月')
            .fontSize(35)
            .fontColor(Color.White)
        }
        .width('25%')
        .height('100%')
        .justifyContent(FlexAlign.Center)

        Row(){
          Text('年')
            .fontSize(35)
            .fontColor(Color.White)
        }
        .width('25%')
        .height('100%')
        .justifyContent(FlexAlign.Center)
      }
      .width('100%')


    }
    .borderRadius(20)
    .height('7%')
    .width('90%')
    .backgroundColor(Color.Black)



  }
}
enum timeChooser{
  Day,
  Week,
  Month,
  Year
}