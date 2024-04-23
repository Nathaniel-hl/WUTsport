import bottomNextStep from './bottomNextStep'
@Entry
@Component
struct DataChoice_Gender_Age {
  @State message: string = 'Hello World'
  @State isBoy:Boolean = false
  build() {
    Column()  {
      //进度条
      Image($r("app.media.progressbar_20"))
        .size({height:50})
        .padding({top:20})

      //性别文字
      Row(){
        Text('性别:')

        Blank()
      }


      //图片男女选择
      Row(){
        Image(this.isBoy?$r('app.media.boyPic_true'):$r('app.media.boyPic_false'))
          .width('45%')
          .onClick(()=>{
            if(this.isBoy){
              return
            }else{
              this.isBoy=true
            }
          })

        Image(this.isBoy?$r('app.media.girlPic_false'):$r('app.media.girlPic_true'))
          .width('45%')
          .onClick(()=>{
            if(!this.isBoy){
              return
            }else{
              this.isBoy=false
            }
          })
      }
      .width('100%')
      .height('20%')
      .justifyContent(FlexAlign.Center)

      Blank()

      bottomNextStep()

    }
    .height('100%')
    .width('100%')
    .backgroundColor($r('app.color.background_color'))

  }
}