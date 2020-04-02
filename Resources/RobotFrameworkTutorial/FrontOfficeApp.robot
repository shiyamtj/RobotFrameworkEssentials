***Settings***
Resource  ./PO/LandingPage.robot
Resource  ./PO/Team.robot
Resource  ./PO/TopNav.robot

***Variables***


***Keywords***
Go to Landing Page
    LandingPage.Navigate To
    LandingPage.Verify Page Loaded

Go to "Team" Page
    TopNav.Select "Team" Page
    Team.Verify Page Loaded

Validate "Team" Page
    Team.Validate Page Contents