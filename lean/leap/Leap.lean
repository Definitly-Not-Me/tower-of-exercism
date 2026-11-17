namespace Leap

def leapYear (year : UInt16) : Bool := (year Mod.mod  4 = 0) && ( year Mod.mod 100 != 0 || year Mod.mod 400 = 0)
   
   

end Leap
