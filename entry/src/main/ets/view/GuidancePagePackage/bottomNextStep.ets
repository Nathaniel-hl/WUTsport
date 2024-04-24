import router from '@ohos.router'

@Preview
@Component
export default struct bottomNextStep {
  //是否含有上一步，默认为有
  hasBefore: Boolean = true
  //是否含有下一步，默认为有，如果没有则是最后一面
  hasNext: Boolean = true

  url: string[]=[
    ''
  ]
  build() {
    Row() {
      Text(this.hasBefore ? '<     ' : '      ')
        .fontSize(40)
        .padding({ left: 15 })

      Image($r('app.media.speakInputIcon'))
        .width('31%')
        .height('72%')
        .padding({ bottom: 10 })

      Row() {
        Text(this.hasNext ? '下一步' : ' 完成')
          .fontSize(20)

        Text('>')
          .fontSize(40)
          .padding({ right: 15 })
      }.onClick(() => {
        router.replaceUrl({
          url: 'view/HomePagePackage/HomePage'
        })
      })
    }
    .width('100%')
    .height('20%')
    .backgroundColor($r('app.color.bottom_chooser_color'))
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.SpaceBetween)
  }
}