//
//  Info.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 14/11/22.
//

import Foundation
import SwiftUI

let appData: [Data] = [
  Data(
      title: "Twitter",
      headline: "Welcome to the twitter by Elon Musk",
      image: "twitter1",
      gradientColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")],
      description: """
              Join the conversation! Retweet, chime in on a thread, go viral, or just scroll through the Twitter timeline to stay on top of what everyone’s talking...
        """,
      url: "twitter://timeline", info: ["Twitter, Inc.","English +41 More","256.9 MB","17+ Years Old"]
    ),
  Data(
      title: "Weather",
      headline: "Get the weather forecast",
      image: "weather1",
      gradientColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")],
      description: """
              See current and forecasted weather with a smart layout that updates as conditions change. And view precipitation, air quality, and temperature maps to see different conditions near you...
        """,
      url: "weather://", info: ["Apple","English +32 More","25.9 MB","4+ Years Old"]
    ),
  Data(
      title: "Uber",
      headline: "Door-to-Door Cab Service",
      image: "uber1",
      gradientColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")],
      description: """
              Join the conversation! Retweet, chime in on a thread, go viral, or just scroll through the Twitter timeline to stay on top of what everyone’s talking...
        """,
      url: "uber://", info: ["Twitter, Inc.","English +41 More","256.9 MB","17+ Years Old"]
    ),
  Data(
      title: "PhonePe",
      headline: "Secure Payments App",
      image: "phonepe1",
      gradientColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")],
      description: """
              Send money to any mobile number or bank account. Get exciting offers on recharges & bill payments. Buy insurance and pay at any online and offline outlet...
        """,
      url: "phonepe://", info: ["PhonePe PVT.","English +10 More","190.9 MB","4+ Years Old"]
    )
]

let clientData: [Fact] = [
  Fact(
    image: "rakuten",
    content: "Rakuten Card Co., Ltd. offers consumer loan card and credit guarantee services. Rakuten Card Co., Ltd. also offers loans specifically designed for merchants.", url: "https://www.rakuten.com/"
    
  ),
  Fact(
    image: "viber",
    content: "Rakuten Viber, is a cross-platform voice over IP and instant messaging software application owned by Japanese multinational company Rakuten", url: "https://www.viber.com/en/?utm_source=invite&utm_Medium=share&utm_campaign=msgtest"
  ),
  
  Fact(
    image: "tv",
    content: "Rakuten TV is a video-on-demand streaming service, offering movies and TV series for subscription, rental and purchase. It is owned by the Japanese company Rakuten. ", url: "https://rakuten.tv/uk"
  ),
  Fact(
    image: "rsec",
    content: "Rakuten Securities are Protecting our stakeholders' data is Rakuten's highest priority. Providing secure and trusted services is the key to our business growth.", url: "https://sec.rakuten.com.au/"
  )
]

let cardData: [Details] = [
  Details(
    title: "Apple Maps",
    headline: "Apple maps takes you where you want to go",
    image: "maps",
    Description: "This app takes you through the weather of the all regions around the world",
    info: ["Apple, Inc.","English +41 More","256.9 MB","17+ Years Old"]
  )
]

let headersData: [Header] = [
  Header(
    image: "RM1",
    headline: "Rakuten India",
    subheadline: "Rakuten Group's 70+ businesses span a broad range of online and offline services, including e-commerce, travel, digital content, fintech, such as credit cards, banking, securities, insurance, electronic money and smartphone app payments, communications, including a mobile carrier service, and professional sports."
  ),
  Header(
    image: "RM",
    headline: "Fintech Department",
    subheadline: "Rakuten's FinTech business covers a wide range of services, including credit cards, Rakuten Edy e-money, Rakuten Pay mobile payment service, banking, securities and insurance."
  )
]

let welcomeData: [Welcome] = [
    Welcome(image: "welcome", title: "Welcome to R-Cards Mock", description: "Smooth experience with us",  gradientColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")], info: "Welcome to R-Cards"),
    Welcome(image: "secure", title: "Secure & Simple", description: "End to End Security", gradientColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")], info: "Welcome to R-Cards"),
    Welcome(image: "responsive", title: "Responsive App Design", description: "Responsive app design", gradientColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")], info: "Welcome to R-Cards")
]
