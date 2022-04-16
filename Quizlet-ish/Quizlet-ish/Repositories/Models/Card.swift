//
//  Card.swift
//  Quizlet-ish
//
//  Created by Aria Chen on 2022/4/15.
//

import Foundation
import FirebaseFirestoreSwift

struct Card: Identifiable, Codable {
  @DocumentID var id: String?
  var question: String
  var answer: String
  var successful: Bool = true
  var userId: String?
}
