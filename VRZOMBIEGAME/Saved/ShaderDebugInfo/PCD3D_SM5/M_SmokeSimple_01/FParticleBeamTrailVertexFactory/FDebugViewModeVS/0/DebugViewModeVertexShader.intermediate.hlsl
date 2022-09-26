struct FLWCInverseMatrix
{
    float4x4 M;
    float3 Tile;
    int Dummy;
};

struct FLWCMatrix
{
    float4x4 M;
    float3 Tile;
};

struct FLWCVector3
{
    float3 Tile;
    float3 Offset;
};

struct ViewState
{
    float4x4 TranslatedWorldToClip;
    float4x4 RelativeWorldToClip;
    float4x4 ClipToRelativeWorld;
    float4x4 TranslatedWorldToView;
    float4x4 ViewToTranslatedWorld;
    float4x4 TranslatedWorldToCameraView;
    float4x4 CameraViewToTranslatedWorld;
    float4x4 ViewToClip;
    float4x4 ViewToClipNoAA;
    float4x4 ClipToView;
    float4x4 ClipToTranslatedWorld;
    float4x4 SVPositionToTranslatedWorld;
    float4x4 ScreenToRelativeWorld;
    float4x4 ScreenToTranslatedWorld;
    float4x4 MobileMultiviewShadowTransform;
    float3 ViewTilePosition;
    float3 MatrixTilePosition;
    float3 ViewForward;
    float3 ViewUp;
    float3 ViewRight;
    float3 HMDViewNoRollUp;
    float3 HMDViewNoRollRight;
    float4 InvDeviceZToWorldZTransform;
    float4 ScreenPositionScaleBias;
    float3 RelativeWorldCameraOrigin;
    float3 TranslatedWorldCameraOrigin;
    float3 RelativeWorldViewOrigin;
    float3 RelativePreViewTranslation;
    float4x4 PrevViewToClip;
    float4x4 PrevClipToView;
    float4x4 PrevTranslatedWorldToClip;
    float4x4 PrevTranslatedWorldToView;
    float4x4 PrevViewToTranslatedWorld;
    float4x4 PrevTranslatedWorldToCameraView;
    float4x4 PrevCameraViewToTranslatedWorld;
    float3 PrevTranslatedWorldCameraOrigin;
    float3 PrevRelativeWorldCameraOrigin;
    float3 PrevRelativeWorldViewOrigin;
    float3 RelativePrevPreViewTranslation;
    float4x4 PrevClipToRelativeWorld;
    float4x4 PrevScreenToTranslatedWorld;
    float4x4 ClipToPrevClip;
    float4x4 ClipToPrevClipWithAA;
    float4 TemporalAAJitter;
    float4 GlobalClippingPlane;
    float2 FieldOfViewWideAngles;
    float2 PrevFieldOfViewWideAngles;
    float4 ViewRectMin;
    float4 ViewSizeAndInvSize;
    float4 LightProbeSizeRatioAndInvSizeRatio;
    float4 BufferSizeAndInvSize;
    float4 BufferBilinearUVMinMax;
    float4 ScreenToViewSpace;
    int NumSceneColorMSAASamples;
    float PreExposure;
    float OneOverPreExposure;
    float4 DiffuseOverrideParameter;
    float4 SpecularOverrideParameter;
    float4 NormalOverrideParameter;
    float2 RoughnessOverrideParameter;
    float PrevFrameGameTime;
    float PrevFrameRealTime;
    float OutOfBoundsMask;
    float3 WorldCameraMovementSinceLastFrame;
    float CullingSign;
    float NearPlane;
    float GameTime;
    float RealTime;
    float DeltaTime;
    float MaterialTextureMipBias;
    float MaterialTextureDerivativeMultiply;
    uint Random;
    uint FrameNumber;
    uint StateFrameIndexMod8;
    uint StateFrameIndex;
    uint DebugViewModeMask;
    float CameraCut;
    float UnlitViewmodeMask;
    float4 DirectionalLightColor;
    float3 DirectionalLightDirection;
    float4 TranslucencyLightingVolumeMin[2];
    float4 TranslucencyLightingVolumeInvSize[2];
    float4 TemporalAAParams;
    float4 CircleDOFParams;
    uint ForceDrawAllVelocities;
    float DepthOfFieldSensorWidth;
    float DepthOfFieldFocalDistance;
    float DepthOfFieldScale;
    float DepthOfFieldFocalLength;
    float DepthOfFieldFocalRegion;
    float DepthOfFieldNearTransitionRegion;
    float DepthOfFieldFarTransitionRegion;
    float MotionBlurNormalizedToPixel;
    float GeneralPurposeTweak;
    float GeneralPurposeTweak2;
    float DemosaicVposOffset;
    float DecalDepthBias;
    float3 IndirectLightingColorScale;
    float3 PrecomputedIndirectLightingColorScale;
    float3 PrecomputedIndirectSpecularColorScale;
    float4 AtmosphereLightDirection[2];
    float4 AtmosphereLightIlluminanceOnGroundPostTransmittance[2];
    float4 AtmosphereLightIlluminanceOuterSpace[2];
    float4 AtmosphereLightDiscLuminance[2];
    float4 AtmosphereLightDiscCosHalfApexAngle[2];
    float4 SkyViewLutSizeAndInvSize;
    float3 SkyCameraTranslatedWorldOrigin;
    float4 SkyPlanetTranslatedWorldCenterAndViewHeight;
    float4x4 SkyViewLutReferential;
    float4 SkyAtmosphereSkyLuminanceFactor;
    float SkyAtmospherePresentInScene;
    float SkyAtmosphereHeightFogContribution;
    float SkyAtmosphereBottomRadiusKm;
    float SkyAtmosphereTopRadiusKm;
    float4 SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize;
    float SkyAtmosphereAerialPerspectiveStartDepthKm;
    float SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution;
    float SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv;
    float SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKm;
    float SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv;
    float SkyAtmosphereApplyCameraAerialPerspectiveVolume;
    float3 NormalCurvatureToRoughnessScaleBias;
    float RenderingReflectionCaptureMask;
    float RealTimeReflectionCapture;
    float RealTimeReflectionCapturePreExposure;
    float4 AmbientCubemapTint;
    float AmbientCubemapIntensity;
    float SkyLightApplyPrecomputedBentNormalShadowingFlag;
    float SkyLightAffectReflectionFlag;
    float SkyLightAffectGlobalIlluminationFlag;
    float4 SkyLightColor;
    float4 MobileSkyIrradianceEnvironmentMap[7];
    float MobilePreviewMode;
    float HMDEyePaddingOffset;
    float ReflectionCubemapMaxMip;
    float ShowDecalsMask;
    uint DistanceFieldAOSpecularOcclusionMode;
    float IndirectCapsuleSelfShadowingIntensity;
    float3 ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight;
    int StereoPassIndex;
    float4 GlobalVolumeCenterAndExtent[6];
    float4 GlobalVolumeWorldToUVAddAndMul[6];
    float4 GlobalDistanceFieldMipWorldToUVScale[6];
    float4 GlobalDistanceFieldMipWorldToUVBias[6];
    float GlobalDistanceFieldMipFactor;
    float GlobalDistanceFieldMipTransition;
    int GlobalDistanceFieldClipmapSizeInPages;
    float3 GlobalDistanceFieldInvPageAtlasSize;
    float3 GlobalDistanceFieldInvCoverageAtlasSize;
    float GlobalVolumeDimension;
    float GlobalVolumeTexelSize;
    float MaxGlobalDFAOConeDistance;
    uint NumGlobalSDFClipmaps;
    float FullyCoveredExpandSurfaceScale;
    float UncoveredExpandSurfaceScale;
    float UncoveredMinStepScale;
    int2 CursorPosition;
    float bCheckerboardSubsurfaceProfileRendering;
    float3 VolumetricFogInvGridSize;
    float3 VolumetricFogGridZParams;
    float2 VolumetricFogSVPosToVolumeUV;
    float VolumetricFogMaxDistance;
    float3 VolumetricLightmapWorldToUVScale;
    float3 VolumetricLightmapWorldToUVAdd;
    float3 VolumetricLightmapIndirectionTextureSize;
    float VolumetricLightmapBrickSize;
    float3 VolumetricLightmapBrickTexelSize;
    float StereoIPD;
    float IndirectLightingCacheShowFlag;
    float EyeToPixelSpreadAngle;
    float4 XRPassthroughCameraUVs[2];
    float GlobalVirtualTextureMipBias;
    uint VirtualTextureFeedbackShift;
    uint VirtualTextureFeedbackMask;
    uint VirtualTextureFeedbackStride;
    uint VirtualTextureFeedbackJitterOffset;
    uint VirtualTextureFeedbackSampleOffset;
    float4 RuntimeVirtualTextureMipLevel;
    float2 RuntimeVirtualTexturePackHeight;
    float4 RuntimeVirtualTextureDebugParams;
    float OverrideLandscapeLOD;
    int FarShadowStaticMeshLODBias;
    float MinRoughness;
    float4 HairRenderInfo;
    uint EnableSkyLight;
    uint HairRenderInfoBits;
    uint HairComponents;
    float bSubsurfacePostprocessEnabled;
    float4 SSProfilesTextureSizeAndInvSize;
    float4 SSProfilesPreIntegratedTextureSizeAndInvSize;
    float3 PhysicsFieldClipmapCenter;
    float PhysicsFieldClipmapDistance;
    int PhysicsFieldClipmapResolution;
    int PhysicsFieldClipmapExponent;
    int PhysicsFieldClipmapCount;
    int PhysicsFieldTargetCount;
    int4 PhysicsFieldTargets[32];
    uint InstanceSceneDataSOAStride;
    uint GPUSceneViewId;
    FLWCInverseMatrix WorldToClip;
    FLWCMatrix ClipToWorld;
    FLWCMatrix ScreenToWorld;
    FLWCMatrix PrevClipToWorld;
    FLWCVector3 WorldCameraOrigin;
    FLWCVector3 WorldViewOrigin;
    FLWCVector3 PrevWorldCameraOrigin;
    FLWCVector3 PrevWorldViewOrigin;
    FLWCVector3 PreViewTranslation;
    FLWCVector3 PrevPreViewTranslation;
};

