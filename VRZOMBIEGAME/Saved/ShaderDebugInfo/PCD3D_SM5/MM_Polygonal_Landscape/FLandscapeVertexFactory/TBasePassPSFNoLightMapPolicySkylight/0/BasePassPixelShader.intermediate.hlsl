cbuffer View
{
    row_major float4x4 View_View_RelativeWorldToClip : packoffset(c4);
    row_major float4x4 View_View_ViewToClip : packoffset(c28);
    row_major float4x4 View_View_SVPositionToTranslatedWorld : packoffset(c44);
    float3 View_View_ViewTilePosition : packoffset(c60);
    float3 View_View_MatrixTilePosition : packoffset(c61);
    float3 View_View_ViewForward : packoffset(c62);
    float4 View_View_InvDeviceZToWorldZTransform : packoffset(c67);
    float4 View_View_ScreenPositionScaleBias : packoffset(c68);
    float3 View_View_RelativePreViewTranslation : packoffset(c72);
    float4 View_View_ViewRectMin : packoffset(c124);
    float4 View_View_ViewSizeAndInvSize : packoffset(c125);
    float4 View_View_LightProbeSizeRatioAndInvSizeRatio : packoffset(c126);
    float4 View_View_BufferSizeAndInvSize : packoffset(c127);
    int View_View_NumSceneColorMSAASamples : packoffset(c130);
    float View_View_PreExposure : packoffset(c130.y);
    float4 View_View_DiffuseOverrideParameter : packoffset(c131);
    float4 View_View_SpecularOverrideParameter : packoffset(c132);
    float4 View_View_NormalOverrideParameter : packoffset(c133);
    float2 View_View_RoughnessOverrideParameter : packoffset(c134);
    float View_View_OutOfBoundsMask : packoffset(c135);
    float View_View_MaterialTextureMipBias : packoffset(c138);
    float View_View_UnlitViewmodeMask : packoffset(c140);
    float3 View_View_PrecomputedIndirectSpecularColorScale : packoffset(c155);
    float View_View_RenderingReflectionCaptureMask : packoffset(c178.w);
    float4 View_View_SkyLightColor : packoffset(c182);
    float View_View_ReflectionCubemapMaxMip : packoffset(c190.z);
    float View_View_IndirectCapsuleSelfShadowingIntensity : packoffset(c191.y);
    float3 View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight : packoffset(c192);
    float3 View_View_VolumetricFogInvGridSize : packoffset(c223);
    float3 View_View_VolumetricFogGridZParams : packoffset(c224);
    float3 View_View_VolumetricLightmapWorldToUVScale : packoffset(c226);
    float3 View_View_VolumetricLightmapWorldToUVAdd : packoffset(c227);
    float3 View_View_VolumetricLightmapIndirectionTextureSize : packoffset(c228);
    float View_View_VolumetricLightmapBrickSize : packoffset(c228.w);
    float3 View_View_VolumetricLightmapBrickTexelSize : packoffset(c229);
    float View_View_MinRoughness : packoffset(c238.z);
};

ByteAddressBuffer View_PrimitiveSceneData;
ByteAddressBuffer View_SkyIrradianceEnvironmentMap;
cbuffer InstancedView
{
    row_major float4x4 InstancedView_InstancedView_RelativeWorldToClip : packoffset(c4);
    row_major float4x4 InstancedView_InstancedView_ViewToClip : packoffset(c28);
    row_major float4x4 InstancedView_InstancedView_SVPositionToTranslatedWorld : packoffset(c44);
    float3 InstancedView_InstancedView_ViewTilePosition : packoffset(c60);
    float3 InstancedView_InstancedView_MatrixTilePosition : packoffset(c61);
    float3 InstancedView_InstancedView_ViewForward : packoffset(c62);
    float4 InstancedView_InstancedView_ScreenPositionScaleBias : packoffset(c68);
    float3 InstancedView_InstancedView_RelativePreViewTranslation : packoffset(c72);
    float4 InstancedView_InstancedView_ViewRectMin : packoffset(c124);
    float4 InstancedView_InstancedView_ViewSizeAndInvSize : packoffset(c125);
    float4 InstancedView_InstancedView_NormalOverrideParameter : packoffset(c133);
    float2 InstancedView_InstancedView_RoughnessOverrideParameter : packoffset(c134);
    float4 InstancedView_InstancedView_SkyLightColor : packoffset(c182);
};

cbuffer ReflectionCapture
{
    float4 ReflectionCapture_ReflectionCapture_CaptureProperties[341] : packoffset(c682);
};

cbuffer OpaqueBasePass
{
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights : packoffset(c0);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight : packoffset(c0.z);
    int3 OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize : packoffset(c1);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift : packoffset(c2);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams : packoffset(c3);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection : packoffset(c4);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor : packoffset(c5);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask : packoffset(c6);
    float2 OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD : packoffset(c6.z);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag : packoffset(c36);
    uint OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights : packoffset(c41);
    uint OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_HasDirectionalLight : packoffset(c41.z);
    int3 OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize : packoffset(c42);
    uint OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridPixelSizeShift : packoffset(c43);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridZParams : packoffset(c44);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDirection : packoffset(c45);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightColor : packoffset(c46);
    uint OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask : packoffset(c47);
    float2 OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD : packoffset(c47.z);
    float4 OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters : packoffset(c82);
    float OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog : packoffset(c116.w);
    uint OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight : packoffset(c129);
    int OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask : packoffset(c132);
};

