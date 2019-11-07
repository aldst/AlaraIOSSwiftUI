//
//  Observers.swift
//  AlaraI
//
//  Created by alvaro Soto on 11/4/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI
import Firebase
import FirebaseFirestore

class artistObserver : ObservableObject{
    
    @Published var artist = [artistData]()
    
    init() {
        
        let db = Firestore.firestore()
        db.collection("status").addSnapshotListener { (snap, err) in
            
            if err != nil {
                print((err?.localizedDescription)!)
                return
            }
            
            for i in snap!.documentChanges{
                
                if i.type == .added{
                    
                    let id = i.document.documentID
                    let name = i.document.get("name") as! String
                    let image = i.document.get("image") as! String
                    let phone = i.document.get("phone") as! String
                    
                    self.artist.append(artistData(id: id, name: name, image: image, phone: phone ))
                }
                
                if i.type == .removed{
                    
                    let id = i.document.documentID
                    
                    for j in 0..<self.artist.count{
                        
                        if self.artist[j].id == id{
                            self.artist.remove(at: j)
                            return
                        }
                    }
                }
            }
        }
    }
}

class Postobserver : ObservableObject{
    
    @Published var posts = [datatype1]()
    
    init() {
        
        let db = Firestore.firestore()
        db.collection("posts").addSnapshotListener { (snap, err) in
            
            if err != nil {
                print((err?.localizedDescription)!)
                return
            }
            
            for i in snap!.documentChanges{
                
                if i.type == .added{
                    
                    let id = i.document.documentID
                    let name = i.document.get("name") as! String
                    let image = i.document.get("image") as! String
                    let comment = i.document.get("comments") as! String
                    let likes = i.document.get("likes") as! String
                    
                    self.posts.append(datatype1(id: id, name: name, image: image, comments: comment, likes: likes))
                }
                
                if i.type == .removed{
                    
                    let id = i.document.documentID
                    
                    for j in 0..<self.posts.count{
                        
                        if self.posts[j].id == id{
                            self.posts.remove(at: j)
                            return
                        }
                    }
                }
                
                if i.type == .modified {
                    
                    let id = i.document.documentID
                    let likes = i.document.get("likes") as! String
                    
                    for j in 0..<self.posts.count {
                        
                        if self.posts[j].id == id {
                            
                            self.posts[j].likes = likes
                            return
                        }
                        
                    }
                }
                
            }
        }
    }
}


class songObserver : ObservableObject{
    
    @Published var song = [songData]()
    
    init() {
        
        let db = Firestore.firestore()
        db.collection("songs").addSnapshotListener { (snap, err) in
            
            if err != nil {
                print((err?.localizedDescription)!)
                return
            }
            
            for i in snap!.documentChanges{
                
                if i.type == .added{
                    
                    let id = i.document.documentID
                    let name = i.document.get("name") as! String
                    let image = i.document.get("image") as! String
                    let autor = i.document.get("autor") as! String
                    let song = i.document.get("song") as! String
                    
                    self.song.append(songData(id: id, name: name, image: image, autor: autor, song: song))
                }
                
                if i.type == .removed{
                    
                    let id = i.document.documentID
                    
                    for j in 0..<self.song.count{
                        
                        if self.song[j].id == id{
                            self.song.remove(at: j)
                            return
                        }
                    }
                }
            }
        }
    }
}

class albumObserver : ObservableObject{
    
    @Published var album = [albumData]()
    
    init() {
        
        let db = Firestore.firestore()
        db.collection("albums").addSnapshotListener { (snap, err) in
            
            if err != nil {
                print((err?.localizedDescription)!)
                return
            }
            
            for i in snap!.documentChanges{
                
                if i.type == .added{
                    
                    let id = i.document.documentID
                    let name = i.document.get("name") as! String
                    let image = i.document.get("image") as! String
                    let autor = i.document.get("autor") as! String
                    
                    self.album.append(albumData(id: id, name: name, image: image, autor: autor))
                }
                
                if i.type == .removed{
                    
                    let id = i.document.documentID
                    
                    for j in 0..<self.album.count{
                        
                        if self.album[j].id == id{
                            self.album.remove(at: j)
                            return
                        }
                    }
                }
            }
        }
    }
}
