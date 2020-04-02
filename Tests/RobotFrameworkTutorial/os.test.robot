***Settings***
Resource  ../../Resources/OperatingSystem/os.robot


# robot -d results/RobotFrameworkTutorial tests/RobotFrameworkTutorial/os.test.robot

***Test Cases***
Create some Directories
    [Tags]  OperatingSystem
    os.Create the Base Directory
    os.Create Directory 1
    os.Create Directory 2

Create some files
    [Tags]  OperatingSystem
    os.Create the first file
    os.Create the second file
    os.Create the third file

Move a File
    [Tags]  OperatingSystem
    os.Move File 3 from Directory 2 to Directory 1

Copy a File
    [Tags]  OperatingSystem
    os.Copy File 1 from Directory 1 to Directory 2

