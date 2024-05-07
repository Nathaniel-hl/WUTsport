import web_webview from '@ohos.web.webview'

@Entry
@Component
export default struct Index {
  controller: web_webview.WebviewController = new web_webview.WebviewController()

  build() {
    Column() {
      // 组件创建时，加载www.baidu.com
      Web({ src: 'www.baidu.com', controller: this.controller })
    }
  }
}
