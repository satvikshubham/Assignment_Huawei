@Preview
@Entry
@Component

struct main {
  scroller :Scroller = new Scroller();
  build() {
    Column() {
      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Image($r("app.media.nav")).height(40).width(40)
        Image($r("app.media.profile")).height(40).width(40).borderRadius(20)
      }

      Text("Discover\nour new products.").width('95%').fontSize(24)
        .fontWeight(FontWeight.Bold).padding({ top: 10, bottom: 10 })
      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        TextArea({ placeholder: "Search..." }).width(250)
        Image($r("app.media.filter")).width(30).height(30).padding({ right: 10 })
      }.padding({ top: 10, bottom: 10 })

      Flex({direction: FlexDirection.Row,justifyContent: FlexAlign.SpaceBetween }) {
        Image($r("app.media.shoe")).width(100).height(100).borderRadius(5).objectFit(ImageFit.ScaleDown)
        Flex({direction: FlexDirection.Column}) {
          Text("Running Unisex Shoes").fontSize(15)
          Text("Coming Soon...").fontSize(15).fontColor('blue')
        }.width(150).padding({top:20,left:5})
        Flex({justifyContent: FlexAlign.Center, direction: FlexDirection.Column}) {
          Toggle({ type: ToggleType.Switch, isOn: true }).width(40).height(20)
          Text("Notify me")
        }
      }.height(100).borderRadius(10).border({width:1}).borderColor(0XD3D3D3)
      .width('100%').margin({top:20})

      Text("Categories").fontSize(20).fontFamily('calibri').fontWeight(FontWeight.Bold).width('95%')
      .padding({top:20,bottom:10})

      Scroll(this.scroller){
        Row({space: 10}) {
          Button('Shoes', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0x317aff).width(120)
          Button('Table', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(120).fontColor(0x000000)
          Button('Cupboard', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(120).fontColor(0x000000)
          Button('Sofa', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(120).fontColor(0x000000)
          Button('Cup', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(120).fontColor(0x000000)
        }
      }.scrollable(ScrollDirection.Horizontal).scrollBar(BarState.On).padding({top:10, bottom:20})

      Flex({justifyContent:FlexAlign.SpaceBetween, direction: FlexDirection.Row}){
        Text("Popular shoes").fontSize(20).fontFamily('calibri').fontWeight(FontWeight.Bold).width('85%').margin({left:5})
        Text("View all").fontSize(18).fontFamily('calibri').width('25%')
        Image($r("app.media.next")).height(30).width(30).objectFit(ImageFit.ScaleDown)
      }

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
      }.height(220)
      .padding({top:10,bottom:10})
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
      }.padding({top:10})
    }.padding(20)
  }
}