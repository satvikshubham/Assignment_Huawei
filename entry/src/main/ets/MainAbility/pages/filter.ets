@Entry
@Component
@Preview
struct Filter{
  @State minPrice:number=2500;
  @State maxPrice:number=7500;

  scroller:Scroller=new Scroller();
  categories:SelectOption[]=[{value:"Select category"},{value:"Sneakers"},{value:"Boots"},{value:"Running shoes"},{value:"Floaters"}];
  brands:SelectOption[]=[{value:"Select brands"},{value:"Adidas"},{value:"Nike"},{value:"Metro"},{value:"Puma"}];
  build(){
    Column(){
      Flex({justifyContent:FlexAlign.SpaceBetween, direction: FlexDirection.Row}){
        Image($r("app.media.back")).width(30).height(30).backgroundColor(0XD3D3D3).borderRadius(10).objectFit(ImageFit.ScaleDown)
        Text("Filter").fontSize(20).fontWeight(FontWeight.Bold).fontFamily('calibri')
        Image($r("app.media.dots")).width(30).height(30).backgroundColor(0XD3D3D3).borderRadius(10).objectFit(ImageFit.ScaleDown)
      }.padding({bottom:10})
      Text("Gender").fontSize(18).fontWeight(FontWeight.Bold).width('100%').padding({top:20,bottom:20})

      Scroll(this.scroller) {
        Row({space: 10}) {
          Button('Male', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0x317aff).width(90)
          Button('Female', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(90).fontColor(0x000000)
          Button('Both', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(90).fontColor(0x000000)
        }
      }.scrollable(ScrollDirection.Horizontal).scrollBar(BarState.On)
      Text("Category").fontSize(18).fontWeight(FontWeight.Bold).width('100%').padding({top:20,bottom:20})
      Select(this.categories).width(300).height(50).backgroundColor(0XD3D3D3).borderRadius(20).selected(0)

      Text("Brands").fontSize(18).fontWeight(FontWeight.Bold).width('100%').padding({top:20,bottom:20})
      Select(this.brands).width(300).height(50).backgroundColor(0XD3D3D3).borderRadius(20).selected(0)

      Text("Price").fontSize(18).fontWeight(FontWeight.Bold).width('100%').padding({top:20,bottom:20})
      Text("Range: Rs "+this.minPrice+" to " +this.maxPrice).fontSize(15).padding({top:10,bottom:10})
      Stack(){
        Slider({value: this.maxPrice,min:500,max:10000,step:50,style: SliderStyle.OutSet})
          .trackColor(Color.Gray).selectedColor(Color.Gray).blockColor(Color.Blue)
          .showSteps(true).showTips(false)
          .onChange((value: number) => {
            this.maxPrice = value
          })
        Slider({value: this.minPrice,min:500,max:10000,step:50,style: SliderStyle.OutSet})
          .trackColor(Color.Gray)
          .selectedColor(Color.Gray)
          .blockColor(Color.Blue)
          .showSteps(true).showTips(false)
          .onChange((value: number) => {
            this.minPrice = value
          })
      }


      Text("Size").fontSize(18).fontWeight(FontWeight.Bold).width('100%').padding({top:20,bottom:20})
      Scroll(this.scroller) {
        Row({space: 10}) {
          Button('4 inches', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0x317aff).width(100)
          Button('5 inches', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(100).fontColor(0x000000)
          Button('6 inches', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(100).fontColor(0x000000)
          Button('7 inches', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(100).fontColor(0x000000)
          Button('8 inches', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0XD3D3D3).width(100).fontColor(0x000000)
        }
      }.scrollable(ScrollDirection.Horizontal).scrollBar(BarState.On)
      .padding({right:25})
      Flex({justifyContent:FlexAlign.SpaceBetween,direction:FlexDirection.Row}){
        Button('Clear all',{type : ButtonType.Normal}).borderRadius(10).backgroundColor(0XD3D3D3).width(150).fontColor(0x000000)
        Button('Add',{type : ButtonType.Normal}).borderRadius(10).backgroundColor(0x317aff).width(150)
      }.padding({top:50})
    }.padding(20)
  }
}