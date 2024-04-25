//import bottomChooser from '../../bottomChooser'
import interestCard from './interestCard'

@Entry
@Component
export struct MinePage {
  @State message: string = 'Hello World'

  @State user_name:string = '李华'
  @State user_signature:string = '健康生活每一天'
  @State user_fans_num:number = 20
  @State user_concerns_num:number =25
  @State user_posts_num:number =15
  @State user_coin_num:number = 18
  build() {
    Column() {

      //顶部图案
      Stack(){
        Image($r('app.media.minePagePic1'))
          .layoutWeight(0)
        Image($r('app.media.minePagePic2'))
          .position({y:-30,x:10})
          .objectFit(ImageFit.Fill)
          .size({height:'250%',width:'100%'})

      }.width('100%')
      .height('20%')

      //中部内容
      Column(){
        //个人展示方块
        Column(){
          Row(){
            //头像
            Image($r('app.media.lihua'))
              .borderRadius(20)
              .objectFit(ImageFit.Fill)
              .size({height:'80%',width:'30%'})
              .position({y:-40,x:-80})
              .interpolation(ImageInterpolation.Medium)


            Blank(30)
            //名称+个性签名
            Column(){
              Text(this.user_name)
                .fontSize(30)
              Blank('20%')
              Text(this.user_signature)
                .fontSize(20)
                .opacity(0.7)
            }

          }
          Text(`粉丝${this.user_fans_num}  关注${this.user_concerns_num}  发帖${this.user_posts_num}`)
            .padding({top:'10%'})
            .fontSize(25)
        }
        .backgroundColor(Color.White)
        .borderRadius(20)
        .height('30%')
        .width('90%')

        //兴趣栏
        Column(){
          //兴趣栏文字
          Text('兴趣栏')

          //兴趣卡片
          Row(){
            interestCard({index:0,name:'跑步'})

            interestCard({index:1,name:'骑行'})

            interestCard({index:2,name:'游泳'})
          }
          .justifyContent(FlexAlign.SpaceEvenly)
          .width('100%')
        }
        .height('15%')
        .width('90%')
        .backgroundColor(Color.White)
        .borderRadius(20)

        //其他页面选项
        Column(){
          //金币换奖品选项
          Row(){
            Text('金币换奖品')
              .fontSize(25)
            Text(`累计金币${this.user_coin_num}`)
              .opacity(0.5)
            Blank()
            Text('>')
              .fontSize(50)
          }
          .width('100%')
          .height('30%')

          Divider().width('100%')

          //运动周月年报告跳转页面
          Row(){
            Text('运动周月年报告')
              .fontSize(25)
            Blank()
            Text('>')
              .fontSize(50)
          }
          .width('100%')
          .height('30%')

          Divider().width('100%')

          //客服帮助跳转页面
          Row(){
            Text('客服帮助')
              .fontSize(25)
            Blank()
            Text('>')
              .fontSize(50)
          }
          .width('100%')
          .height('30%')

          Divider().width('100%')
        }
        .height('50%')
        .backgroundColor(Color.White)
        .width('90%')
        .borderRadius(20)

      }
      .height('60%')
      .backgroundColor($r('app.color.background_color'))
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)



      //底部切换页面选择
     //bottomChooser({ isMinePage: true })
    }
    .height('100%')
    .width('100%')
    .backgroundColor($r('app.color.background_color'))
    .layoutWeight(1)
  }
}