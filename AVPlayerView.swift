//
//  AVPlayerView.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/1/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI
import AVKit

struct AVPlayerView: View {
    
    @State var time: CGFloat = 0
    @State var player : AVAudioPlayer!
    
    var body: some View {
        
        VStack {
            
            ZStack(alignment: .leading, content: {
                
                // modifica la barra de reproducion de la cancion
                Capsule()
                    .fill(Color.white).frame(height: 8)
                    .padding(8)
                
                Capsule()
                    .fill(Color.red).frame(width: time ,height: 8)
                    .padding(8)
            })
            
            Button(action: {
                
                self.player.play()
                
                
                //were continously fetching the current audio time that will affect our main thread thats why we used background thread there...
                
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

struct AVPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AVPlayerView()
    }
}