static const float _96[2] = { -1.0f, 1.0f };
static const float4 _99[2] = { float4(-1.0f, 0.0f, 0.0f, 1.0f), float4(1.0f, 0.0f, 0.0f, 1.0f) };
static const float2 _100[4] = { 0.0f.xx, 0.0f.xx, 0.0f.xx, 0.0f.xx };

cbuffer View
{
    row_major float4x4 View_View_TranslatedWorldToClip : packoffset(c0);
    float3 View_View_ViewTilePosition : packoffset(c60);
    float3 View_View_TranslatedWorldCameraOrigin : packoffset(c70);
    float3 View_View_RelativePreViewTranslation : packoffset(c72);
    float View_View_HMDEyePaddingOffset : packoffset(c190.y);
};

cbuffer InstancedView
{
    row_major float4x4 InstancedView_InstancedView_TranslatedWorldToClip : packoffset(c0);
    float3 InstancedView_InstancedView_ViewTilePosition : packoffset(c60);
    float3 InstancedView_InstancedView_TranslatedWorldCameraOrigin : packoffset(c70);
    float3 InstancedView_InstancedView_RelativePreViewTranslation : packoffset(c72);
    float InstancedView_InstancedView_HMDEyePaddingOffset : packoffset(c190.y);
    int InstancedView_InstancedView_StereoPassIndex : packoffset(c192.w);
};

