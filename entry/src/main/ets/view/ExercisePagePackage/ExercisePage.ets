import bottomChooser from '../../bottomChooser'
@Entry
@Component
struct ExercisePage {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text('这是运动页面')
        bottomChooser({isExercisePage:true})
      }
      .width('100%')
    }
    .height('100%')
  }
}