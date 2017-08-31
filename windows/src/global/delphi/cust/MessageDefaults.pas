// Generated file - generated by MakeStockKCT at 27/03/2017 11:32:57
unit MessageDefaults;
interface

function MsgDefault(const msgid: WideString): WideString;

implementation

uses MessageIdentifierConsts;

const SMessageDefaults: array[TMessageIdentifier] of string = ('', 

  {Application Strings}

  'Keyman Desktop',
  'Keyman Desktop',
  'Select Language',
  'English',
  'English',
  'en',
  'en',
  'More Languages Online...',
  'Choose the language that you want displayed in the $(SKShortApplicationTitle) interface.',
  'No keyboard layouts are installed.'+#13#10+'Choose "Configuration" to install'+#13#10+'a keyboard layout for your language.',
  'Create a new translation online',
  'Click this icon to select a keyboard',
  'Keyman Desktop is still running.  Click this icon to use your language keyboard at any time',
  'Text Editor - $(SKShortApplicationTitle)',
  'On Screen Keyboard - $(SKShortApplicationTitle)',

  {Keyboard Installation/Uninstallation}

  'A package with the name %0:s is already installed.  Do you want to uninstall it and install the new one?',
  'A keyboard with the name ''%0:s'' is already installed.  If you continue, it will be uninstalled before the new one is installed.  Continue?',
  'The keyboard ''%0:s'' is part of package ''%1:s''.  You must uninstall the entire package.  Continue?',
  'You can only install or uninstall keyboards as Administrator.  Use Control Panel to select languages for use as a normal user.',
  'Are you sure you want to remove the on screen keyboard installed for %0:s?',
  'Uninstall keyboard %0:s?',
  'Uninstall package %0:s?%1:s',
  'Select Keyboards from Package',
  'You cannot install all the keyboards in this package.  You can install a maximum of %0:d additional keyboards.  Please select the keyboards you wish to install from this package.',
  'You can only uninstall the keyboard ''%0:s'' if you are an Administrator',
  'The following fonts will also be uninstalled: %0:s.',

  {Help File}

  'keyman.chm',
  'The help file $(SKOnlineHelpFile) could not be found in the application folder.  Please Repair or Reinstall $(SKShortApplicationTitle) to fix this issue.',

  {Assorted strings}

  '<Damaged keyboard>',
  'Codepage',
  'Unicode',
  'Tahoma',
  '9',

  {Message boxes}

  'Keyman debug information will be stored in a text file called keymanlog\system.log on your desktop.  You should exit Keyman before reading or deleting this file.'+#13#10+''+#13#10+'WARNING: This file can grow large very quickly.  Enabling debugging will slow down your system and should only be done if advised by support.'+#13#10+''+#13#10+'PRIVACY WARNING: Please note that the debug logfile records all keystrokes that you type.  You should only turn on the debug log for the duration of a debugging or diagnostic session, and delete the [desktop]\keymanlog\system.log file as soon as possible.',
  'Changing the setting of Surrogates requires Windows to be restarted.  Do you want to restart Windows now?',
  'Cannot activate browser or email program for this URL.',
  'The keyboard could not be printed successfully.  Please save to a web page and print manually.',
  'The package %0:s does not include any introductory help',
  'The selected addin does not include any configurable settings.',
  'All hint messages have been reset and will be displayed again.',

  {Program Startup}

  'This operating system is not supported.',
  'Version %0:s',
  'E&xit',
  'Keyman Desktop failed to start.  Please check your security settings to make sure that the program keyman.exe is allowed to start before continuing.  The error returned was:'+#13#10+''+#13#10+'"%0:s"'+#13#10+''+#13#10+'Do you want to try and start Keyman Desktop again now?',
  'Keyman Desktop is not running.  Please start Keyman Desktop from the Start Menu, under the Programs/Keyman Desktop sub menu, or click Cancel to exit the tutorial.',

  {Character Map}

  'The Unicode Character database could not be deleted for a rebuild.  Error details are: %0:s',
  'The Unicode Character database could not be created and has been disabled.  Error details are: %0:s',
  'The Character Map has a database of characters that needs to be built before it can be used.  Build it now?',
  'The Unicode character database did not load successfully (%0:s).  Rebuild it now?',

  {Standard Controls}

  'OK',
  'Cancel',
  '&Yes',
  '&No',
  'Help',
  '&Print...',
  '&Download...',

  {Option Names}

  'Startup',
  'General',
  'Advanced',
  'Start when Windows starts',
  'Show splash screen',
  'Show welcome screen',
  'Automatically check keyman.com weekly for updates',
  'Keyboard hotkeys toggle keyboard activation',
  'Simulate AltGr with Ctrl+Alt',
  'Always elevate user permissions when running in Windows Vista',
  'Turn on Unicode supplementary character display (requires restart)',
  'Turn on ''Unknown'' language',
  'Debugging',

  {Hotkey Dialog}

  'Change Hotkey',
  '&Clear Hotkey',
  'Set hotkey for keyboard %0:s',
  'Set interface hotkey',
  'The hotkey %0:s will conflict with normal keyboard use.  You should use at least Ctrl or Alt.  Do you want to change this now?',
  'The hotkey %0:s conflicts with the hotkey selected for keyboard %1:s.  If you continue, the hotkey for keyboard %1:s will be cleared.  Continue?',
  'The hotkey %0:s conflicts with a hotkey for the product %1:s.  If you continue, the conflicting hotkey will be cleared.  Continue?',
  'Set hotkey for language %0:s',

  {Online Update Dialog}

  'The new version is %0:s (you are currently running version %1:s)',
  'A %0:dKB patch can be automatically downloaded and installed.',
  'Unable to contact keyman.com - please make sure you have an active Internet connection and try again.',
  'Unable to contact keyman.com - please make sure you have an active Internet connection and try again.  The error received was: %0:s',
  '',
  '',
  'Updates for Keyman Desktop are now available',
  'Click here to download and install the updates',
  '',
  '',

  {Select Drive Dialog}

  'Select Drive',

  {Download Progress Dialog}

  'Downloading File',

  {Diagnostics}

  'All the Windows language settings appear to be correctly configured for your language(s).',
  'Add %0:s editing support to %1:s',
  'Microsoft Office 2000',
  'Microsoft Office XP',
  'Microsoft Office 2003',
  'Microsoft Office 2007',
  'Uniscribe is not currently installed on your computer',
  'Keyman Uniscribe Manager is required to enable display of your language',
  'Link language %0:s to Keyman keyboard %1:s',
  'Install language %0:s and link to Keyman keyboard %1:s'
);

function MsgDefault(const msgid: WideString): WideString;
begin
  Result := SMessageDefaults[MsgIdFromString(msgid)];
end;

end.