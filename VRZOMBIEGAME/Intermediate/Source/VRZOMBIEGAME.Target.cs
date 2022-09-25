using UnrealBuildTool;

public class VRZOMBIEGAMETarget : TargetRules
{
	public VRZOMBIEGAMETarget(TargetInfo Target) : base(Target)
	{
		DefaultBuildSettings = BuildSettingsVersion.V2;
		Type = TargetType.Game;
		ExtraModuleNames.Add("VRZOMBIEGAME");
	}
}
