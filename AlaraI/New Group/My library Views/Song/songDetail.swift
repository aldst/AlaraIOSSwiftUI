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

struct SongDetail: View {
    
    @State var time: CGFloat = 0
    @State var player : AVAudioPlayer!
    
    var imName = ""
    var user = "" // name of the song
    var autor = ""
    var song = ""
    var autorName = "Autor"
    let frame: CGFloat = 8
    
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
                Text(autorName)
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
            
            ZStack(alignment: .leading, content: {
                
                // modifica la barra de reproducion de la cancion
                Capsule()
                    .fill(Color.white).frame(height: frame)
                    .padding(8.0)
                
                Capsule()
                    .fill(Color.red).frame(width: time ,height: frame)
                    .padding(frame)
            })
            
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
            Spacer()
            Spacer()
        }.onAppear() {
            
            let url = Bundle.main.path(forResource: self.song, ofType: "mp3")
            
            self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
        }
        
        
    }
}
