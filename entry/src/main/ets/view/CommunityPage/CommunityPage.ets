import bottomChooser from '../../bottomChooser'

@Entry
@Component
struct CommunityPage {
  @State message: string = 'Hello World'
  @State user_community_name:string='慧园社区'
  build() {
    Column() {
      //list容器用于页面滑动
      List({space:10}){
        //显示社区名称
        ListItem(){
          Column() {
            Row() {
              Text('社区  ')
                .fontSize(30)

              Image('/view/CommunityPage/GPS_Pic.png')
                .objectFit(ImageFit.Fill)
                .size({width:20,height:25})
              Text(' 切换')
                .fontSize(20)
            }
            .alignItems(VerticalAlign.Bottom)
            .width('90%')

            Row() {
              Text('我的社区')
                .fontSize(20)
                .margin({right:'10%'})
              Text(this.user_community_name)
                .fontSize(40)
                .fontWeight(600)
            }
            .alignItems(VerticalAlign.Bottom)
            .width('90%')
          }
          .width('90%')
          .padding({top:'10%',left:'5%'})
          .backgroundColor(Color.White)
        }

        //社区活动预告文字
        ListItem(){
          Row(){
            Text('社区活动预告')
              .fontSize(25)
          }
          .width('90%')
        }
      }
      .width('100%')
      .height('85%')
      .alignListItem(ListItemAlign.Center)

      //底部页面跳转
      bottomChooser({ isCommunityPage: true })
    }
    .height('100%')
    .width('100%')
    .backgroundColor($r('app.color.background_color'))
  }
}