using MauiApp1;

namespace MauiApp4;

public partial class App : Application
{
	public App()
	{
		InitializeComponent();
		var navPage = new NavigationPage(new AppShell());
		navPage.BarBackground = Colors.Chocolate;
		navPage.BarTextColor = Colors.White;
		MainPage = new TabbedPageDemo();
	}
}

// dotnet build -t:Run -f net8.0-ios -p:_DeviceName=:v2:udid=569290F3-B3E6-46DC-AF53-A0965116A607