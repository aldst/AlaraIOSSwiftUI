//
//  songDetail.swift
//  AlaraI
//
//  Created by Developer on 11/7/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//
import SwiftUI
import SDWebImageSwiftUI
import AVKit
import Alamofire
import SwiftyJSON

struct SongDetail: View {
    
    var imName = ""
    var user = "" // name of the song
    var autor = ""
    var song = ""
    
    var body: some View {
        
        VStack {
            AnimatedImage(url: URL(string: imName))
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            Text(user)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            HStack() {
                Spacer()
                Text("Autor")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
                Text(autor)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
            }
            Spacer()
            Spacer()
            
            
            
            /*
            List(obs.datas){ i in
                card(name: i.name, password: i.password)
            }
            */
            
            songPlayer()
            
            
    }
}

class observer2 : ObservableObject{
    
    @Published var datas = [datatype2]()
    
    init() {
        Alamofire.request("https://rocky-fjord-18899.herokuapp.com/api/cancion").responseData { (data) in
            
            let json = try! JSON(data: data.data!)
            
            for i in json{
                self.datas.append(datatype2(id: i.1["id"].intValue,
                                           name: i.1["nombre"].stringValue,
                                           contenido: i.1["contenido"].stringValue))
            }
        }
    }
}

struct datatype2 : Identifiable{
    var id : Int
    var name : String
    var contenido : String
}

struct songPlayer : View {
    
    @State var time: CGFloat = 0
    @State var player: AVAudioPlayer!
    @ObservedObject var obs = observer2()
    
    var name = ""
    var contenido = ""
    
    var body : some View {
        
        VStack{
            
            // modifica la barra de reproducion de la cancion
            
            Capsule()
                .fill(Color.white)
                .frame(height: 8.0)
                .padding(8.0)
                
            Capsule()
                .fill(Color.red).frame(width: time ,height: 8.0)
                .padding(8.0)
            
            Button(action: {
                    
                    self.player.play()
                    
                    DispatchQueue.global(qos: .background).async {
                        
                        while true {
                            
                            let screenWidth = UIScreen.main.bounds.width - 20
                            
                            let currenttime = self.player.currentTime / self.player.duration
                            
                            let timeForLabel = CGFloat(currenttime) * screenWidth
                            
                            self.time = timeForLabel
                            
                            print(currenttime)
                        }
                        
                    }
                    
                }) {
                    Text("Play")
                }
            }.onAppear() {
            
                let url = Bundle.main.path(forResource: "kuntur", ofType: "mp3")
                
                self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
            }
        }
        
    }
}
