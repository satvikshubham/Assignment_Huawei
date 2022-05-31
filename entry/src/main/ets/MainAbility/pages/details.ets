@Entry
@Preview
@Component
struct Detail{
  scroller : Scroller = new Scroller();
  @State value:number=1;
  rating: number = 4.0;
  build(){
    Column(){
      Flex({justifyContent:FlexAlign.SpaceBetween, direction: FlexDirection.Row}){
        Image($r("app.media.back")).width(30).height(30).backgroundColor(0XD3D3D3).borderRadius(10).objectFit(ImageFit.ScaleDown)
        Text("Details").fontSize(20).fontWeight(FontWeight.Bold).fontFamily('calibri')
        Image($r("app.media.dots")).width(30).height(30).backgroundColor(0XD3D3D3).borderRadius(10).objectFit(ImageFit.ScaleDown)
      }.padding(20)
      Stack({alignContent:Alignment.BottomEnd}){
        Image($r("app.media.shoe1")).height(280).width(280).borderRadius(10)
        Column(){
          Rating({rating : this.rating}).stars(5).width(60).height(10)
          Text("326 reviews").padding({bottom:2,top:5}).fontSize(12)
        }.backgroundColor("#6d7c8f").borderRadius(10).padding(10)
      }.padding({bottom: 10})
      Text("Running shoes unisex Red").fontSize(24).fontWeight(FontWeight.Bold).fontFamily('calibri').width('90%').padding({bottom:10})
      Text("MRP : ₹ 2499").fontSize(14).width('85%').padding({bottom:10})
      Flex({alignContent:FlexAlign.Start, direction:FlexDirection.Column}){
        Text("A shoe is an item of footwear intended to protect and ").fontSize(12).padding({left:20,right:20}).opacity(0.6)
        Text("comfort the human foot. Shoes are also used as an item of ").fontSize(12).padding({left:20,right:20}).opacity(0.6)
        Row() {
          Text("decoration and fashion. The design of shoes")
            .fontSize(12)
            .padding({ left: 20})
            .opacity(0.6)
          Text("Read more...").fontSize(12).padding({left:3,right:15}).fontWeight(FontWeight.Bold)
        }
        Flex({alignItems:ItemAlign.Center,justifyContent:FlexAlign.SpaceBetween}){
          Text("Color").fontSize(20).fontFamily('calibri')
          Radio({group: "Color", value: "red"}).backgroundColor("#E6FF0000").borderRadius(50).width(6).height(6)
          Radio({group: "Color", value: "black"}).backgroundColor("#000000").borderRadius(50).width(6).height(6)
          Radio({group: "Color", value: "brown"}).backgroundColor("#694131").borderRadius(50).width(6).height(6)
          Counter(){
            Text(this.value.toString()).fontSize(14).fontWeight(FontWeight.Bold)
          }.onInc(() => this.value++)
          .onDec(() =>{
              if(this.value!=0){
                this.value--;
              }
            }
          )
        }.padding(20)
        Text('Available Sizes').fontSize(20).width('95%').padding({bottom: 15,left:20,top:10}).fontFamily('calibri').fontWeight(FontWeight.Bold)
        Scroll(this.scroller) {
          Row({space: 10}) {
            Button('4 inches', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0x317aff).width(100)
            Button('5 inches', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(100).fontColor(0x000000)
            Button('6 inches', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(100).fontColor(0x000000)
            Button('7 inches', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(100).fontColor(0x000000)
            Button('8 inches', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(100).fontColor(0x000000)
          }
        }.scrollable(ScrollDirection.Horizontal).scrollBar(BarState.On)
        .padding({left:25,right:25,top:20})
        Row(){
          Image($r("app.media.wish")).width(100).height(40).objectFit(ImageFit.ScaleDown).padding({right:30}).margin({left:20})
          Flex({alignItems: ItemAlign.Center}){
            Text('Add to Cart').fontColor(0XFFFFFF).fontSize(20).padding({left: 20, right : 20})
            Image($r("app.media.cart")).width(30).height(30)
          }.backgroundColor(0x317aff).height(60).borderRadius(15).width(200)
        }.padding({top:25})
      }
    }
  }
}