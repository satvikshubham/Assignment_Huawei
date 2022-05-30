@Preview
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  scroller : Scroller = new Scroller();
  build() {
    Column() {
      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Image($r("app.media.nav")).width(40).height(40) //.margin({top:10, left:10})
        Image($r("app.media.profile")).width(40).height(40).borderRadius(20) //.margin({top:10, right:10})
      }.padding(20)

      Text("Discover\nour new items.")
        .fontSize(25)
        .fontFamily('calibri')
        .fontWeight(FontWeight.Bold)
        .width('85%')
        .padding({ bottom: 10 })

      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        TextArea({placeholder:"Search"}).width(250).margin({left:10})
        Image($r("app.media.filter")).width(30).height(30).margin({right:20})
      }.padding(10)

      Flex({direction: FlexDirection.Row,justifyContent: FlexAlign.SpaceBetween }) {
        Image($r("app.media.shoe")).width(60).height(60).borderRadius(5);
        Flex({direction: FlexDirection.Column}) {
          Text("Running Unisex Shoes").fontSize(15)
          Text("Coming Soon...").fontSize(15).fontColor('blue')
        }.width(150).padding(5)
        Flex({justifyContent: FlexAlign.Center, direction: FlexDirection.Column}) {
          Toggle({ type: ToggleType.Switch, isOn: true }).width(40).height(20)
          Text("Notify me")
        }
      }.height(100).padding(20).borderRadius(10).border({width:1}).borderColor(0XD3D3D3).width('80%').margin({top:20})

      Flex({justifyContent:FlexAlign.SpaceBetween,direction:FlexDirection.Row}){
        Text("Container").fontSize(20).fontFamily('calibri').fontWeight(FontWeight.Bold).width('85%')
      }.padding({top:20}).margin({left:25})

      Scroll(this.scroller) {
        Row({space: 10}) {
          Button('Shoes', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0x317aff).width(120)
          Button('Table', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(120).fontColor(0x000000)
          Button('Cupboard', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(120).fontColor(0x000000)
          Button('Sofa', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(120).fontColor(0x000000)
          Button('Cup', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(120).fontColor(0x000000)
        }
      }.scrollable(ScrollDirection.Horizontal).scrollBar(BarState.On)
      .padding(25)

      Flex({justifyContent:FlexAlign.SpaceBetween, direction: FlexDirection.Row}){
        Text("Popular shoes").fontSize(20).fontFamily('calibri').fontWeight(FontWeight.Bold).width('85%')
        Text("View all").fontSize(18).fontFamily('calibri').width('25%')
        Image($r("app.media.next")).height(30).width(30)
      }.padding({top:5}).margin({left:25,right:25})

      Flex({justifyContent: FlexAlign.SpaceBetween}){
        Flex({direction: FlexDirection.Column}) {
          Image($r("app.media.shoe1")).height(140).padding({right: 5}).borderRadius(10)
          Text('Running Unisex Shoes Edition Forest Red').fontSize(12).padding(8).fontWeight(FontWeight.Bold)
          Text('₹ 1499').padding({left: 20}).fontSize(11)
        }
        Flex({direction: FlexDirection.Column}) {
          Image($r("app.media.shoe2")).height(140).padding({left: 5}).borderRadius(10)
          Text('Running Unisex Shoes Edition Unique Grey').fontSize(12).padding(8).fontWeight(FontWeight.Bold)
          Text('₹ 1299').padding({left: 20}).fontSize(11)
        }
      }.height(200).padding({right:10,left:10})
      Divider().height(20).width('95%')
      Flex({justifyContent:FlexAlign.SpaceAround,direction:FlexDirection.Row}){
        Column(){
          Image($r("app.media.home")).width(25).height(25)
          Text("Home").fontSize(12)
        }
        Column(){
          Image($r("app.media.categories")).width(25).height(25)
          Text("Categories").fontSize(12)
        }
        Column(){
          Image($r("app.media.notification")).width(25).height(25)
          Text("Notification").fontSize(12)
        }
        Column(){
          Image($r("app.media.cart")).width(25).height(25)
          Text("Cart").fontSize(12)
        }
      }
    }
    .width('100%')
    .height('100%')
  }
}