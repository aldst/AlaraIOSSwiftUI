//
//  ContentView.swift
//  AlaraI
//
//  Created by alvaro Soto on 10/28/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI
import Firebase
import FBSDKLoginKit
import Alamofire
import SwiftyJSON
import SDWebImageSwiftUI

struct ContentView: View {
    
    //@ObservedObject var obs = observer()
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                
                //muestra logo
                Spacer()
                
                    HStack {
                        Spacer()
                        Image("logo76")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .aspectRatio(CGSize(width: 315, height: 502), contentMode: .fit)
                        Spacer()
                    }
                Spacer()
                
                //botones login
                
                TextField("Correo", text: $email).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                
                TextField("Contrasena", text: $password).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                
                /*
                List(obs.datas){ i in
                    card(name: i.name, password: i.password)
                }
                */
                
                HStack {
                    
                    // login
                    
                    NavigationLink(destination: tabBarIView()){

                        Text("Iniciar Sesion")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                            

                    }.padding(.vertical)
                    .background(Color.red)
                    .cornerRadius(5)
                    .padding(.horizontal, 20)
                      
                     //registrarse
                    
                    NavigationLink(destination: tabBarIView()){

                        Text("Registrarse")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)

                    }.padding(.vertical)
                    .background(Color.red)
                    .cornerRadius(5)
                    .padding(.horizontal, 20)
                }
            
                Spacer()
                     
                Text("O desea ingresar con:")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding()
                
                //login con fb
                
                login().frame(width: 140, height: 50, alignment: .leading)
                    .padding(.horizontal, 70)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                    .cornerRadius(8)
                
                Spacer()
                
            }.padding(.horizontal)
                .background(Image("fondo")
                .scaledToFill()
                .opacity(0.90)
                .clipped())
                .edgesIgnoringSafeArea([.top])
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct login : UIViewRepresentable {
    func makeCoordinator() -> login.Coordinator {
        return login.Coordinator()
    }
    
    func makeUIView(context: UIViewRepresentableContext<login>) -> FBLoginButton {
        let button = FBLoginButton()
        button.delegate = context.coordinator
        return button
    }
    
    func updateUIView(_ uiView: FBLoginButton, context: UIViewRepresentableContext<login>) {
    }
    
    class Coordinator : NSObject,LoginButtonDelegate {
        func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
            
            if error != nil {
                print((error?.localizedDescription)!)
                return
            }
            
            if AccessToken.current != nil {
                let credential = FacebookAuthProvider.credential(withAccessToken: AccessToken.current!.tokenString)
                
                Auth.auth().signIn(with: credential) { (res, er) in
                    
                    if er != nil {
                        print((er?.localizedDescription)!)
                        return
                    }
                    print("Ingreso exitoso")
                }
            }
        }
        
        func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
            
            try! Auth.auth().signOut()
            
        }
    }
}

class observer : ObservableObject{
    
    @Published var datas = [datatype]()
    
    init() {
        Alamofire.request("http://private-51fd2-usuarios6.apiary-mock.com/users").responseData { (data) in
            
            let json = try! JSON(data: data.data!)
            
            for i in json{
                self.datas.append(datatype(id: i.1["id"].intValue,
                                           name: i.1["name"].stringValue,
                                           password: i.1["password"].stringValue))
            }
        }
    }
}

//cero es el numero del index
//1 represanta la data json de cada index
struct datatype : Identifiable{
    var id : Int
    var name : String
    var password : String
}

struct card : View {
    
    var name = ""
    var password = ""
    
    var body : some View {
        
        HStack{
            /*
            AnimatedImage(url: URL(string: url)!).resizable()
                .frame(width: 60, height: 60).clipShape(Circle()).shadow(radius: 20)
            */
            Text(name).fontWeight(.heavy)
            
            Text(password).fontWeight(.heavy)
            
        }
    }
}

