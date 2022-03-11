//
//  ContentView.swift
//  Quiz2
//
//  Created by Harleen Jhamat on 2022-02-09.
//

import SwiftUI
import Foundation
import UIKit

struct Student {
    var name: String = ""
    var age: Int = 0
    var movie: String = ""
    
}

struct ContentView: View {
    
    @State var student: Student = Student()
    @State var name: String = ""
    //@ObservedObject var age = NumbersOnly()
    @State var age: String = ""
    @State var movie: String = ""
    @State var submit = false
    
    var body: some View {
        ZStack{
            VStack{
                
                // HEADLINE
                Text("Student Info")
                    .padding()
                    .font(.system(size: 25))
                
                // TextInput: Name
                TextField("Name ", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 250, height: 30)
                
                // TextInput: Age
//                TextField("Age", text: $age.value)
//                            .padding()
//                            .keyboardType(.decimalPad)
//                            .textFieldStyle(RoundedBorderTextFieldStyle())
//                            .frame(width: 250, height: 30)
                
                // TextInput: Age
                TextField("Age", text: $age)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 250, height: 30)
                
                // TextInput: Favorite Movie
                TextField("Favorite Movie ", text: $movie)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 250, height: 30)
                
//                func pascalTriangle(numRows: Int64){
//                    var results = [[Int64]]()
//
//                }
                
                // Output
                if submit {
                    VStack(alignment: .leading) {
                        
                        Text("Name: " + student.name)
                            .font(.system(size: 20))
                        Text("Age: \(student.age)")
                            .font(.system(size: 20))
                        Text("Movie: " + student.movie)
                            .font(.system(size: 20))
                        //pascalTriangle(numRows: age)
                        
                    }
                }
                
                // Button for submission
                Button(action:{
                    
                    // Reference: https://www.hackingwithswift.com/example-code/language/how-to-convert-a-string-to-an-int
                    let intAge: Int = Int(age) ?? 0
                    student = Student(name: name, age: intAge, movie: movie)
                    submit.toggle()},
                    label: {
                        Text("Submit")
                            .frame(width: 100, height:30, alignment: .center)
                            .foregroundColor(.white)
                            .background(.cyan)
                            .padding()
                    
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
