
/* Ch 2 -> Back to Basics: Variables & Operators */

import UIKit

/* Operators in Swift */

var assignmentOperator = "="
var mathOperators = "+, -, *, /"
var remainderOperator = "%"

var compoundOperators = "+=, -=, *="
var comparisonOperators = "==, !=, >, <, >=, <="

var logic = "!, &&, ||"

var closedRange = "value1...value2"
var halfOpenRange = "value1..<value2"



/* Declaring Variables & Types */

// ความแตกต่างของการประกาศตัวแปร โดยใช้ var และ let
// var เปลี่ยนแปลงค่าได้
// let เปลี่ยนแปลงค่าไม่ได้

var canChange = "This variable can change"
let cannotChange = "This variable cannot change, it's a constant"

canChange = "Here's proof"
//cannotChange = "This should give an error"

// ประกาศตัวแปรที่มีชนิดข้อมูลโดยระบุชนิดข้อมูลชัดเจน
// Explicitly typed variable
var playerHealth_Explicit: Int = 100


// ประกาศตัวแปรที่มีชนิดข้อมูลอ้างอิงชนิดข้อมูลจากค่าที่กำหนดให้
// Inferred type variable
var playerHealth_Inferred = 100

// การประกาศตัวแปรแบบหลายๆค่า โดยที่ชนิดข้อมูลไม่จำเป็นต้องเป็นชนิดเดียวกัน
// Multiple explicitly typed variables
var playerDamage: Int, playerAttack: Int, playerGold: Double

// การประกาศตัวแปรหลายๆค่าที่มีชนิดข้อมูลเดียวกัน
// Multiple type inferred variables
var enemyDamage, enemyAttack, enemyMana: Int













