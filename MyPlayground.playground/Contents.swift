import UIKit

let family = [ "Ashwag" , "Turki" , "Aryam", "Rakan", "Sultan"]
print (family.count)

var Evennumbers = [2, 4, 6, 8, 10, 12]
Evennumbers.remove(at: 1)
Evennumbers += [16, 18, 20, 22]
print(Evennumbers.randomElement())
Evennumbers.removeAll()

var Numbers = [ 1, 2, 3, 4, 5]
for i in Numbers{
    print (i)
}
Numbers.append(6)
Numbers.append(7)
Numbers.append(8)
Numbers.append(9)
Numbers.append(10)
for i in Numbers {
    print (i)
}

