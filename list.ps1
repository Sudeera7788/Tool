# Function to display menu and select script
function Show-Menu {
    Clear-Host
    Write-Host "Select a PowerShell script to run:"
    Write-Host "1. Script 1"
    Write-Host "2. Script 2"
    Write-Host "3. Script 3"
    Write-Host "4. Exit"
    $choice = Read-Host "Enter your choice (1-4)"
    switch ($choice) {
        "1" {
            Run-Script1
        }
        "2" {
            Run-Script2
        }
        "3" {
            Run-Script3
        }
        "4" {
            Exit
        }
        Default {
            Write-Host "Invalid selection! Please enter a number between 1 and 4."
            Show-Menu
        }
    }
}

# Function to run Script 1
function Run-Script1 {
    Write-Host "Running Script 1..."
    # Add code for Script 1 here
    Set-ExecutionPolicy Bypass -Scope Process -Force

    # Group svchost.exe processes
    $ram = (Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1kb
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control" -Name "SvcHostSplitThresholdInKB" -Type DWord -Value $ram -Force

    $services = @(
        "ALG",
        "AJRouter",
        "BcastDVRUserService_48486de",
        "BDESVC",
        "BFE",
        "BluetoothUserService_48486de",
        "BrokerInfrastructure",
        "Browser",
        "BthAvctpSvc",
        "CaptureService_48486de",
        "cbdhsvc_48486de",
        "diagnosticshub.standardcollector.service",
        "DiagTrack",
        "dmwappushservice",
        "DPS",
        "edgeupdate",
        "edgeupdatem",
        "EntAppSvc",
        "Fax",
        "fhsvc",
        "FontCache",
        "FrameServer",
        "gupdate",
        "gupdatem",
        "iphlpsvc",
        "lfsvc",
        "LicenseManager",
        "lmhosts",
        "MapsBroker",
        "MicrosoftEdgeElevationService",
        "MSDTC",
        "NahimicService",
        "ndu",
        "NetTcpPortSharing",
        "PcaSvc",
        "PerfHost",
        "PhoneSvc",
        "PNRPsvc",
        "p2psvc",
        "p2pimsvc",
        "PrintNotify",
        "QWAVE",
        "RemoteAccess",
        "RemoteRegistry",
        "RetailDemo",
        "RtkBtManServ",
        "SCardSvr",
        "seclogon",
        "SEMgrSvc",
        "SharedAccess",
        "Spooler",
        "stisvc",
        "StorSvc",
        "SysMain",
        "TrkWks",
        "WbioSrvc",
        "WerSvc",
        "wisvc",
        "WMPNetworkSvc",
        "WpcMonSvc",
        "WPDBusEnum",
        "WpnService",
        "wscsvc",
        "WSearch",
        "XblAuthManager",
        "XblGameSave",
        "XboxNetApiSvc",
        "XboxGipSvc",
        "HPAppHelperCap",
        "HPDiagsCap",
        "HPNetworkCap",
        "HPSysInfoCap",
        "HpTouchpointAnalyticsService",
        "HvHost",
        "vmicguestinterface",
        "vmicheartbeat",
        "vmickvpexchange",
        "vmicrdv",
        "vmicshutdown",
        "vmictimesync",
        "vmicvmsession",
        "WdNisSvc",
        "Themes",
        "wlidsvc"
    )

    foreach ($service in $services)
    {
        Set-Service -Name $service -StartupType Disabled
    }

    Write-Host "Running Script 1..."
    # Example: .\Script1.ps1
    Read-Host "Press Enter to return to the menu"
    Show-Menu
}

# Function to run Script 2
function Run-Script2 {
    # Add code for Script 2 here
    Write-Host "Running Script 2..."


    Set-ExecutionPolicy Bypass -Scope Process -Force

    $apps = @(
        "Microsoft.Microsoft3DViewer",
        "Microsoft.AppConnector",
        "Microsoft.BingFinance",
        "Microsoft.BingNews",
        "Microsoft.BingSports",
        "Microsoft.BingTranslator",
        "Microsoft.BingWeather",
        "Microsoft.BingFoodAndDrink",
        "Microsoft.BingHealthAndFitness",
        "Microsoft.BingTravel",
        "Microsoft.MinecraftUWP",
        "Microsoft.GamingServices",
        "Microsoft.GetHelp",
        "Microsoft.Getstarted",
        "Microsoft.Messaging",
        "Microsoft.Microsoft3DViewer",
        "Microsoft.MicrosoftSolitaireCollection",
        "Microsoft.NetworkSpeedTest",
        "Microsoft.News",
        "Microsoft.Office.Lens",
        "Microsoft.Office.Sway",
        "Microsoft.Office.OneNote",
        "Microsoft.OneConnect",
        "Microsoft.People",
        "Microsoft.Print3D",
        "Microsoft.SkypeApp",
        "Microsoft.Wallet",
        "Microsoft.Whiteboard",
        "Microsoft.WindowsAlarms",
        "microsoft.windowscommunicationsapps",
        "Microsoft.WindowsFeedbackHub",
        "Microsoft.WindowsMaps",
        "Microsoft.WindowsPhone",
        "Microsoft.WindowsSoundRecorder",
        "Microsoft.XboxApp",
        "Microsoft.ConnectivityStore",
        "Microsoft.CommsPhone",
        "Microsoft.ScreenSketch",
        "Microsoft.Xbox.TCUI",
        "Microsoft.XboxGameOverlay",
        "Microsoft.XboxGameCallableUI",
        "Microsoft.XboxSpeechToTextOverlay",
        "Microsoft.MixedReality.Portal",
        "Microsoft.XboxIdentityProvider",
        "Microsoft.ZuneMusic",
        "Microsoft.ZuneVideo",
        "Microsoft.Getstarted",
        "*EclipseManager*",
        "*ActiproSoftwareLLC*",
        "*AdobeSystemsIncorporated.AdobePhotoshopExpress*",
        "*Duolingo-LearnLanguagesforFree*",
        "*PandoraMediaInc*",
        "*CandyCrush*",
        "*BubbleWitch3Saga*",
        "*Wunderlist*",
        "*Flipboard*",
        "*Twitter*",
        "*Facebook*",
        "*Royal Revolt*",
        "*Sway*",
        "*Speed Test*",
        "*Dolby*",
        "*Viber*",
        "*ACGMediaPlayer*",
        "*Netflix*",
        "*OneCalendar*",
        "*LinkedInforWindows*",
        "*HiddenCityMysteryofShadows*",
        "*Hulu*",
        "*HiddenCity*",
        "*AdobePhotoshopExpress*",
        "*HotspotShieldFreeVPN*",
        "*Microsoft.Advertising.Xaml*",
        "MICROSOFT.MICROSOFTSTICKYNOTES_3.6.73.0_X64__8WEKYB3D8BBWE",
        "Microsoft.MSPaint3D",
        "Microsoft.MicrosoftStickyNotes",
        "Microsoft.WindowsStore",
        "Microsoft.XboxGamingOverlay",
        "Microsoft.WindowsCamera",
        "Microsoft.Windows.Photos",
        "Microsoft.WindowsCalculator",
        "Microsoft.Windows.Cortana",
        "Microsoft.Office.Desktop",
        "Microsoft.HEIFImageExtension",
        "Microsoft.VP9VideoExtensions",
        "Microsoft.WebMediaExtensions",
        "Microsoft.WebpImageExtension",
        "Microsoft.YourPhone",
        "MICROSOFT.549981C3F5F10",
        "MICROSOFT.MICROSOFTOFFICEHUB"
    )
    
    foreach ($app in $apps)
    {
        try
        {
            Write-Host "Removing $app"
            Get-AppxPackage "*$app*" | Remove-AppxPackage -ErrorAction SilentlyContinue
            Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like "*$app*" | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
        }
        catch [System.Exception] {
            if ($_.Exception.Message -like "*The requested operation requires elevation*")
            {
                Write-Warning "Unable to uninstall $app due to a Security Exception"
            }
            else
            {
                Write-Warning "Unable to uninstall $app due to an unhandled exception"
                Write-Warning $_.Exception.StackTrace
            }
        }
        catch
        {
            Write-Warning "Unable to uninstall $app due to an unhandled exception"
            Write-Warning $_.Exception.StackTrace
        }
    }
    

    # Example: .\Script2.ps1
    Read-Host "Press Enter to return to the menu"
    Show-Menu
}

# Function to run Script 3
function Run-Script3 {
    # Add code for Script 3 here
    Write-Host "Running Script 3..."
    # Example: .\Script3.ps1
    Read-Host "Press Enter to return to the menu"
    Show-Menu
}

# Start the menu
Show-Menu
