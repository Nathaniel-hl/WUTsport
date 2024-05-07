import web_webview from '@ohos.web.webview'

@Entry
@Component
export default struct IndexPage {
  controller: web_webview.WebviewController = new web_webview.WebviewController()

  build() {
    List(){
      ListItem(){
        Web({ src: 'https://www.wjx.cn/vm/rci65xr.aspx#', controller: this.controller })
      }

    }.width('100%')
    .height('100%')
  }
}
