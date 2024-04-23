@Component
export default struct searchHeader{
  build(){
    Row(){
      Search({placeholder:'24式太极拳',icon:'media/searchIcon.png'})
        .textFont({size:18})
        .searchButton('搜索')
        .placeholderColor(Color.White)
        .backgroundColor(Color.Black)

    }
    .width('65%')
  }
}