cbuffer LandscapeParameters
{
    row_major float4x4 LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling : packoffset(c9);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[16] : packoffset(c0);
};

SamplerState View_MaterialTextureBilinearWrapedSampler;
Texture3D<uint4> View_VolumetricLightmapIndirectionTexture;
Texture3D<float4> View_DirectionalLightShadowingBrickTexture;
SamplerState View_SharedBilinearClampedSampler;
Buffer<float4> OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer;
Buffer<uint4> OpaqueBasePass_Shared_Forward_NumCulledLightsGrid;
Buffer<uint4> OpaqueBasePass_Shared_Forward_CulledLightDataGrid;
Buffer<float4> OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer;
Buffer<uint4> OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid;
Buffer<uint4> OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid;
TextureCube<float4> OpaqueBasePass_Shared_Reflection_SkyLightCubemap;
SamplerState OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler;
TextureCubeArray<float4> OpaqueBasePass_Shared_Reflection_ReflectionCubemap;
SamplerState OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler;
Texture3D<float4> OpaqueBasePass_Shared_Fog_IntegratedLightScattering;
Texture3D<float4> OpaqueBasePass_Shared_FogISR_IntegratedLightScattering;
Texture2D<float4> OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture;
Texture2D<float4> OpaqueBasePass_IndirectOcclusionTexture;
Texture2D<float4> OpaqueBasePass_ResolvedSceneDepthTexture;
Texture2D<float4> LandscapeParameters_NormalmapTexture;
SamplerState LandscapeParameters_NormalmapTextureSampler;
Texture2D<float4> Material_Texture2D_0;
Texture2D<float4> Material_Texture2D_1;
SamplerState Material_Texture2D_1Sampler;
Texture2D<float4> Material_Texture2D_2;
Texture2D<float4> Material_Texture2D_3;
SamplerState Material_Texture2D_3Sampler;

static float4 gl_FragCoord;
static float2 in_var_TEXCOORD0;
static float4 in_var_TEXCOORD1;
static uint in_var_PACKED_EYE_INDEX;
static uint in_var_PRIMITIVE_ID;
static float4 in_var_TEXCOORD7;
static float4 out_var_SV_Target0;

struct SPIRV_Cross_Input
{
    float2 in_var_TEXCOORD0 : TEXCOORD0;
    float4 in_var_TEXCOORD1 : TEXCOORD1;
    nointerpolation uint in_var_PACKED_EYE_INDEX : PACKED_EYE_INDEX;
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
    float4 in_var_TEXCOORD7 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
};

static float _220 = 0.0f;
static float3 _221 = 0.0f.xxx;

uint2 spvTextureSize(Texture2D<float4> Tex, uint Level, out uint Param)
{
    uint2 ret;
    Tex.GetDimensions(Level, ret.x, ret.y, Param);
    return ret;
}

uint spvPackHalf2x16(float2 value)
{
    uint2 Packed = f32tof16(value);
    return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value)
{
    return f16tof32(uint2(value & 0xffff, value >> 16));
}

