'MIT License

'Copyright (c) 2020 Jean-Jacques François Reibel

'Permission is hereby granted, free of charge, to any person obtaining a copy
'of this software and associated documentation files (the "Software"), to deal
'in the Software without restriction, including without limitation the 'rights
'to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
'copies of the Software, and to permit persons to whom the Software is
'furnished to do so, subject to the following conditions:

'The above copyright notice and this permission notice shall be included in all
'copies or substantial portions of the Software.

'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
'IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
'FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
'AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
'LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
'OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
'SOFTWARE.

TYPE car
  wheels AS INTEGER
  doors AS INTEGER
  cylinders AS INTEGER
 END TYPE

DECLARE FUNCTION addWheels(wheels, wheelsIn)
DECLARE FUNCTION addDoors(doors, doorsIn)
DECLARE FUNCTION addCylinders(cylinders, cylindersIn)
DECLARE FUNCTION deleteWheels(wheels, wheelsIn)
DECLARE FUNCTION deleteDoors(doors, doorsIn)
DECLARE FUNCTION deleteCylinders(cylinders, cylindersIn)

PRINT "Creating car."
DIM subaru AS car
subaru.wheels = 4
subaru.doors = 4
subaru.cylinders = 4
PRINT "Wheel check: ", subaru.wheels
PRINT "Door check: ", subaru.doors
PRINT "Cylinder check: ", subaru.cylinders
PRINT ""
PRINT "Adding wheel directly to car object."
subaru.wheels = 5
PRINT "Wheel check: ", subaru.wheels
PRINT "Door check: ", subaru.doors
PRINT "Cylinder check: ", subaru.cylinders
PRINT ""
PRINT "Removing wheel using function."
subaru.wheels = deleteWheels(subaru.wheels, 1)
PRINT "Wheel check: ", subaru.wheels
PRINT "Door check: ", subaru.doors
PRINT "Cylinder check: ", subaru.cylinders
PRINT ""

FUNCTION addWheels(wheels, wheelsIn)
  addWheels = wheels + wheelsIn
END FUNCTION

FUNCTION addDoors(doors, doorsIn)
  addDoors = doors + doorsIn
END FUNCTION

FUNCTION addCylinders(cylinders, cylindersIn)
  addCylinders = cylinders + cylindersIn
END FUNCTION

FUNCTION deleteWheels(wheels, wheelsIn)
  deleteWheels = wheels - wheelsIn
END FUNCTION

FUNCTION deleteDoors(doors, doorsIn)
  deleteDoors = doors - doorsIn
END FUNCTION

FUNCTION deleteCylinders(cylinders, cylindersIn)
  deleteCylinders = cylinders - cylindersIn
END FUNCTION