cbuffer Primitive
{
    float3 Primitive_Primitive_TilePosition : packoffset(c1);
    row_major float4x4 Primitive_Primitive_LocalToRelativeWorld : packoffset(c2);
};

cbuffer BeamTrailVF
{
    float4 BeamTrailVF_BeamTrailVF_CameraRight : packoffset(c0);
    float4 BeamTrailVF_BeamTrailVF_CameraUp : packoffset(c1);
    float4 BeamTrailVF_BeamTrailVF_ScreenAlignment : packoffset(c2);
};


static float4 gl_Position;
static float gl_ClipDistance[1];
static int gl_InstanceIndex;
static float4 in_var_ATTRIBUTE0;
static float3 in_var_ATTRIBUTE1;
static float4 in_var_ATTRIBUTE2;
static float4 in_var_ATTRIBUTE3;
static float4 in_var_ATTRIBUTE4;
static float4 out_var_TEXCOORD0;
static float4 out_var_TEXCOORD1;
static float4 out_var_TEXCOORD2;
static float3 out_var_TEXCOORD3;
static float3 out_var_TEXCOORD4;
static float3 out_var_TEXCOORD5;
static uint out_var_EYE_INDEX;

struct SPIRV_Cross_Input
{
    float4 in_var_ATTRIBUTE0 : ATTRIBUTE0;
    float3 in_var_ATTRIBUTE1 : ATTRIBUTE1;
    float4 in_var_ATTRIBUTE2 : ATTRIBUTE2;
    float4 in_var_ATTRIBUTE3 : ATTRIBUTE3;
    float4 in_var_ATTRIBUTE4 : ATTRIBUTE4;
    uint gl_InstanceIndex : SV_InstanceID;
};

