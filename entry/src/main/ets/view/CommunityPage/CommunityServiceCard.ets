@Preview
@Component
export default struct CommunityServiceCard{
  colors:string[]=['#FFAA02','#FD600E',
    '#00968A','#A79884',
    '#FD4D12','#FFAA02']
  index:number=0
  datas:serviceType[]=[
    new serviceType('运动指导','/view//CommunityPage/service_Pic_0.png'),
    new serviceType('紧急求助','/view//CommunityPage/service_Pic_0.png'),
    new serviceType('建议','/view//CommunityPage/service_Pic_0.png')
  ]

  build(){
    Column(){
      Text(this.datas[this.index].name)
        .fontSize(25)
        .padding({left:10,top:20})
        .fontWeight(500)


      Row(){
        Blank()
        Image(this.datas[this.index].image)
          .objectFit(ImageFit.Fill)
          .width('60%')
          .padding({right:10})
      }
      .width('100%')
    }
    .backgroundColor(this.colors[this.index])
    .size({height:150,width:150})
    .alignItems(HorizontalAlign.Start)
    .borderRadius(20)
  }
}
class serviceType{
  name:string
  image:string
  constructor(name:string,  image:string) {
    this.name=name
    this.image=image
  }
}