void frag_main()
{
    bool _255 = false;
    float _252 = 1.0f / gl_FragCoord.w;
    float4x4 _315 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _316 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _317 = 0.0f.xxx;
    float4 _318 = 0.0f.xxxx;
    float4 _319 = 0.0f.xxxx;
    float4 _320 = 0.0f.xxxx;
    float4 _321 = 0.0f.xxxx;
    float2 _322 = 0.0f.xx;
    float4 _323 = 0.0f.xxxx;
    float4x4 _324 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _325 = 0.0f.xxx;
    float3 _326 = 0.0f.xxx;
    float3 _327 = 0.0f.xxx;
    do
    {
        _255 = in_var_PACKED_EYE_INDEX == 0u;
        if (_255)
        {
            _315 = View_View_ViewToClip;
            _316 = View_View_SVPositionToTranslatedWorld;
            _317 = View_View_ViewForward;
            _318 = View_View_ScreenPositionScaleBias;
            _319 = View_View_ViewRectMin;
            _320 = View_View_ViewSizeAndInvSize;
            _321 = View_View_NormalOverrideParameter;
            _322 = View_View_RoughnessOverrideParameter;
            _323 = View_View_SkyLightColor;
            _324 = View_View_RelativeWorldToClip;
            _325 = -View_View_MatrixTilePosition;
            _326 = -View_View_ViewTilePosition;
            _327 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _315 = InstancedView_InstancedView_ViewToClip;
            _316 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _317 = InstancedView_InstancedView_ViewForward;
            _318 = InstancedView_InstancedView_ScreenPositionScaleBias;
            _319 = InstancedView_InstancedView_ViewRectMin;
            _320 = InstancedView_InstancedView_ViewSizeAndInvSize;
            _321 = InstancedView_InstancedView_NormalOverrideParameter;
            _322 = InstancedView_InstancedView_RoughnessOverrideParameter;
            _323 = InstancedView_InstancedView_SkyLightColor;
            _324 = InstancedView_InstancedView_RelativeWorldToClip;
            _325 = -InstancedView_InstancedView_MatrixTilePosition;
            _326 = -InstancedView_InstancedView_ViewTilePosition;
            _327 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float4 _333 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _338 = (float2(_333.zw) * 2.0f.xx) - 1.0f.xx;
    float _342 = sqrt(max(1.0f - dot(_338, _338), 0.0f));
    float _343 = _338.x;
    float3 _345 = float3(_343, _338.y, _342);
    float3 _348 = normalize(float3(_342, 0.0f, -_343));
    float3x3 _360 = mul(float3x3(_348, cross(_345, _348), _345), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz));
    float2 _363 = gl_FragCoord.xy - _319.xy;
    float4 _371 = float4(((_363 * _320.zw) - 0.5f.xx) * float2(2.0f, -2.0f), _220, 1.0f) * _252;
    float4 _376 = mul(float4(gl_FragCoord.xyz, 1.0f), _316);
    float3 _380 = _376.xyz / _376.w.xxx;
    float3 _381 = -_326;
    float3 _382 = _380 - _327;
    float3 _391 = 0.0f.xxx;
    if (_315[3].w >= 1.0f)
    {
        _391 = -_317;
    }
    else
    {
        _391 = normalize(-_380);
    }
    float3 _392 = ddx(_381);
    float3 _394 = ddx(_382);
    float3 _396 = ddy(_381);
    float3 _398 = ddy(_382);
    float3 _401 = _360[2];
    float3 _407 = normalize((cross((_392 * 2097152.0f) + _394, (_396 * 2097152.0f) + _398) * _321.w) + (_401 * (1.0f - _321.w)));
    float3 _417 = Material_Material_PreshaderBuffer[2].w.xxx;
    float3 _418 = _381 * _417;
    float3 _419 = _382 * _417;
    float _426 = frac(_418.x * 2097152.0f) + _419.x;
    float _429 = frac(_418.z * 2097152.0f) + _419.z;
    float4 _434 = Material_Texture2D_0.Sample(View_MaterialTextureBilinearWrapedSampler, float2(_426, _429));
    float _439 = frac(_418.y * 2097152.0f) + _419.y;
    float4 _442 = Material_Texture2D_0.Sample(View_MaterialTextureBilinearWrapedSampler, float2(_439, _429));
    float4 _453 = Material_Texture2D_0.Sample(View_MaterialTextureBilinearWrapedSampler, float2(_426, _439));
    float4 _464 = Material_Texture2D_1.Sample(Material_Texture2D_1Sampler, in_var_TEXCOORD1.xy);
    float _472 = min(max(lerp(-1.0f, 1.0f, dot(_464, Material_Material_PreshaderBuffer[3])) + lerp(lerp(_434.xyz, _442.xyz, clamp(lerp(-1.0f, 2.0f, abs(_360[2].x)), 0.0f, 1.0f).xxx), _453.xyz, clamp(lerp(-1.0f, 2.0f, abs(_360[2].z)), 0.0f, 1.0f).xxx).y, 9.9999997473787516355514526367188e-05f), 1.0f);
    float _475 = dot(_464, Material_Material_PreshaderBuffer[4]);
    float4 _483 = Material_Texture2D_2.Sample(View_MaterialTextureBilinearWrapedSampler, in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[5].y.xx);
    float _491 = min(max(lerp(-1.0f, 1.0f, dot(_464, Material_Material_PreshaderBuffer[6])) + _483.y, 9.9999997473787516355514526367188e-05f), 1.0f);
    float _493 = 1.0f / ((_472 + _475) + _491);
    float4 _511 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[10].w.xx, View_View_MaterialTextureMipBias);
    float _512 = _511.x;
    float3 _542 = clamp(((lerp(Material_Material_PreshaderBuffer[8].xyz, Material_Material_PreshaderBuffer[10].xyz, clamp(clamp((((dot(_401, normalize(float3(0.0f, 0.0f, 1.0f))) * 0.5f) + 0.5f) * 23.0f) + (-20.5f), 0.0f, 1.0f) / clamp((_512 <= 0.0f) ? 0.0f : pow(_512, Material_Material_PreshaderBuffer[11].x), 0.0f, 1.0f), 0.0f, 1.0f).xxx) * (_493 * _472).xxx) + (Material_Material_PreshaderBuffer[10].xyz * (_493 * _475).xxx)) + (Material_Material_PreshaderBuffer[13].xyz * (_493 * _491).xxx), 0.0f.xxx, 1.0f.xxx);
    float _546 = (0.85000002384185791015625f * _322.y) + _322.x;
    uint _547 = in_var_PRIMITIVE_ID * 40u;
    uint _551 = asuint(asfloat(View_PrimitiveSceneData.Load4(_547 * 16 + 0)).x);
    float _560 = _371.w;
    float _611 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_547 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _579 = clamp((((_381 * 2097152.0f) + _382) * View_View_VolumetricLightmapWorldToUVScale) + View_View_VolumetricLightmapWorldToUVAdd, 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _590 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_579.x), int(_579.y), int(_579.z), 0).xyz, 0)));
        _611 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_590.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_579 / _590.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _611 = 1.0f;
    }
    float4 _612 = float4(_611, 1.0f, 1.0f, 1.0f);
    float3 _619 = (_542 * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _626 = (0.039999999105930328369140625f.xxx * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _629 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _634 = 0.0f.xxx;
    if (_629)
    {
        _634 = _619 + (_626 * 0.449999988079071044921875f);
    }
    else
    {
        _634 = _619;
    }
    bool3 _635 = _629.xxx;
    float3 _636 = float3(_635.x ? 0.0f.xxx.x : _626.x, _635.y ? 0.0f.xxx.y : _626.y, _635.z ? 0.0f.xxx.z : _626.z);
    float3 _686 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _642 = _407.x;
        float _643 = _407.y;
        float4 _645 = float4(_642, _643, _407.z, 1.0f);
        float3 _649 = _221;
        _649.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _645);
        float3 _653 = _649;
        _653.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _645);
        float3 _657 = _653;
        _657.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _645);
        float4 _660 = _645.xyzz * _645.yzzx;
        float3 _664 = _221;
        _664.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _660);
        float3 _668 = _664;
        _668.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _660);
        float3 _672 = _668;
        _672.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _660);
        _686 = (max(0.0f.xxx, (_657 + _672) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * ((_642 * _642) - (_643 * _643)))) * _323.xyz) * 1.0f;
    }
    else
    {
        _686 = 0.0f.xxx;
    }
    float2 _693 = ((_371.xy / _560.xx) * _318.xy) + _318.wz;
    float2 _812 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _704 = int2(trunc(_693 * View_View_BufferSizeAndInvSize.xy));
        int _705 = _704.x;
        int _706 = _704.y;
        float4 _710 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_705, _706, 0).xy, 0));
        float _711 = _710.x;
        float2 _811 = 0.0f.xx;
        if ((abs((((_711 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_711 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _560) / _560) > 0.00999999977648258209228515625f)
        {
            float2 _735 = _693 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _739 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_705 - 1, _706, 0).xy, 0));
            float _740 = _739.x;
            float _748 = abs((((_740 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_740 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _560);
            bool _749 = _748 < 100000000.0f;
            bool2 _750 = _749.xx;
            float2 _751 = float2(_750.x ? _735.x : _693.x, _750.y ? _735.y : _693.y);
            float _752 = _749 ? _748 : 100000000.0f;
            float2 _755 = _693 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _759 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_705, _706 + 1, 0).xy, 0));
            float _760 = _759.x;
            float _768 = abs((((_760 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_760 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _560);
            bool _769 = _768 < _752;
            bool2 _770 = _769.xx;
            float2 _771 = float2(_770.x ? _755.x : _751.x, _770.y ? _755.y : _751.y);
            float _772 = _769 ? _768 : _752;
            float2 _774 = _693 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _778 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_705 + 1, _706, 0).xy, 0));
            float _779 = _778.x;
            float _787 = abs((((_779 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_779 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _560);
            bool _788 = _787 < _772;
            bool2 _789 = _788.xx;
            float2 _790 = float2(_789.x ? _774.x : _771.x, _789.y ? _774.y : _771.y);
            float2 _794 = _693 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _798 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_705, _706 - 1, 0).xy, 0));
            float _799 = _798.x;
            bool2 _809 = (abs((((_799 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_799 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _560) < (_788 ? _787 : _772)).xx;
            _811 = float2(_809.x ? _794.x : _790.x, _809.y ? _794.y : _790.y);
        }
        else
        {
            _811 = _693;
        }
        _812 = _811;
    }
    else
    {
        _812 = _693;
    }
    uint _818_dummy_parameter;
    uint2 _818 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _818_dummy_parameter);
    float _836 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_812 * float2(float(_818.x), float(_818.y)))), 0).xy, 0)).x, ((uint(((2.0f * float((_551 & 128u) != 0u)) + float((_551 & 256u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    uint _872 = 0u;
    float3 _873 = 0.0f.xxx;
    int3 _874 = int3(0, 0, 0);
    [branch]
    if (_255)
    {
        _872 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift;
        _873 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams;
        _874 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _872 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
        _873 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridZParams;
        _874 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint2 _890 = uint2(_363 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (_872.xx & uint2(31u, 31u));
    int3 _900 = int3(0, 0, 0);
    [branch]
    if (_255)
    {
        _900 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _900 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint _908 = (((min(uint(max(0.0f, log2((_252 * _873.x) + _873.y) * _873.z)), uint(_874.z - 1)) * uint(_900.y)) + _890.y) * uint(_900.x)) + _890.x;
    float4 _926 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _926 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_812 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _926 = 1.0f.xxxx;
    }
    float4 _927 = _926 * _926;
    uint _930 = asuint(asfloat(View_PrimitiveSceneData.Load4(_547 * 16 + 0)).x);
    uint _943 = (uint((_930 & 1024u) != 0u) | (uint((_930 & 2048u) != 0u) << 1u)) | (uint((_930 & 4096u) != 0u) << 2u);
    uint _967 = 0u;
    uint _968 = 0u;
    float2 _969 = 0.0f.xx;
    float3 _970 = 0.0f.xxx;
    float3 _971 = 0.0f.xxx;
    [branch]
    if (_255)
    {
        _967 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight;
        _968 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
        _969 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
        _970 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor;
        _971 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection;
    }
    else
    {
        _967 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_HasDirectionalLight;
        _968 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
        _969 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
        _970 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightColor;
        _971 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDirection;
    }
    float4 _1111 = 0.0f.xxxx;
    float4 _1112 = 0.0f.xxxx;
    [branch]
    if (_967 != 0u)
    {
        float4 _990 = float4(float((_968 & 1u) != 0u), float((_968 & 2u) != 0u), float((_968 & 4u) != 0u), float((_968 & 8u) != 0u));
        uint _991 = _968 >> 4u;
        float _1005 = dot(float4(float((_991 & 1u) != 0u), float((_991 & 2u) != 0u), float((_991 & 4u) != 0u), float((_991 & 8u) != 0u)), _927);
        bool _1007 = _969.y < 0.0f;
        float _1008 = _1007 ? 1.0f : _1005;
        float _1025 = 0.0f;
        float _1026 = 0.0f;
        [branch]
        if (uint((_968 & 255u) != 0u) != 0u)
        {
            float _1019 = clamp((_560 * _969.x) + _969.y, 0.0f, 1.0f);
            float _1021 = lerp(_1007 ? _1005 : 1.0f, lerp(1.0f, dot(_612, _990), dot(_990, 1.0f.xxxx)), _1019 * _1019);
            _1025 = min(_1021, _1008) * _1008;
            _1026 = _1021 * _1008;
        }
        else
        {
            _1025 = 1.0f;
            _1026 = 1.0f;
        }
        float3 _1095 = 0.0f.xxx;
        float3 _1096 = 0.0f.xxx;
        [branch]
        if ((_1026 + _1025) > 0.0f)
        {
            float _1033 = max(_546, View_View_MinRoughness);
            float3 _1036 = _971 * rsqrt(dot(_971, _971));
            float _1037 = dot(_407, _1036);
            float _1038 = clamp(_1037, 0.0f, 1.0f);
            float _1039 = dot(_407, _391);
            float _1040 = dot(_391, _1036);
            float _1043 = rsqrt(2.0f + (2.0f * _1040));
            float _1046 = clamp((_1037 + _1039) * _1043, 0.0f, 1.0f);
            float _1052 = clamp(abs(_1039) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float3 _1054 = 1.0f.xxx * _1038;
            float _1056 = _1033 * _1033;
            float _1057 = _1056 * _1056;
            float _1061 = (((_1046 * _1057) - _1046) * _1046) + 1.0f;
            float _1065 = sqrt(_1057);
            float _1066 = 1.0f - _1065;
            float _1075 = 1.0f - clamp(_1043 + (_1043 * _1040), 0.0f, 1.0f);
            float _1076 = _1075 * _1075;
            float _1078 = (_1076 * _1076) * _1075;
            float3 _1092 = (_970 * 1.0f) * _1026;
            _1095 = ((_634 * 0.3183098733425140380859375f) * _1054) * _1092;
            _1096 = ((_1054 * (((clamp(50.0f * _636.y, 0.0f, 1.0f) * _1078).xxx + (_636 * (1.0f - _1078))) * ((_1057 / ((3.1415927410125732421875f * _1061) * _1061)) * (0.5f / ((_1038 * ((_1052 * _1066) + _1065)) + (_1052 * ((_1038 * _1066) + _1065))))))) * 1.0f) * _1092;
        }
        else
        {
            _1095 = 0.0f.xxx;
            _1096 = 0.0f.xxx;
        }
        float4 _1100 = float4(_1095, 0.0f);
        float4 _1104 = float4(_1096, 0.0f);
        bool4 _1108 = (((_968 >> 8u) & _943) != 0u).xxxx;
        _1111 = float4(_1108.x ? _1100.x : 0.0f.xxxx.x, _1108.y ? _1100.y : 0.0f.xxxx.y, _1108.z ? _1100.z : 0.0f.xxxx.z, _1108.w ? _1100.w : 0.0f.xxxx.w);
        _1112 = float4(_1108.x ? _1104.x : 0.0f.xxxx.x, _1108.y ? _1104.y : 0.0f.xxxx.y, _1108.z ? _1104.z : 0.0f.xxxx.z, _1108.w ? _1104.w : 0.0f.xxxx.w);
    }
    else
    {
        _1111 = 0.0f.xxxx;
        _1112 = 0.0f.xxxx;
    }
    uint _1136 = 0u;
    uint _1137 = 0u;
    [branch]
    if (_255)
    {
        uint _1126 = _908 * 2u;
        _1136 = min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1126).x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
        _1137 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1126 + 1u).x;
    }
    else
    {
        uint _1116 = _908 * 2u;
        _1136 = min(OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1116).x, OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights);
        _1137 = OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1116 + 1u).x;
    }
    uint _1143 = min(_1136, (_255 ? OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights : OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights));
    float4 _1145 = 0.0f.xxxx;
    float4 _1148 = 0.0f.xxxx;
    _1145 = _1111;
    _1148 = _1112;
    float4 _1146 = 0.0f.xxxx;
    float4 _1149 = 0.0f.xxxx;
    [loop]
    for (uint _1150 = 0u; _1150 < _1143; _1145 = _1146, _1148 = _1149, _1150++)
    {
        uint _1155 = _1137 + _1150;
        float4 _1187 = 0.0f.xxxx;
        float4 _1188 = 0.0f.xxxx;
        float4 _1189 = 0.0f.xxxx;
        float4 _1190 = 0.0f.xxxx;
        float4 _1191 = 0.0f.xxxx;
        [branch]
        if (_255)
        {
            uint _1176 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid.Load(_1155).x * 6u;
            _1187 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1176);
            _1188 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1176 + 1u);
            _1189 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1176 + 3u);
            _1190 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1176 + 2u);
            _1191 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1176 + 4u);
        }
        else
        {
            uint _1162 = OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid.Load(_1155).x * 6u;
            _1187 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1162);
            _1188 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1162 + 1u);
            _1189 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1162 + 3u);
            _1190 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1162 + 2u);
            _1191 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1162 + 4u);
        }
        float2 _1200 = spvUnpackHalf2x16(asuint(_1189.w));
        float _1201 = _1200.x;
        bool _1204 = _1188.w == 0.0f;
        uint _1208 = asuint(_1190.w);
        float4 _1224 = float4(float((_1208 & 1u) != 0u), float((_1208 & 2u) != 0u), float((_1208 & 4u) != 0u), float((_1208 & 8u) != 0u));
        uint _1225 = _1208 >> 4u;
        float3 _1240 = _1187.xyz - _380;
        float _1241 = dot(_1240, _1240);
        float _1258 = 0.0f;
        if (_1204)
        {
            float _1253 = _1241 * (_1187.w * _1187.w);
            float _1256 = clamp(1.0f - (_1253 * _1253), 0.0f, 1.0f);
            _1258 = _1256 * _1256;
        }
        else
        {
            float3 _1247 = _1240 * _1187.w;
            _1258 = pow(1.0f - clamp(dot(_1247, _1247), 0.0f, 1.0f), _1188.w);
        }
        float _1268 = 0.0f;
        if (_1189.x > (-2.0f))
        {
            float _1265 = clamp((dot(_1240 * rsqrt(_1241), _1190.xyz) - _1189.x) * _1189.y, 0.0f, 1.0f);
            _1268 = _1258 * (_1265 * _1265);
        }
        else
        {
            _1268 = _1258;
        }
        float3 _1588 = 0.0f.xxx;
        float3 _1589 = 0.0f.xxx;
        [branch]
        if (_1268 > 0.0f)
        {
            float _1279 = 0.0f;
            [branch]
            if (uint((_1208 & 255u) != 0u) != 0u)
            {
                _1279 = dot(float4(float((_1225 & 1u) != 0u), float((_1225 & 2u) != 0u), float((_1225 & 4u) != 0u), float((_1225 & 8u) != 0u)), _927) * lerp(1.0f, dot(_612, _1224), dot(_1224, 1.0f.xxxx));
            }
            else
            {
                _1279 = 1.0f;
            }
            float3 _1586 = 0.0f.xxx;
            float3 _1587 = 0.0f.xxx;
            [branch]
            if ((_1279 + _1279) > 0.0f)
            {
                float3 _1285 = _1191.xyz * (0.5f * _1201);
                float3 _1286 = _1240 - _1285;
                float3 _1287 = _1240 + _1285;
                float _1290 = max(_546, View_View_MinRoughness);
                bool _1291 = _1201 > 0.0f;
                float _1318 = 0.0f;
                float _1319 = 0.0f;
                float _1320 = 0.0f;
                [branch]
                if (_1291)
                {
                    float _1303 = rsqrt(dot(_1286, _1286));
                    float _1304 = rsqrt(dot(_1287, _1287));
                    float _1305 = _1303 * _1304;
                    float _1307 = dot(_1286, _1287) * _1305;
                    _1318 = _1307;
                    _1319 = 0.5f * ((dot(_407, _1286) * _1303) + (dot(_407, _1287) * _1304));
                    _1320 = _1305 / (((_1307 * 0.5f) + 0.5f) + _1305);
                }
                else
                {
                    float _1295 = dot(_1286, _1286);
                    _1318 = 1.0f;
                    _1319 = dot(_407, _1286 * rsqrt(_1295));
                    _1320 = 1.0f / (_1295 + 1.0f);
                }
                float _1338 = 0.0f;
                if (_1189.z > 0.0f)
                {
                    float _1327 = sqrt(clamp((_1189.z * _1189.z) * _1320, 0.0f, 1.0f));
                    float _1337 = 0.0f;
                    if (_1319 < _1327)
                    {
                        float _1333 = _1327 + max(_1319, -_1327);
                        _1337 = (_1333 * _1333) / (4.0f * _1327);
                    }
                    else
                    {
                        _1337 = _1319;
                    }
                    _1338 = _1337;
                }
                else
                {
                    _1338 = _1319;
                }
                float _1339 = clamp(_1338, 0.0f, 1.0f);
                float3 _1357 = 0.0f.xxx;
                if (_1291)
                {
                    float3 _1344 = reflect(-_391, _407);
                    float3 _1345 = _1287 - _1286;
                    float _1347 = dot(_1344, _1345);
                    _1357 = _1286 + (_1345 * clamp(dot(_1286, (_1344 * _1347) - _1345) / ((_1201 * _1201) - (_1347 * _1347)), 0.0f, 1.0f));
                }
                else
                {
                    _1357 = _1286;
                }
                float _1359 = rsqrt(dot(_1357, _1357));
                float3 _1360 = _1357 * _1359;
                float _1361 = max(_1290, View_View_MinRoughness);
                float _1366 = clamp((_1189.z * _1359) * (1.0f - (_1361 * _1361)), 0.0f, 1.0f);
                float _1368 = clamp(_1191.w * _1359, 0.0f, 1.0f);
                float _1376 = dot(_407, _1360);
                float _1377 = dot(_407, _391);
                float _1378 = dot(_391, _1360);
                float _1381 = rsqrt(2.0f + (2.0f * _1378));
                bool _1388 = _1366 > 0.0f;
                float _1483 = 0.0f;
                float _1484 = 0.0f;
                if (_1388)
                {
                    float _1393 = sqrt(1.0f - (_1366 * _1366));
                    float _1395 = (2.0f * _1376) * _1377;
                    float _1396 = _1395 - _1378;
                    float _1481 = 0.0f;
                    float _1482 = 0.0f;
                    if (_1396 >= _1393)
                    {
                        _1481 = 1.0f;
                        _1482 = abs(_1377);
                    }
                    else
                    {
                        float _1404 = _1366 * rsqrt(1.0f - (_1396 * _1396));
                        float _1407 = _1404 * (_1377 - (_1396 * _1376));
                        float _1413 = _1404 * ((((2.0f * _1377) * _1377) - 1.0f) - (_1396 * _1378));
                        float _1424 = _1404 * sqrt(clamp((((1.0f - (_1376 * _1376)) - (_1377 * _1377)) - (_1378 * _1378)) + (_1395 * _1378), 0.0f, 1.0f));
                        float _1426 = (_1424 * 2.0f) * _1377;
                        float _1427 = _1376 * _1393;
                        float _1428 = _1427 + _1377;
                        float _1429 = _1428 + _1407;
                        float _1430 = _1378 * _1393;
                        float _1432 = (_1430 + 1.0f) + _1413;
                        float _1433 = _1424 * _1432;
                        float _1434 = _1429 * _1432;
                        float _1435 = _1426 * _1429;
                        float _1440 = _1434 * (((-0.5f) * _1433) + ((0.25f * _1426) * _1429));
                        float _1454 = ((_1433 * _1433) + (_1435 * (_1435 - (2.0f * _1433)))) + (_1429 * ((_1428 * (_1432 * _1432)) + (_1434 * (((-0.5f) * (_1432 + _1430)) - 0.5f))));
                        float _1459 = (2.0f * _1440) / ((_1454 * _1454) + (_1440 * _1440));
                        float _1460 = _1459 * _1454;
                        float _1462 = 1.0f - (_1459 * _1440);
                        float _1470 = _1430 + ((_1462 * _1413) + (_1460 * _1426));
                        float _1473 = rsqrt(2.0f + (2.0f * _1470));
                        _1481 = clamp(((_1427 + ((_1462 * _1407) + (_1460 * _1424))) + _1377) * _1473, 0.0f, 1.0f);
                        _1482 = clamp(_1473 + (_1473 * _1470), 0.0f, 1.0f);
                    }
                    _1483 = _1481;
                    _1484 = _1482;
                }
                else
                {
                    _1483 = clamp((_1376 + _1377) * _1381, 0.0f, 1.0f);
                    _1484 = clamp(_1381 + (_1381 * _1378), 0.0f, 1.0f);
                }
                float _1487 = clamp(abs(_1377) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1490 = 1.0f.xxx * ((_1204 ? _1320 : 1.0f) * _1339);
                float3 _1580 = 0.0f.xxx;
                if (((0u | (asuint(clamp(1.0f - (max(_1201, _1189.z) * 0.0500000007450580596923828125f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1580 = 0.0f.xxx;
                }
                else
                {
                    float _1497 = _1290 * _1290;
                    float _1498 = _1497 * _1497;
                    float _1508 = 0.0f;
                    if (_1368 > 0.0f)
                    {
                        _1508 = clamp(_1498 + ((_1368 * _1368) / ((_1484 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1508 = _1498;
                    }
                    float _1523 = 0.0f;
                    float _1524 = 0.0f;
                    if (_1388)
                    {
                        float _1521 = _1508 + (((0.25f * _1366) * ((3.0f * asfloat(532487669 + (asint(_1508) >> 1))) + _1366)) / (_1484 + 0.001000000047497451305389404296875f));
                        _1523 = _1508 / _1521;
                        _1524 = _1521;
                    }
                    else
                    {
                        _1523 = 1.0f;
                        _1524 = _1508;
                    }
                    float _1546 = 0.0f;
                    if (_1318 < 1.0f)
                    {
                        float _1531 = sqrt((1.00010001659393310546875f - _1318) / (1.0f + _1318));
                        _1546 = _1523 * sqrt(_1524 / (_1524 + (((0.25f * _1531) * ((3.0f * asfloat(532487669 + (asint(_1524) >> 1))) + _1531)) / (_1484 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _1546 = _1523;
                    }
                    float _1550 = (((_1483 * _1508) - _1483) * _1483) + 1.0f;
                    float _1555 = sqrt(_1508);
                    float _1556 = 1.0f - _1555;
                    float _1565 = 1.0f - _1484;
                    float _1566 = _1565 * _1565;
                    float _1568 = (_1566 * _1566) * _1565;
                    _1580 = _1490 * (((clamp(50.0f * _636.y, 0.0f, 1.0f) * _1568).xxx + (_636 * (1.0f - _1568))) * (((_1508 / ((3.1415927410125732421875f * _1550) * _1550)) * _1546) * (0.5f / ((_1339 * ((_1487 * _1556) + _1555)) + (_1487 * ((_1339 * _1556) + _1555))))));
                }
                float3 _1583 = (_1188.xyz * _1268) * _1279;
                _1586 = ((_634 * 0.3183098733425140380859375f) * _1490) * _1583;
                _1587 = (_1580 * 1.0f) * _1583;
            }
            else
            {
                _1586 = 0.0f.xxx;
                _1587 = 0.0f.xxx;
            }
            _1588 = _1586;
            _1589 = _1587;
        }
        else
        {
            _1588 = 0.0f.xxx;
            _1589 = 0.0f.xxx;
        }
        [flatten]
        if (((_1208 >> 8u) & _943) != 0u)
        {
            _1146 = _1145 + float4(_1588, 0.0f);
            _1149 = _1148 + float4(_1589, 0.0f);
        }
        else
        {
            _1146 = _1145;
            _1149 = _1148;
        }
    }
    bool4 _1608 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1617 = int(asuint(asfloat(View_PrimitiveSceneData.Load4(_547 * 16 + 0)).w));
    float3 _1621 = (_407 * (2.0f * dot(_391, _407))) - _391;
    float _1629 = 1.0f - (1.2000000476837158203125f * log2(max(_546, 0.001000000047497451305389404296875f)));
    float4 _1643 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1621, ReflectionCapture_ReflectionCapture_CaptureProperties[_1617].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1629);
    float _1647 = 1.0f - _1643.w;
    float4 _1651 = float4(_1643.xyz * ReflectionCapture_ReflectionCapture_CaptureProperties[_1617].x, _1647);
    float3 _1655 = _1651.xyz * View_View_PrecomputedIndirectSpecularColorScale;
    float4 _1656 = float4(_1655.x, _1655.y, _1655.z, _1651.w);
    float4 _1691 = 0.0f.xxxx;
    float3 _1692 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        float3 _1675 = OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1621, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1629).xyz * View_View_SkyLightColor.xyz;
        float4 _1689 = 0.0f.xxxx;
        float3 _1690 = 0.0f.xxx;
        [flatten]
        if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.z < 1.0f) && true)
        {
            float3 _1687 = _1655.xyz + ((_1675 * _1647) * 1.0f);
            _1689 = float4(_1687.x, _1687.y, _1687.z, _1651.w);
            _1690 = 0.0f.xxx;
        }
        else
        {
            _1689 = _1656;
            _1690 = _1675 * 1.0f;
        }
        _1691 = _1689;
        _1692 = _1690;
    }
    else
    {
        _1691 = _1656;
        _1692 = 0.0f.xxx;
    }
    float4 _1713 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _546) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1714 = _1713.x;
    float2 _1724 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_1714 * _1714, exp2((-9.27999973297119140625f) * clamp(dot(_407, _391), 0.0f, 1.0f))) * _1714) + _1713.y)) + _1713.zw;
    bool _1752 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _1820 = 0.0f.xxxx;
    if (_1752)
    {
        float4 _1770 = mul(((float4(_381, 0.0f) + float4(_325, 0.0f)) * 2097152.0f) + float4(_382, 1.0f), _324);
        float _1771 = _1770.w;
        float3 _1793 = float3(((_1770.xy / _1771.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_1771 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _1808 = 0.0f.xxxx;
        if (_1752)
        {
            float4 _1807 = 0.0f.xxxx;
            if (_255)
            {
                _1807 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1793, 0.0f);
            }
            else
            {
                _1807 = OpaqueBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1793, 0.0f);
            }
            _1808 = _1807;
        }
        else
        {
            _1808 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _1820 = float4(_1808.xyz + (in_var_TEXCOORD7.xyz * _1808.w), _1808.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _1820 = in_var_TEXCOORD7;
    }
    float3 _1827 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[1].yzw, Material_Material_PreshaderBuffer[1].x.xxx), 0.0f.xxx);
    float3 _1884 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _1858 = abs(((_381 - asfloat(View_PrimitiveSceneData.Load4((_547 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_382 - asfloat(View_PrimitiveSceneData.Load4((_547 + 19u) * 16 + 0)).xyz));
        float3 _1859 = float3(asfloat(View_PrimitiveSceneData.Load4((_547 + 18u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_547 + 25u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_547 + 26u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _1883 = 0.0f.xxx;
        if (any(bool3(_1858.x > _1859.x, _1858.y > _1859.y, _1858.z > _1859.z)))
        {
            float3 _1879 = frac(frac(((_381.x + _381.y) + _381.z) * 2420.113525390625f) + (((_382.x + _382.y) + _382.z) * 0.001154000055976212024688720703125f)).xxx;
            _1883 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_1879.x > 0.5f.xxx.x, _1879.y > 0.5f.xxx.y, _1879.z > 0.5f.xxx.z)));
        }
        else
        {
            _1883 = _1827;
        }
        _1884 = _1883;
    }
    else
    {
        _1884 = _1827;
    }
    float4 _1895 = float4((((lerp((float4(_1608.x ? 0.0f.xxxx.x : _1145.x, _1608.y ? 0.0f.xxxx.y : _1145.y, _1608.z ? 0.0f.xxxx.z : _1145.z, _1608.w ? 0.0f.xxxx.w : _1145.w).xyz + float4(_1608.x ? 0.0f.xxxx.x : _1148.x, _1608.y ? 0.0f.xxxx.y : _1148.y, _1608.z ? 0.0f.xxxx.z : _1148.z, _1608.w ? 0.0f.xxxx.w : _1148.w).xyz) + (((((_1691.xyz * lerp(1.0f, min(0.0f, View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp((_546 * View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x) + View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y, 0.0f, 1.0f)))).xyz + (_1692 * _1691.w)).xyz * ((_636 * _1724.x) + (clamp(50.0f * _636.y, 0.0f, 1.0f) * _1724.y).xxx)) * _836) * max(1.0f.xxx, ((((((_636 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_636 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_636 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)), _634 + (_636 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + (((_686 * _836) * _634) * max(1.0f.xxx, ((((((_542 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_542 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_542 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f))) + _1884) * _1820.w) + _1820.xyz, 0.0f);
    _1895.w = 0.0f;
    out_var_SV_Target0 = _1895 * View_View_PreExposure;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD1 = stage_input.in_var_TEXCOORD1;
    in_var_PACKED_EYE_INDEX = stage_input.in_var_PACKED_EYE_INDEX;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
    in_var_TEXCOORD7 = stage_input.in_var_TEXCOORD7;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    return stage_output;
}