struct SPIRV_Cross_Output
{
    float4 out_var_TEXCOORD0 : TEXCOORD0;
    float4 out_var_TEXCOORD1 : TEXCOORD1;
    float4 out_var_TEXCOORD2 : TEXCOORD2;
    float3 out_var_TEXCOORD3 : TEXCOORD3;
    float3 out_var_TEXCOORD4 : TEXCOORD4;
    float3 out_var_TEXCOORD5 : TEXCOORD5;
    nointerpolation uint out_var_EYE_INDEX : EYE_INDEX;
    precise float4 gl_Position : SV_Position;
    float gl_ClipDistance0 : SV_ClipDistance0;
};

static ViewState _95 = { float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), 0.0f.xxxx, 0.0f.xxxx, 0.0f.xx, 0.0f.xx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0, 0.0f, 0.0f, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xx, 0.0f, 0.0f, 0.0f, 0.0f.xxx, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0u, 0u, 0u, 0u, 0u, 0.0f, 0.0f, 0.0f.xxxx, 0.0f.xxx, { 0.0f.xxxx, 0.0f.xxxx }, { 0.0f.xxxx, 0.0f.xxxx }, 0.0f.xxxx, 0.0f.xxxx, 0u, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, { 0.0f.xxxx, 0.0f.xxxx }, { 0.0f.xxxx, 0.0f.xxxx }, { 0.0f.xxxx, 0.0f.xxxx }, { 0.0f.xxxx, 0.0f.xxxx }, { 0.0f.xxxx, 0.0f.xxxx }, 0.0f.xxxx, 0.0f.xxx, 0.0f.xxxx, float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), 0.0f.xxxx, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f.xxxx, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f.xxx, 0.0f, 0.0f, 0.0f, 0.0f.xxxx, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f.xxxx, { 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx }, 0.0f, 0.0f, 0.0f, 0.0f, 0u, 0.0f, 0.0f.xxx, 0, { 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx }, { 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx }, { 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx }, { 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx }, 0.0f, 0.0f, 0, 0.0f.xxx, 0.0f.xxx, 0.0f, 0.0f, 0.0f, 0u, 0.0f, 0.0f, 0.0f, int2(0, 0), 0.0f, 0.0f.xxx, 0.0f.xxx, 0.0f.xx, 0.0f, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, 0.0f, 0.0f.xxx, 0.0f, 0.0f, 0.0f, { 0.0f.xxxx, 0.0f.xxxx }, 0.0f, 0u, 0u, 0u, 0u, 0u, 0.0f.xxxx, 0.0f.xx, 0.0f.xxxx, 0.0f, 0, 0.0f, 0.0f.xxxx, 0u, 0u, 0u, 0.0f, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxx, 0.0f, 0, 0, 0, 0, { int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0) }, 0u, 0u, { float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), 0.0f.xxx, 0 }, { float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), 0.0f.xxx }, { float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), 0.0f.xxx }, { float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), 0.0f.xxx }, { 0.0f.xxx, 0.0f.xxx }, { 0.0f.xxx, 0.0f.xxx }, { 0.0f.xxx, 0.0f.xxx }, { 0.0f.xxx, 0.0f.xxx }, { 0.0f.xxx, 0.0f.xxx }, { 0.0f.xxx, 0.0f.xxx } };

