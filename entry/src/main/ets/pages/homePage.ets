import systemDateTime from '@ohos.systemDateTime';
@Entry
@Component
struct HomePage {
  @State message: string = 'Hello World'
  date:Date      //当前日期
  build() {
    Row()
    {

      Text(this.date.toString())
        .fontSize(50)
        .fontWeight(FontWeight.Bold)

    }
    .height('100%')
  }
  //获取当前日期
  getCurTime() {
    this.date.toString()

  }
}