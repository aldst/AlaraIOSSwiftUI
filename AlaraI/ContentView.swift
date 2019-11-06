//
//  ContentView.swift
//  AlaraI
//
//  Created by alvaro Soto on 10/28/19.
//  Copyright © 2019 alvaro Soto. All rights reserved.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @State var email = ""
    @State var password = ""
    @State var shown = false
    @State var message = ""
    
    @State var isActive: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        Image("logo76")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .aspectRatio(CGSize(width: 315, height: 502), contentMode: .fit)
                        Spacer()
                    }
                     
                    //InputTextField(stateBinding: $username,label: "Usuario",placeholder: "john_wick")
                      
                    //InputTextField(stateBinding: $password,label: "Contrasena",placeholder: "p@assword")
                    
                    TextField("Correo", text: $email).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                    
                    TextField("Contrasena", text: $password).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                    
                    NavigationLink(destination: tabBarIView(), isActive: self.$isActive){
                        Text("")
                    }
                    
                    
                    HStack {
                        
                        Button(action: {
                            
                            if self.email == "" && self.password != "" {
                                
                                self.message = "Ingresse los contenidos"
                                self.shown.toggle()
                                return
                                
                            }
         
                            Auth.auth().signIn(withEmail: self.email, password: self.password) { (res, err) in
                                if err != nil {
                                    
                                    
                                    print((err!.localizedDescription))
                                    self.message = err!.localizedDescription
                                    self.shown.toggle()
                                    return
                                }
                                
                                self.message = "Ingreso exitoso"
                                self.shown.toggle()
                                
                            }
                            //self.isActive = true
                        }) {
                            Text("Iniciar Sesion")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.white)
                        }
                        
                        Spacer()
                        Button(action: {
                                
                                if self.email == "" && self.password != "" {
                                    
                                    self.message = "Ingresse los contenidos"
                                    self.shown.toggle()
                                    return
                                    
                                }
                                
                                Auth.auth().createUser(withEmail: self.email, password: self.password) { (res, err) in
                                    
                                    if err != nil {
                                        
                                        print(err!.localizedDescription)
                                        self.message = err!.localizedDescription
                                        self.shown.toggle()
                                        return
                                        
                                    }
                                    //self.selection = 1
                                    self.message = "Registro exitoso"
                                    self.shown.toggle()
                                    
                                }
                            //self.isActive = true
                            }) {
                                Text("Registrarse")
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color.white)
                            }
                        }.alert(isPresented: $shown) {
                            return Alert(title: Text(self.message))
                            
                    }.padding(.vertical)
                        .background(Color.red)
                        .cornerRadius(5)
                        .padding(.horizontal, 40)
                    
                /*
                    Text("O desea ingresar con:")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding(.vertical, 
                        .padding(.horizontal, 30)
                */
                    /*
                    login().frame(width: 140, height: 50, alignment: .leading)
                        .padding(.horizontal, 70)
                        .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                        .cornerRadius(8)
                    */
                    Spacer()
                }.padding(.horizontal)
                    .background(Image("fondo")
                    //.resizable()
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
/*
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
*/