void vert_main()
{
    bool _113 = InstancedView_InstancedView_StereoPassIndex > 0;
    uint _115 = _113 ? (uint(gl_InstanceIndex) & 1u) : 0u;
    ViewState _154 = { float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), 0.0f.xxxx, 0.0f.xxxx, 0.0f.xx, 0.0f.xx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0, 0.0f, 0.0f, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xx, 0.0f, 0.0f, 0.0f, 0.0f.xxx, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0u, 0u, 0u, 0u, 0u, 0.0f, 0.0f, 0.0f.xxxx, 0.0f.xxx, { 0.0f.xxxx, 0.0f.xxxx }, { 0.0f.xxxx, 0.0f.xxxx }, 0.0f.xxxx, 0.0f.xxxx, 0u, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, { 0.0f.xxxx, 0.0f.xxxx }, { 0.0f.xxxx, 0.0f.xxxx }, { 0.0f.xxxx, 0.0f.xxxx }, { 0.0f.xxxx, 0.0f.xxxx }, { 0.0f.xxxx, 0.0f.xxxx }, 0.0f.xxxx, 0.0f.xxx, 0.0f.xxxx, float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), 0.0f.xxxx, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f.xxxx, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f.xxx, 0.0f, 0.0f, 0.0f, 0.0f.xxxx, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f.xxxx, { 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx }, 0.0f, 0.0f, 0.0f, 0.0f, 0u, 0.0f, 0.0f.xxx, 0, { 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx }, { 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx }, { 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx }, { 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx }, 0.0f, 0.0f, 0, 0.0f.xxx, 0.0f.xxx, 0.0f, 0.0f, 0.0f, 0u, 0.0f, 0.0f, 0.0f, int2(0, 0), 0.0f, 0.0f.xxx, 0.0f.xxx, 0.0f.xx, 0.0f, 0.0f.xxx, 0.0f.xxx, 0.0f.xxx, 0.0f, 0.0f.xxx, 0.0f, 0.0f, 0.0f, { 0.0f.xxxx, 0.0f.xxxx }, 0.0f, 0u, 0u, 0u, 0u, 0u, 0.0f.xxxx, 0.0f.xx, 0.0f.xxxx, 0.0f, 0, 0.0f, 0.0f.xxxx, 0u, 0u, 0u, 0.0f, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxx, 0.0f, 0, 0, 0, 0, { int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0) }, 0u, 0u, { float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), 0.0f.xxx, 0 }, { float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), 0.0f.xxx }, { float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), 0.0f.xxx }, { float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx), 0.0f.xxx }, { 0.0f.xxx, 0.0f.xxx }, { 0.0f.xxx, 0.0f.xxx }, { 0.0f.xxx, 0.0f.xxx }, { 0.0f.xxx, 0.0f.xxx }, { 0.0f.xxx, 0.0f.xxx }, { 0.0f.xxx, 0.0f.xxx } };
    do
    {
        if (_115 == 0u)
        {
            ViewState _140 = _95;
            _140.TranslatedWorldToClip = View_View_TranslatedWorldToClip;
            ViewState _145 = _140;
            _145.TranslatedWorldCameraOrigin = View_View_TranslatedWorldCameraOrigin;
            ViewState _150 = _145;
            _150.HMDEyePaddingOffset = View_View_HMDEyePaddingOffset;
            FLWCVector3 _152 = { -View_View_ViewTilePosition, View_View_RelativePreViewTranslation };
            ViewState _153 = _150;
            _153.PreViewTranslation = _152;
            _154 = _153;
            break;
        }
        else
        {
            ViewState _124 = _95;
            _124.TranslatedWorldToClip = InstancedView_InstancedView_TranslatedWorldToClip;
            ViewState _129 = _124;
            _129.TranslatedWorldCameraOrigin = InstancedView_InstancedView_TranslatedWorldCameraOrigin;
            ViewState _134 = _129;
            _134.HMDEyePaddingOffset = InstancedView_InstancedView_HMDEyePaddingOffset;
            FLWCVector3 _136 = { -InstancedView_InstancedView_ViewTilePosition, InstancedView_InstancedView_RelativePreViewTranslation };
            ViewState _137 = _134;
            _137.PreViewTranslation = _136;
            _154 = _137;
            break;
        }
    } while(false);
    float3 _180 = float4(Primitive_Primitive_LocalToRelativeWorld[0].xyz, 0.0f).xyz;
    float3 _183 = float4(Primitive_Primitive_LocalToRelativeWorld[1].xyz, 0.0f).xyz;
    float3 _187 = float4(Primitive_Primitive_LocalToRelativeWorld[2].xyz, 0.0f).xyz;
    float3 _190 = float4(Primitive_Primitive_LocalToRelativeWorld[3].xyz, 1.0f).xyz;
    float3 _197 = (Primitive_Primitive_TilePosition + _154.PreViewTranslation.Tile) * 2097152.0f;
    float4 _202 = float4(_197 + (((((in_var_ATTRIBUTE0.xxx * _180) + (in_var_ATTRIBUTE0.yyy * _183)) + (in_var_ATTRIBUTE0.zzz * _187)) + _190) + _154.PreViewTranslation.Offset), 1.0f);
    float3 _219 = _202.xyz;
    float3 _220 = _154.TranslatedWorldCameraOrigin - _219;
    float3 _227 = _219 - float4(_197 + (((((in_var_ATTRIBUTE1.xxx * _180) + (in_var_ATTRIBUTE1.yyy * _183)) + (in_var_ATTRIBUTE1.zzz * _187)) + _190) + _154.PreViewTranslation.Offset), 1.0f).xyz;
    float3 _232 = _227 / sqrt(max(dot(_227, _227), 0.00999999977648258209228515625f)).xxx;
    float _238 = cos(in_var_ATTRIBUTE2.z);
    float _241 = sin(in_var_ATTRIBUTE2.z);
    float4 _243 = (BeamTrailVF_BeamTrailVF_CameraUp * ((-1.0f) * _238)) + (BeamTrailVF_BeamTrailVF_CameraRight * _241);
    float4 _246 = (BeamTrailVF_BeamTrailVF_CameraUp * _241) + (BeamTrailVF_BeamTrailVF_CameraRight * _238);
    float3 _247 = cross(_220 / sqrt(max(dot(_220, _220), 0.00999999977648258209228515625f)).xxx, _232);
    float4 _256 = float4(_247 / sqrt(max(dot(_247, _247), 0.00999999977648258209228515625f)).xxx, 0.0f);
    float4 _260 = float4(_232, 0.0f);
    bool4 _264 = (BeamTrailVF_BeamTrailVF_ScreenAlignment.x > 1.5f).xxxx;
    float3 _267 = float4(_264.x ? _256.x : _243.x, _264.y ? _256.y : _243.y, _264.z ? _256.z : _243.z, _264.w ? _256.w : _243.w).xyz;
    float3 _268 = float4(_264.x ? _260.x : _246.x, _264.y ? _260.y : _246.y, _264.z ? _260.z : _246.z, _264.w ? _260.w : _246.w).xyz;
    float2 _104[4] = _100;
    float3x3 _274 = mul(float3x3(_267, _268, -normalize(cross(_267, _268))), float3x3(_180, _183, _187));
    for (int _276 = 0; _276 < 4; )
    {
        _104[_276] = in_var_ATTRIBUTE3.xy;
        _276++;
        continue;
    }
    float4 _290 = mul(float4(_202.x, _202.y, _202.z, _202.w), _154.TranslatedWorldToClip);
    float _308 = 0.0f;
    float4 _309 = 0.0f.xxxx;
    [branch]
    if (_113)
    {
        float _297 = 0.5f * _154.HMDEyePaddingOffset;
        float4 _307 = _290;
        _307.x = (_290.x * _297) + ((_96[_115] * _290.w) * (1.0f - _297));
        _308 = dot(_290, _99[_115]);
        _309 = _307;
    }
    else
    {
        _308 = 0.0f;
        _309 = _290;
    }
    gl_Position = _309;
    out_var_TEXCOORD0 = in_var_ATTRIBUTE4;
    out_var_TEXCOORD1 = float4(_104[0].x, _104[0].y, _104[1].x, _104[1].y);
    out_var_TEXCOORD2 = float4(_104[2].x, _104[2].y, _104[3].x, _104[3].y);
    out_var_TEXCOORD3 = _274[0];
    out_var_TEXCOORD4 = _274[1];
    out_var_TEXCOORD5 = _274[2];
    out_var_EYE_INDEX = _115;
    gl_ClipDistance[0u] = _308;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_InstanceIndex = int(stage_input.gl_InstanceIndex);
    in_var_ATTRIBUTE0 = stage_input.in_var_ATTRIBUTE0;
    in_var_ATTRIBUTE1 = stage_input.in_var_ATTRIBUTE1;
    in_var_ATTRIBUTE2 = stage_input.in_var_ATTRIBUTE2;
    in_var_ATTRIBUTE3 = stage_input.in_var_ATTRIBUTE3;
    in_var_ATTRIBUTE4 = stage_input.in_var_ATTRIBUTE4;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_ClipDistance0.x = gl_ClipDistance[0];
    stage_output.out_var_TEXCOORD0 = out_var_TEXCOORD0;
    stage_output.out_var_TEXCOORD1 = out_var_TEXCOORD1;
    stage_output.out_var_TEXCOORD2 = out_var_TEXCOORD2;
    stage_output.out_var_TEXCOORD3 = out_var_TEXCOORD3;
    stage_output.out_var_TEXCOORD4 = out_var_TEXCOORD4;
    stage_output.out_var_TEXCOORD5 = out_var_TEXCOORD5;
    stage_output.out_var_EYE_INDEX = out_var_EYE_INDEX;
    return stage_output;
}
