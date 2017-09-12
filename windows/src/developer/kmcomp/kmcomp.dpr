program kmcomp;

uses
  main in 'main.pas',
  compile in '..\..\global\delphi\general\compile.pas',
  VersionInfo in '..\..\global\delphi\general\VersionInfo.pas',
  RegistryKeys in '..\..\global\delphi\general\RegistryKeys.pas',
  kccompilepackage in 'kccompilepackage.pas',
  CompilePackage in '..\..\global\delphi\general\CompilePackage.pas',
  CRC32 in '..\..\global\delphi\general\CRC32.pas',
  ResourceStrings in '..\..\global\delphi\general\ResourceStrings.pas',
  kpsfile in '..\..\global\delphi\general\kpsfile.pas',
  PackageInfo in '..\..\global\delphi\general\PackageInfo.pas',
  PackageFileFormats in '..\..\global\delphi\general\PackageFileFormats.pas',
  kmpinffile in '..\..\global\delphi\general\kmpinffile.pas',
  RedistFiles in '..\TIKE\main\RedistFiles.pas',
  DebugPaths in '..\..\global\delphi\general\DebugPaths.pas',
  httpuploader in '..\..\global\delphi\general\httpuploader.pas',
  httpuploader_messageprocessor_forms in '..\..\global\delphi\general\httpuploader_messageprocessor_forms.pas',
  utilfiletypes in '..\..\global\delphi\general\utilfiletypes.pas',
  CustomisationStorage in '..\..\global\delphi\cust\CustomisationStorage.pas',
  klog in '..\..\global\delphi\general\klog.pas',
  KeyNames in '..\..\global\delphi\general\KeyNames.pas',
  StockFileNames in '..\..\global\delphi\cust\StockFileNames.pas',
  OnlineConstants in '..\..\global\delphi\productactivation\OnlineConstants.pas',
  KeymanDeveloperOptions in '..\TIKE\main\KeymanDeveloperOptions.pas',
  Upload_Settings in '..\..\global\delphi\general\Upload_Settings.pas',
  utilstr in '..\..\global\delphi\general\utilstr.pas',
  utilsystem in '..\..\global\delphi\general\utilsystem.pas',
  utildir in '..\..\global\delphi\general\utildir.pas',
  utilkeyboard in '..\..\global\delphi\general\utilkeyboard.pas',
  unicode in '..\..\global\delphi\general\unicode.pas',
  utilhttp in '..\..\global\delphi\general\utilhttp.pas',
  SystemDebugPath in '..\..\global\delphi\general\SystemDebugPath.pas',
  GetOsVersion in '..\..\global\delphi\general\GetOsVersion.pas',
  UfrmTike in '..\TIKE\main\UfrmTike.pas' {TikeForm: TTntForm},
  CompilePackageInstaller in '..\..\global\delphi\general\CompilePackageInstaller.pas',
  UTikeDebugMode in '..\TIKE\main\UTikeDebugMode.pas',
  CompileKeymanWeb in '..\TIKE\compile\CompileKeymanWeb.pas',
  VisualKeyboard in '..\..\global\delphi\visualkeyboard\VisualKeyboard.pas',
  KeymanWebKeyCodes in '..\TIKE\compile\KeymanWebKeyCodes.pas',
  ExtShiftState in '..\..\global\delphi\comp\ExtShiftState.pas',
  kmxfileconsts in '..\..\global\delphi\general\kmxfileconsts.pas',
  wininet5 in '..\..\global\delphi\general\wininet5.pas',
  kmxfileutils in '..\..\global\delphi\general\kmxfileutils.pas',
  GlobalProxySettings in '..\..\global\delphi\general\GlobalProxySettings.pas',
  VKeyChars in '..\..\global\delphi\general\VKeyChars.pas',
  utilmsxml in '..\..\global\delphi\general\utilmsxml.pas',
  ErrorControlledRegistry in '..\..\global\delphi\vcl\ErrorControlledRegistry.pas',
  utilexecute in '..\..\global\delphi\general\utilexecute.pas',
  KeymanVersion in '..\..\global\delphi\general\KeymanVersion.pas',
  kmxfile in '..\..\global\delphi\general\kmxfile.pas',
  Glossary in '..\..\global\delphi\general\Glossary.pas',
  VKeys in '..\..\global\delphi\general\VKeys.pas',
  CompileErrorCodes in '..\..\global\delphi\general\CompileErrorCodes.pas',
  TouchLayout in '..\TIKE\oskbuilder\TouchLayout.pas',
  TouchLayoutDefinitions in '..\TIKE\oskbuilder\TouchLayoutDefinitions.pas',
  TouchLayoutUtils in '..\TIKE\oskbuilder\TouchLayoutUtils.pas',
  KeyboardFonts in '..\..\global\delphi\general\KeyboardFonts.pas',
  KeyboardParser in '..\TIKE\main\KeyboardParser.pas',
  WindowsLanguages in '..\..\global\delphi\general\WindowsLanguages.pas',
  TempFileManager in '..\..\global\delphi\general\TempFileManager.pas',
  JsonUtil in '..\..\global\delphi\general\JsonUtil.pas',
  TikeUnicodeData in '..\TIKE\main\TikeUnicodeData.pas',
  UnicodeData in '..\..\global\delphi\charmap\UnicodeData.pas',
  ttinfo in '..\..\global\delphi\general\ttinfo.pas',
  ADODB_TLB in '..\..\global\delphi\tlb\ADODB_TLB.pas',
  ADOX_TLB in '..\..\global\delphi\tlb\ADOX_TLB.pas',
  UKeymanTargets in '..\..\global\delphi\general\UKeymanTargets.pas',
  kccompileproject in 'kccompileproject.pas',
  ProjectFile in '..\TIKE\project\ProjectFile.pas',
  mrulist in '..\TIKE\main\mrulist.pas',
  Project in '..\TIKE\project\Project.pas',
  ProjectFiles in '..\TIKE\project\ProjectFiles.pas',
  ProjectFileType in '..\TIKE\project\ProjectFileType.pas',
  ProjectLoader in '..\TIKE\project\ProjectLoader.pas',
  ProjectSaver in '..\TIKE\project\ProjectSaver.pas',
  kmnProjectFile in '..\TIKE\project\kmnProjectFile.pas',
  kmxProjectFile in '..\TIKE\project\kmxProjectFile.pas',
  kpsProjectFile in '..\TIKE\project\kpsProjectFile.pas',
  kvkProjectFile in '..\TIKE\project\kvkProjectFile.pas',
  ProjectLog in '..\TIKE\project\ProjectLog.pas',
  UMD5Hash in '..\..\global\delphi\general\UMD5Hash.pas',
  UserMessages in '..\..\global\delphi\general\UserMessages.pas',
  JSONKeyboardInfo in '..\..\global\delphi\kmw\JSONKeyboardInfo.pas',
  VisualKeyboardLoaderBinary in '..\..\global\delphi\visualkeyboard\VisualKeyboardLoaderBinary.pas',
  VisualKeyboardLoaderXML in '..\..\global\delphi\visualkeyboard\VisualKeyboardLoaderXML.pas',
  VisualKeyboardSaverBinary in '..\..\global\delphi\visualkeyboard\VisualKeyboardSaverBinary.pas',
  VisualKeyboardSaverXML in '..\..\global\delphi\visualkeyboard\VisualKeyboardSaverXML.pas',
  kccompilekvk in 'kccompilekvk.pas',
  ValidateKeyboardInfo in '..\TIKE\compile\ValidateKeyboardInfo.pas',
  MergeKeyboardInfo in '..\TIKE\compile\MergeKeyboardInfo.pas';

{$R icons.RES}
{$R version.res}
{$R manifest.res}

begin
  Run;
end.
