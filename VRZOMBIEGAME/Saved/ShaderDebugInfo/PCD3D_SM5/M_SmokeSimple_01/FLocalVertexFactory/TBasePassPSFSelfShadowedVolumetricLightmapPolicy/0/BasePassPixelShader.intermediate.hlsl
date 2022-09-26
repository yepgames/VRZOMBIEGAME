cbuffer View
{
    row_major float4x4 View_View_RelativeWorldToClip : packoffset(c4);
    row_major float4x4 View_View_ViewToClip : packoffset(c28);
    row_major float4x4 View_View_SVPositionToTranslatedWorld : packoffset(c44);
    float3 View_View_ViewTilePosition : packoffset(c60);
    float3 View_View_MatrixTilePosition : packoffset(c61);
    float3 View_View_ViewForward : packoffset(c62);
    float3 View_View_RelativePreViewTranslation : packoffset(c72);
    float4 View_View_ViewRectMin : packoffset(c124);
    float4 View_View_LightProbeSizeRatioAndInvSizeRatio : packoffset(c126);
    float View_View_PreExposure : packoffset(c130.y);
    float4 View_View_DiffuseOverrideParameter : packoffset(c131);
    float4 View_View_SpecularOverrideParameter : packoffset(c132);
    float4 View_View_NormalOverrideParameter : packoffset(c133);
    float2 View_View_RoughnessOverrideParameter : packoffset(c134);
    float View_View_OutOfBoundsMask : packoffset(c135);
    float View_View_MaterialTextureMipBias : packoffset(c138);
    float View_View_UnlitViewmodeMask : packoffset(c140);
    float3 View_View_PrecomputedIndirectLightingColorScale : packoffset(c154);
    float3 View_View_PrecomputedIndirectSpecularColorScale : packoffset(c155);
    float View_View_RenderingReflectionCaptureMask : packoffset(c178.w);
    float View_View_ReflectionCubemapMaxMip : packoffset(c190.z);
    float3 View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight : packoffset(c192);
    float3 View_View_VolumetricFogInvGridSize : packoffset(c223);
    float3 View_View_VolumetricFogGridZParams : packoffset(c224);
    float3 View_View_VolumetricLightmapWorldToUVScale : packoffset(c226);
    float3 View_View_VolumetricLightmapWorldToUVAdd : packoffset(c227);
    float3 View_View_VolumetricLightmapIndirectionTextureSize : packoffset(c228);
    float View_View_VolumetricLightmapBrickSize : packoffset(c228.w);
    float3 View_View_VolumetricLightmapBrickTexelSize : packoffset(c229);
};

ByteAddressBuffer View_PrimitiveSceneData;
cbuffer InstancedView
{
    row_major float4x4 InstancedView_InstancedView_RelativeWorldToClip : packoffset(c4);
    row_major float4x4 InstancedView_InstancedView_ViewToClip : packoffset(c28);
    row_major float4x4 InstancedView_InstancedView_SVPositionToTranslatedWorld : packoffset(c44);
    float3 InstancedView_InstancedView_ViewTilePosition : packoffset(c60);
    float3 InstancedView_InstancedView_MatrixTilePosition : packoffset(c61);
    float3 InstancedView_InstancedView_ViewForward : packoffset(c62);
    float3 InstancedView_InstancedView_RelativePreViewTranslation : packoffset(c72);
    float4 InstancedView_InstancedView_ViewRectMin : packoffset(c124);
    float4 InstancedView_InstancedView_NormalOverrideParameter : packoffset(c133);
    float2 InstancedView_InstancedView_RoughnessOverrideParameter : packoffset(c134);
};

cbuffer ReflectionCapture
{
    float4 ReflectionCapture_ReflectionCapture_CaptureProperties[341] : packoffset(c682);
    float4 ReflectionCapture_ReflectionCapture_CaptureOffsetAndAverageBrightness[341] : packoffset(c1023);
};

cbuffer TranslucentBasePass
{
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumLocalLights : packoffset(c0);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_HasDirectionalLight : packoffset(c0.z);
    int3 TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize : packoffset(c1);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridPixelSizeShift : packoffset(c2);
    float3 TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams : packoffset(c3);
    float3 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightColor : packoffset(c5);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask : packoffset(c6);
    float2 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD : packoffset(c6.z);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades : packoffset(c7);
    int TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM : packoffset(c7.y);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths : packoffset(c8);
    row_major float4x4 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[4] : packoffset(c9);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[4] : packoffset(c25);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize : packoffset(c29);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectLightingShowFlag : packoffset(c36);
    uint TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_NumLocalLights : packoffset(c41);
    uint TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_HasDirectionalLight : packoffset(c41.z);
    int3 TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_CulledGridSize : packoffset(c42);
    uint TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_LightGridPixelSizeShift : packoffset(c43);
    float3 TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_LightGridZParams : packoffset(c44);
    float3 TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightColor : packoffset(c46);
    uint TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask : packoffset(c47);
    float2 TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD : packoffset(c47.z);
    float TranslucentBasePass_TranslucentBasePass_Shared_Fog_ApplyVolumetricFog : packoffset(c116.w);
    float3 TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams : packoffset(c185);
    int3 TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize : packoffset(c186);
};

ByteAddressBuffer VirtualShadowMap_ProjectionData;
ByteAddressBuffer VirtualShadowMap_PageTable;
cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[3] : packoffset(c0);
};

Texture3D<uint4> View_VolumetricLightmapIndirectionTexture;
Texture3D<float4> View_VolumetricLightmapBrickAmbientVector;
Texture3D<float4> View_DirectionalLightShadowingBrickTexture;
SamplerState View_SharedBilinearClampedSampler;
Texture2D<float4> TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlas;
SamplerState TranslucentBasePass_Shared_Forward_ShadowmapSampler;
Buffer<float4> TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer;
Buffer<uint4> TranslucentBasePass_Shared_Forward_NumCulledLightsGrid;
Buffer<uint4> TranslucentBasePass_Shared_Forward_CulledLightDataGrid;
Buffer<float4> TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer;
Buffer<uint4> TranslucentBasePass_Shared_ForwardISR_NumCulledLightsGrid;
Buffer<uint4> TranslucentBasePass_Shared_ForwardISR_CulledLightDataGrid;
TextureCubeArray<float4> TranslucentBasePass_Shared_Reflection_ReflectionCubemap;
SamplerState TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler;
Texture3D<float4> TranslucentBasePass_Shared_Fog_IntegratedLightScattering;
Texture3D<float4> TranslucentBasePass_Shared_FogISR_IntegratedLightScattering;
Texture3D<float4> TranslucentBasePass_TranslucencyGIVolumeHistory0;
SamplerState TranslucentBasePass_TranslucencyGIVolumeSampler;
Texture2D<uint4> VirtualShadowMap_PhysicalPagePool;
Texture2D<float4> Material_Texture2D_0;
SamplerState Material_Texture2D_0Sampler;

static float4 gl_FragCoord;
static float4 in_var_TEXCOORD10_centroid;
static float4 in_var_TEXCOORD11_centroid;
static float4 in_var_TEXCOORD0[1];
static uint in_var_PACKED_EYE_INDEX;
static uint in_var_PRIMITIVE_ID;
static float4 in_var_TEXCOORD7;
static float4 out_var_SV_Target0;

struct SPIRV_Cross_Input
{
    float4 in_var_TEXCOORD10_centroid : TEXCOORD10_centroid;
    float4 in_var_TEXCOORD11_centroid : TEXCOORD11_centroid;
    float4 in_var_TEXCOORD0[1] : TEXCOORD0;
    nointerpolation uint in_var_PACKED_EYE_INDEX : PACKED_EYE_INDEX;
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
    float4 in_var_TEXCOORD7 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
};

static float _233 = 0.0f;
static float4x4 _234 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
static float _237 = 0.0f;

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
    bool _264 = false;
    float _261 = 1.0f / gl_FragCoord.w;
    float4x4 _312 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _313 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _314 = 0.0f.xxx;
    float4 _315 = 0.0f.xxxx;
    float4 _316 = 0.0f.xxxx;
    float2 _317 = 0.0f.xx;
    float4x4 _318 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _319 = 0.0f.xxx;
    float3 _320 = 0.0f.xxx;
    float3 _321 = 0.0f.xxx;
    do
    {
        _264 = in_var_PACKED_EYE_INDEX == 0u;
        if (_264)
        {
            _312 = View_View_ViewToClip;
            _313 = View_View_SVPositionToTranslatedWorld;
            _314 = View_View_ViewForward;
            _315 = View_View_ViewRectMin;
            _316 = View_View_NormalOverrideParameter;
            _317 = View_View_RoughnessOverrideParameter;
            _318 = View_View_RelativeWorldToClip;
            _319 = -View_View_MatrixTilePosition;
            _320 = -View_View_ViewTilePosition;
            _321 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _312 = InstancedView_InstancedView_ViewToClip;
            _313 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _314 = InstancedView_InstancedView_ViewForward;
            _315 = InstancedView_InstancedView_ViewRectMin;
            _316 = InstancedView_InstancedView_NormalOverrideParameter;
            _317 = InstancedView_InstancedView_RoughnessOverrideParameter;
            _318 = InstancedView_InstancedView_RelativeWorldToClip;
            _319 = -InstancedView_InstancedView_MatrixTilePosition;
            _320 = -InstancedView_InstancedView_ViewTilePosition;
            _321 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float4 _334 = float4(_237, _237, _237, 1.0f) * _261;
    float4 _339 = mul(float4(gl_FragCoord.xyz, 1.0f), _313);
    float3 _343 = _339.xyz / _339.w.xxx;
    float3 _344 = -_320;
    float3 _345 = _343 - _321;
    float3 _354 = 0.0f.xxx;
    if (_312[3].w >= 1.0f)
    {
        _354 = -_314;
    }
    else
    {
        _354 = normalize(-_343);
    }
    float3 _362 = normalize(mul(normalize((float3(0.0f, 0.0f, 1.0f) * _316.w) + _316.xyz), float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz))) * 1.0f;
    float4 _375 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float3 _378 = clamp(_375.xyz, 0.0f.xxx, 1.0f.xxx);
    float _382 = (0.5f * _317.y) + _317.x;
    float _383 = clamp(_375.w, 0.0f, 1.0f);
    float3 _395 = clamp((((_344 * 2097152.0f) + _345) * View_View_VolumetricLightmapWorldToUVScale) + View_View_VolumetricLightmapWorldToUVAdd, 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
    float4 _406 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_395.x), int(_395.y), int(_395.z), 0).xyz, 0)));
    float3 _421 = (((_406.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_395 / _406.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize;
    float _422 = _334.w;
    uint _423 = in_var_PRIMITIVE_ID * 40u;
    float _437 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_423 * 16 + 0)).x) & 4u) != 0u)
    {
        _437 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, _421, 0.0f).x;
    }
    else
    {
        _437 = 1.0f;
    }
    float4 _438 = float4(_437, 1.0f, 1.0f, 1.0f);
    float3 _445 = (_378 * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _452 = (0.039999999105930328369140625f.xxx * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _455 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _460 = 0.0f.xxx;
    if (_455)
    {
        _460 = _445 + (_452 * 0.449999988079071044921875f);
    }
    else
    {
        _460 = _445;
    }
    bool3 _461 = _455.xxx;
    float3 _462 = float3(_461.x ? 0.0f.xxx.x : _452.x, _461.y ? 0.0f.xxx.y : _452.y, _461.z ? 0.0f.xxx.z : _452.z);
    float4 _466 = View_VolumetricLightmapBrickAmbientVector.SampleLevel(View_SharedBilinearClampedSampler, _421, 0.0f);
    float3 _471 = 0.0f.xxx;
    _471.x = _466.x * 0.886227548122406005859375f;
    float3 _473 = _471;
    _473.y = _466.y * 0.886227548122406005859375f;
    float3 _475 = _473;
    _475.z = _466.z * 0.886227548122406005859375f;
    float3 _540 = 0.0f.xxx;
    if (TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z > 0)
    {
        float4 _502 = mul(((float4(_344, 0.0f) + float4(_319, 0.0f)) * 2097152.0f) + float4(_345, 1.0f), _318);
        float _503 = _502.w;
        float4 _528 = TranslucentBasePass_TranslucencyGIVolumeHistory0.SampleLevel(TranslucentBasePass_TranslucencyGIVolumeSampler, float3(((_502.xy / _503.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_503 * TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.x) + TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.y) * TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.z) / float(TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z)), 0.0f);
        float3 _533 = 0.0f.xxx;
        _533.x = _528.x * 0.886227548122406005859375f;
        float3 _535 = _533;
        _535.y = _528.y * 0.886227548122406005859375f;
        float3 _537 = _535;
        _537.z = _528.z * 0.886227548122406005859375f;
        _540 = max(0.0f.xxx, _537) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _540 = 0.0f.xxx;
    }
    float3 _541 = ((max(0.0f.xxx, _475) * 0.3183098733425140380859375f.xxx) * View_View_PrecomputedIndirectLightingColorScale) + _540;
    uint _577 = 0u;
    float3 _578 = 0.0f.xxx;
    int3 _579 = int3(0, 0, 0);
    [branch]
    if (_264)
    {
        _577 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridPixelSizeShift;
        _578 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams;
        _579 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _577 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
        _578 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_LightGridZParams;
        _579 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint2 _595 = uint2((gl_FragCoord.xy - _315.xy) * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (_577.xx & uint2(31u, 31u));
    int3 _605 = int3(0, 0, 0);
    [branch]
    if (_264)
    {
        _605 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _605 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint _613 = (((min(uint(max(0.0f, log2((_261 * _578.x) + _578.y) * _578.z)), uint(_579.z - 1)) * uint(_605.y)) + _595.y) * uint(_605.x)) + _595.x;
    uint _616 = asuint(asfloat(View_PrimitiveSceneData.Load4(_423 * 16 + 0)).x);
    uint _629 = (uint((_616 & 1024u) != 0u) | (uint((_616 & 2048u) != 0u) << 1u)) | (uint((_616 & 4096u) != 0u) << 2u);
    uint _649 = 0u;
    uint _650 = 0u;
    float2 _651 = 0.0f.xx;
    float3 _652 = 0.0f.xxx;
    [branch]
    if (_264)
    {
        _649 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_HasDirectionalLight;
        _650 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
        _651 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
        _652 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightColor;
    }
    else
    {
        _649 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_HasDirectionalLight;
        _650 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
        _651 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
        _652 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightColor;
    }
    float4 _1386 = 0.0f.xxxx;
    float4 _1387 = 0.0f.xxxx;
    float4 _1388 = 0.0f.xxxx;
    [branch]
    if (_649 != 0u)
    {
        float4 _666 = float4(_237, float((_650 & 2u) != 0u), float((_650 & 4u) != 0u), float((_650 & 8u) != 0u));
        _666.x = 1.0f;
        float4 _667 = _438;
        _667.x = 1.0f;
        float _742 = 0.0f;
        if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades > 0u)
        {
            float4 _675 = _422.xxxx;
            float4 _677 = float4(bool4(_675.x >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.x, _675.y >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.y, _675.z >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.z, _675.w >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.w));
            uint _685 = uint(((_677.x + _677.y) + _677.z) + _677.w);
            float _741 = 0.0f;
            if (_685 < TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades)
            {
                float4 _695 = mul(float4(_343, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[_685]);
                float2 _699 = _695.xy / _695.w.xx;
                bool2 _703 = bool2(_699.x >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_685].xy.x, _699.y >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_685].xy.y);
                bool2 _705 = bool2(_699.x <= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_685].zw.x, _699.y <= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_685].zw.y);
                float _740 = 0.0f;
                if (all(bool2(_703.x && _705.x, _703.y && _705.y)))
                {
                    float2 _718 = (_699 * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.xy) - 0.5f.xx;
                    float2 _719 = frac(_718);
                    float4 _731 = clamp((TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlas.GatherRed(TranslucentBasePass_Shared_Forward_ShadowmapSampler, (floor(_718) + 1.0f.xx) * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.zw) * 4000.0f) - (((1.0f - _695.z) * 4000.0f) - 1.0f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
                    float2 _735 = lerp(_731.wx, _731.zy, _719.xx);
                    _740 = lerp(_735.x, _735.y, _719.y);
                }
                else
                {
                    _740 = 1.0f;
                }
                _741 = _740;
            }
            else
            {
                _741 = 1.0f;
            }
            _742 = _741;
        }
        else
        {
            _742 = 1.0f;
        }
        float _1348 = 0.0f;
        [branch]
        if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM != (-1))
        {
            float3 _752 = _343 - View_View_RelativePreViewTranslation;
            float _1346 = 0.0f;
            do
            {
                uint _755 = uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM);
                uint _756 = _755 * 336u;
                uint _758 = (_756 + 128u) >> 2u;
                float4x4 _772 = _234;
                _772[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_758 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_758 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_758 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_758 + 3u) * 4 + 0)));
                uint _774 = (_756 + 144u) >> 2u;
                float4x4 _788 = _772;
                _788[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_774 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_774 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_774 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_774 + 3u) * 4 + 0)));
                uint _790 = (_756 + 160u) >> 2u;
                float4x4 _804 = _788;
                _804[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_790 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_790 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_790 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_790 + 3u) * 4 + 0)));
                uint _806 = (_756 + 176u) >> 2u;
                float4x4 _820 = _804;
                _820[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_806 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_806 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_806 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_806 + 3u) * 4 + 0)));
                uint _822 = (_756 + 256u) >> 2u;
                float3 _832 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_822 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_822 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_822 + 2u) * 4 + 0)));
                uint _834 = (_756 + 268u) >> 2u;
                uint _838 = (_756 + 272u) >> 2u;
                uint _850 = (_756 + 288u) >> 2u;
                if (VirtualShadowMap_ProjectionData.Load(_834 * 4 + 0) == 0u)
                {
                    int _1052 = max(0, (int(floor(log2(length(((View_View_ViewTilePosition - (-_832)) * 2097152.0f) + (_752 - (-asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_850 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_850 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_850 + 2u) * 4 + 0))))))) + asfloat(VirtualShadowMap_ProjectionData.Load(((_756 + 300u) >> 2u) * 4 + 0)))) - int(VirtualShadowMap_ProjectionData.Load(((_756 + 316u) >> 2u) * 4 + 0))));
                    if (_1052 < int(VirtualShadowMap_ProjectionData.Load(((_756 + 320u) >> 2u) * 4 + 0)))
                    {
                        int _1056 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM + _1052;
                        uint _1057 = uint(_1056);
                        uint _1058 = _1057 * 336u;
                        uint _1060 = (_1058 + 128u) >> 2u;
                        float4x4 _1074 = _234;
                        _1074[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1060 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1060 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1060 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1060 + 3u) * 4 + 0)));
                        uint _1076 = (_1058 + 144u) >> 2u;
                        float4x4 _1090 = _1074;
                        _1090[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1076 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1076 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1076 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1076 + 3u) * 4 + 0)));
                        uint _1092 = (_1058 + 160u) >> 2u;
                        float4x4 _1106 = _1090;
                        _1106[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1092 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1092 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1092 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1092 + 3u) * 4 + 0)));
                        uint _1108 = (_1058 + 176u) >> 2u;
                        float4x4 _1122 = _1106;
                        _1122[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1108 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1108 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1108 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1108 + 3u) * 4 + 0)));
                        uint _1124 = (_1058 + 256u) >> 2u;
                        uint _1136 = (_1058 + 272u) >> 2u;
                        float4 _1155 = mul(float4(((View_View_ViewTilePosition + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1124 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1124 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1124 + 2u) * 4 + 0)))) * 2097152.0f) + (_752 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1136 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1136 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1136 + 2u) * 4 + 0)))), 1.0f), _1122);
                        float2 _1156 = _1155.xy;
                        uint2 _1158 = uint2(_1156 * 128.0f);
                        uint _1164 = (_1057 * 21845u) + (_1158.x + (_1158.y << 7u));
                        uint _1168 = (VirtualShadowMap_PageTable.Load(_1164 * 4 + 0) >> 20u) & 63u;
                        bool _1177 = (VirtualShadowMap_PageTable.Load(_1164 * 4 + 0) & 134217728u) != 0u;
                        float _1339 = 0.0f;
                        bool _1340 = false;
                        if (_1177)
                        {
                            float _1315 = 0.0f;
                            float _1316 = 0.0f;
                            uint2 _1317 = uint2(0u, 0u);
                            uint2 _1318 = uint2(0u, 0u);
                            bool _1319 = false;
                            if (_1168 > 0u)
                            {
                                uint _1190 = (_1058 + 304u) >> 2u;
                                uint _1193 = _1190 + 1u;
                                uint _1198 = uint(int(_1057 + _1168));
                                uint _1201 = ((_1198 * 336u) + 304u) >> 2u;
                                int _1213 = int(_1168);
                                uint2 _1221 = ((_1158 - uint2(int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_1190 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_1193 * 4 + 0))))) + uint2((int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_1201 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1201 + 1u) * 4 + 0)))) << (_1213.xx & int2(31, 31)))) >> (_1168.xx & uint2(31u, 31u));
                                uint2 _1222 = _1221 * uint2(128u, 128u);
                                uint _1225 = (_1058 + 112u) >> 2u;
                                uint _1245 = uint(_1056 + _1213) * 336u;
                                uint _1247 = (_1245 + 112u) >> 2u;
                                uint _1262 = (_1245 + 304u) >> 2u;
                                float _1283 = (_1213 >= 0) ? (1.0f / float(1u << (uint(_1213) & 31u))) : float(1u << (uint(-_1213) & 31u));
                                uint _1302 = (_1198 * 21845u) + (_1221.x + (_1221.y << 7u));
                                _1315 = _1283;
                                _1316 = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1247 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1247 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1247 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1247 + 3u) * 4 + 0))).z - (_1283 * asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1225 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1225 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1225 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1225 + 3u) * 4 + 0))).z);
                                _1317 = clamp(uint2(((_1156 * _1283) + ((float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_1262 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1262 + 1u) * 4 + 0)))) - (float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_1190 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_1193 * 4 + 0)))) * _1283)) * 0.25f).xy) * 16384.0f), _1222, _1222 + uint2(127u, 127u));
                                _1318 = uint2(VirtualShadowMap_PageTable.Load(_1302 * 4 + 0) & 1023u, (VirtualShadowMap_PageTable.Load(_1302 * 4 + 0) >> 10u) & 1023u);
                                _1319 = ((VirtualShadowMap_PageTable.Load(_1302 * 4 + 0) & 134217728u) != 0u) && (((VirtualShadowMap_PageTable.Load(_1302 * 4 + 0) >> 20u) & 63u) == 0u);
                            }
                            else
                            {
                                _1315 = 1.0f;
                                _1316 = 0.0f;
                                _1317 = uint2(_1156 * 16384.0f);
                                _1318 = uint2(VirtualShadowMap_PageTable.Load(_1164 * 4 + 0) & 1023u, (VirtualShadowMap_PageTable.Load(_1164 * 4 + 0) >> 10u) & 1023u);
                                _1319 = _1177 && (((VirtualShadowMap_PageTable.Load(_1164 * 4 + 0) >> 20u) & 63u) == 0u);
                            }
                            float _1337 = 0.0f;
                            if (_1319)
                            {
                                uint2 _1324 = (_1318 * uint2(128u, 128u)) + (_1317 & uint2(127u, 127u));
                                _1337 = (asfloat(VirtualShadowMap_PhysicalPagePool.Load(int3(int3(int(_1324.x), int(_1324.y), 0).xy, 0)).x) - _1316) / _1315;
                            }
                            else
                            {
                                _1337 = 0.0f;
                            }
                            _1339 = _1337;
                            _1340 = _1319 ? true : false;
                        }
                        else
                        {
                            _1339 = 0.0f;
                            _1340 = false;
                        }
                        if (_1340)
                        {
                            _1346 = (_1339 > _1155.z) ? 0.0f : 1.0f;
                            break;
                        }
                    }
                }
                else
                {
                    float3 _885 = ((View_View_ViewTilePosition + _832) * 2097152.0f) + (_752 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_838 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_838 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_838 + 2u) * 4 + 0))));
                    int _982 = 0;
                    float4x4 _983 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    if (VirtualShadowMap_ProjectionData.Load(_834 * 4 + 0) != 2u)
                    {
                        uint _913 = 0u;
                        do
                        {
                            float _891 = _885.x;
                            float _892 = abs(_891);
                            float _893 = _885.y;
                            float _894 = abs(_893);
                            float _896 = _885.z;
                            float _897 = abs(_896);
                            if ((_892 >= _894) && (_892 >= _897))
                            {
                                _913 = (_891 > 0.0f) ? 0u : 1u;
                                break;
                            }
                            else
                            {
                                if (_894 > _897)
                                {
                                    _913 = (_893 > 0.0f) ? 2u : 3u;
                                    break;
                                }
                                else
                                {
                                    _913 = (_896 > 0.0f) ? 4u : 5u;
                                    break;
                                }
                            }
                        } while(false);
                        int _915 = int(_755 + _913);
                        uint _917 = uint(_915) * 336u;
                        uint _919 = (_917 + 128u) >> 2u;
                        float4x4 _933 = _234;
                        _933[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_919 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_919 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_919 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_919 + 3u) * 4 + 0)));
                        uint _935 = (_917 + 144u) >> 2u;
                        float4x4 _949 = _933;
                        _949[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_935 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_935 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_935 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_935 + 3u) * 4 + 0)));
                        uint _951 = (_917 + 160u) >> 2u;
                        float4x4 _965 = _949;
                        _965[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_951 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_951 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_951 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_951 + 3u) * 4 + 0)));
                        uint _967 = (_917 + 176u) >> 2u;
                        float4x4 _981 = _965;
                        _981[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_967 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_967 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_967 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_967 + 3u) * 4 + 0)));
                        _982 = _915;
                        _983 = _981;
                    }
                    else
                    {
                        _982 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM;
                        _983 = _820;
                    }
                    float4 _988 = mul(float4(_885, 1.0f), _983);
                    float3 _992 = _988.xyz / _988.w.xxx;
                    float2 _993 = _992.xy;
                    float _1035 = 0.0f;
                    bool _1036 = false;
                    do
                    {
                        uint2 _998 = uint2(_993 * 128.0f);
                        uint _1004 = (uint(_982) * 21845u) + (_998.x + (_998.y << 7u));
                        uint2 _1022 = (uint2(VirtualShadowMap_PageTable.Load(_1004 * 4 + 0) & 1023u, (VirtualShadowMap_PageTable.Load(_1004 * 4 + 0) >> 10u) & 1023u) * uint2(128u, 128u)) + (uint2(_993 * float(16384u >> (((VirtualShadowMap_PageTable.Load(_1004 * 4 + 0) >> 20u) & 63u) & 31u))) & uint2(127u, 127u));
                        if ((VirtualShadowMap_PageTable.Load(_1004 * 4 + 0) & 134217728u) != 0u)
                        {
                            _1035 = asfloat(VirtualShadowMap_PhysicalPagePool.Load(int3(int3(int(_1022.x), int(_1022.y), 0).xy, 0)).x);
                            _1036 = true;
                            break;
                        }
                        _1035 = 0.0f;
                        _1036 = false;
                        break;
                    } while(false);
                    if (_1036)
                    {
                        _1346 = (_1035 > _992.z) ? 0.0f : 1.0f;
                        break;
                    }
                }
                _1346 = 1.0f;
                break;
            } while(false);
            _1348 = _742 * _1346;
        }
        else
        {
            _1348 = _742;
        }
        float _1356 = clamp((_422 * _651.x) + _651.y, 0.0f, 1.0f);
        float _1358 = lerp(_1348, lerp(1.0f, dot(_667, _666), dot(_666, 1.0f.xxxx)), _1356 * _1356);
        bool _1361 = (_1358 + min(_1358, 1.0f)) > 0.0f;
        float3 _1369 = 0.0f.xxx;
        [branch]
        if (_1361)
        {
            _1369 = ((_460 * 0.3183098733425140380859375f) * 1.0f) * ((_652 * 1.0f) * _1358);
        }
        else
        {
            _1369 = 0.0f.xxx;
        }
        bool3 _1370 = _1361.xxx;
        float4 _1375 = float4(_1369, 0.0f);
        float4 _1379 = float4(float3(_1370.x ? 0.0f.xxx.x : 0.0f.xxx.x, _1370.y ? 0.0f.xxx.y : 0.0f.xxx.y, _1370.z ? 0.0f.xxx.z : 0.0f.xxx.z), 0.0f);
        bool4 _1383 = (((_650 >> 8u) & _629) != 0u).xxxx;
        _1386 = _667;
        _1387 = float4(_1383.x ? _1375.x : 0.0f.xxxx.x, _1383.y ? _1375.y : 0.0f.xxxx.y, _1383.z ? _1375.z : 0.0f.xxxx.z, _1383.w ? _1375.w : 0.0f.xxxx.w);
        _1388 = float4(_1383.x ? _1379.x : 0.0f.xxxx.x, _1383.y ? _1379.y : 0.0f.xxxx.y, _1383.z ? _1379.z : 0.0f.xxxx.z, _1383.w ? _1379.w : 0.0f.xxxx.w);
    }
    else
    {
        _1386 = _438;
        _1387 = 0.0f.xxxx;
        _1388 = 0.0f.xxxx;
    }
    uint _1412 = 0u;
    uint _1413 = 0u;
    [branch]
    if (_264)
    {
        uint _1402 = _613 * 2u;
        _1412 = min(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1402).x, TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumLocalLights);
        _1413 = TranslucentBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1402 + 1u).x;
    }
    else
    {
        uint _1392 = _613 * 2u;
        _1412 = min(TranslucentBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1392).x, TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_NumLocalLights);
        _1413 = TranslucentBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1392 + 1u).x;
    }
    uint _1419 = min(_1412, (_264 ? TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumLocalLights : TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_NumLocalLights));
    float4 _1421 = 0.0f.xxxx;
    float4 _1424 = 0.0f.xxxx;
    _1421 = _1387;
    _1424 = _1388;
    float4 _1422 = 0.0f.xxxx;
    float4 _1425 = 0.0f.xxxx;
    [loop]
    for (uint _1426 = 0u; _1426 < _1419; _1421 = _1422, _1424 = _1425, _1426++)
    {
        uint _1431 = _1413 + _1426;
        float4 _1463 = 0.0f.xxxx;
        float4 _1464 = 0.0f.xxxx;
        float4 _1465 = 0.0f.xxxx;
        float4 _1466 = 0.0f.xxxx;
        float4 _1467 = 0.0f.xxxx;
        [branch]
        if (_264)
        {
            uint _1452 = TranslucentBasePass_Shared_Forward_CulledLightDataGrid.Load(_1431).x * 6u;
            _1463 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1452);
            _1464 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1452 + 1u);
            _1465 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1452 + 3u);
            _1466 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1452 + 2u);
            _1467 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1452 + 4u);
        }
        else
        {
            uint _1438 = TranslucentBasePass_Shared_ForwardISR_CulledLightDataGrid.Load(_1431).x * 6u;
            _1463 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1438);
            _1464 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1438 + 1u);
            _1465 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1438 + 3u);
            _1466 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1438 + 2u);
            _1467 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1438 + 4u);
        }
        float2 _1475 = spvUnpackHalf2x16(asuint(_1465.w));
        float _1476 = _1475.x;
        bool _1478 = _1464.w == 0.0f;
        uint _1482 = asuint(_1466.w);
        float4 _1498 = float4(float((_1482 & 1u) != 0u), float((_1482 & 2u) != 0u), float((_1482 & 4u) != 0u), float((_1482 & 8u) != 0u));
        uint _1499 = _1482 >> 4u;
        float3 _1514 = _1463.xyz - _343;
        float _1515 = dot(_1514, _1514);
        float _1532 = 0.0f;
        if (_1478)
        {
            float _1527 = _1515 * (_1463.w * _1463.w);
            float _1530 = clamp(1.0f - (_1527 * _1527), 0.0f, 1.0f);
            _1532 = _1530 * _1530;
        }
        else
        {
            float3 _1521 = _1514 * _1463.w;
            _1532 = pow(1.0f - clamp(dot(_1521, _1521), 0.0f, 1.0f), _1464.w);
        }
        float _1542 = 0.0f;
        if (_1465.x > (-2.0f))
        {
            float _1539 = clamp((dot(_1514 * rsqrt(_1515), _1466.xyz) - _1465.x) * _1465.y, 0.0f, 1.0f);
            _1542 = _1532 * (_1539 * _1539);
        }
        else
        {
            _1542 = _1532;
        }
        float3 _1590 = 0.0f.xxx;
        float3 _1591 = 0.0f.xxx;
        [branch]
        if (_1542 > 0.0f)
        {
            float _1553 = 0.0f;
            [branch]
            if (uint((_1482 & 255u) != 0u) != 0u)
            {
                _1553 = dot(float4(float((_1499 & 1u) != 0u), float((_1499 & 2u) != 0u), float((_1499 & 4u) != 0u), float((_1499 & 8u) != 0u)), 1.0f.xxxx) * lerp(1.0f, dot(_1386, _1498), dot(_1498, 1.0f.xxxx));
            }
            else
            {
                _1553 = 1.0f;
            }
            bool _1555 = (_1553 + _1553) > 0.0f;
            float3 _1587 = 0.0f.xxx;
            [branch]
            if (_1555)
            {
                float3 _1559 = _1467.xyz * (0.5f * _1476);
                float3 _1560 = _1514 - _1559;
                float3 _1561 = _1514 + _1559;
                float _1580 = 0.0f;
                [branch]
                if (_1476 > 0.0f)
                {
                    float _1573 = rsqrt(dot(_1560, _1560)) * rsqrt(dot(_1561, _1561));
                    _1580 = _1573 / ((((dot(_1560, _1561) * _1573) * 0.5f) + 0.5f) + _1573);
                }
                else
                {
                    _1580 = 1.0f / (dot(_1560, _1560) + 1.0f);
                }
                _1587 = ((_460 * 0.3183098733425140380859375f) * (_1478 ? _1580 : 1.0f)) * ((_1464.xyz * _1542) * _1553);
            }
            else
            {
                _1587 = 0.0f.xxx;
            }
            bool3 _1588 = _1555.xxx;
            _1590 = _1587;
            _1591 = float3(_1588.x ? 0.0f.xxx.x : 0.0f.xxx.x, _1588.y ? 0.0f.xxx.y : 0.0f.xxx.y, _1588.z ? 0.0f.xxx.z : 0.0f.xxx.z);
        }
        else
        {
            _1590 = 0.0f.xxx;
            _1591 = 0.0f.xxx;
        }
        [flatten]
        if (((_1482 >> 8u) & _629) != 0u)
        {
            _1422 = _1421 + float4(_1590, 0.0f);
            _1425 = _1424 + float4(_1591, 0.0f);
        }
        else
        {
            _1422 = _1421;
            _1425 = _1424;
        }
    }
    bool4 _1610 = (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1619 = int(asuint(asfloat(View_PrimitiveSceneData.Load4(_423 * 16 + 0)).w));
    float4 _1679 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _382) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1680 = _1679.x;
    float2 _1690 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_1680 * _1680, exp2((-9.27999973297119140625f) * clamp(dot(_362, _354), 0.0f, 1.0f))) * _1680) + _1679.y)) + _1679.zw;
    bool _1718 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _1784 = 0.0f.xxxx;
    if (_1718)
    {
        float4 _1736 = mul(((float4(_344, 0.0f) + float4(_319, 0.0f)) * 2097152.0f) + float4(_345, 1.0f), _318);
        float _1737 = _1736.w;
        float3 _1759 = float3(((_1736.xy / _1737.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_1737 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _1772 = 0.0f.xxxx;
        if (_1718)
        {
            float4 _1771 = 0.0f.xxxx;
            if (_264)
            {
                _1771 = TranslucentBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1759, 0.0f);
            }
            else
            {
                _1771 = TranslucentBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1759, 0.0f);
            }
            _1772 = _1771;
        }
        else
        {
            _1772 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _1784 = float4(_1772.xyz + (in_var_TEXCOORD7.xyz * _1772.w), _1772.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _1784 = in_var_TEXCOORD7;
    }
    float3 _1791 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[1].yzw, Material_Material_PreshaderBuffer[1].x.xxx), 0.0f.xxx);
    float _1849 = 0.0f;
    float3 _1850 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _1822 = abs(((_344 - asfloat(View_PrimitiveSceneData.Load4((_423 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_345 - asfloat(View_PrimitiveSceneData.Load4((_423 + 19u) * 16 + 0)).xyz));
        float3 _1823 = float3(asfloat(View_PrimitiveSceneData.Load4((_423 + 18u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_423 + 25u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_423 + 26u) * 16 + 0)).w) + 1.0f.xxx;
        bool _1825 = any(bool3(_1822.x > _1823.x, _1822.y > _1823.y, _1822.z > _1823.z));
        float3 _1847 = 0.0f.xxx;
        if (_1825)
        {
            float3 _1843 = frac(frac(((_344.x + _344.y) + _344.z) * 2420.113525390625f) + (((_345.x + _345.y) + _345.z) * 0.001154000055976212024688720703125f)).xxx;
            _1847 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_1843.x > 0.5f.xxx.x, _1843.y > 0.5f.xxx.y, _1843.z > 0.5f.xxx.z)));
        }
        else
        {
            _1847 = _1791;
        }
        _1849 = _1825 ? 1.0f : _383;
        _1850 = _1847;
    }
    else
    {
        _1849 = _383;
        _1850 = _1791;
    }
    float4 _1860 = float4((((lerp((float4(_1610.x ? 0.0f.xxxx.x : _1421.x, _1610.y ? 0.0f.xxxx.y : _1421.y, _1610.z ? 0.0f.xxxx.z : _1421.z, _1610.w ? 0.0f.xxxx.w : _1421.w).xyz + float4(_1610.x ? 0.0f.xxxx.x : _1424.x, _1610.y ? 0.0f.xxxx.y : _1424.y, _1610.z ? 0.0f.xxxx.z : _1424.z, _1610.w ? 0.0f.xxxx.w : _1424.w).xyz) + (((((float4(TranslucentBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler, float4((_362 * (2.0f * dot(_354, _362))) - _354, ReflectionCapture_ReflectionCapture_CaptureProperties[_1619].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_382, 0.001000000047497451305389404296875f))))).xyz * ReflectionCapture_ReflectionCapture_CaptureProperties[_1619].x, _233).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz * lerp(1.0f, min(dot(_541, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) / max(ReflectionCapture_ReflectionCapture_CaptureOffsetAndAverageBrightness[_1619].w * dot(View_View_PrecomputedIndirectSpecularColorScale, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)), 9.9999997473787516355514526367188e-05f), View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp((_382 * View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x) + View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y, 0.0f, 1.0f)))).xyz * ((_462 * _1690.x) + (clamp(50.0f * _462.y, 0.0f, 1.0f) * _1690.y).xxx)) * 1.0f) * max(1.0f.xxx, ((((((_462 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_462 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_462 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)), _460 + (_462 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + ((_541 * _460) * max(1.0f.xxx, ((((((_378 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_378 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_378 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f))) + _1850) * _1784.w) + _1784.xyz, _1849);
    float3 _1864 = _1860.xyz * View_View_PreExposure;
    out_var_SV_Target0 = float4(_1864.x, _1864.y, _1864.z, _1860.w);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD10_centroid = stage_input.in_var_TEXCOORD10_centroid;
    in_var_TEXCOORD11_centroid = stage_input.in_var_TEXCOORD11_centroid;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_PACKED_EYE_INDEX = stage_input.in_var_PACKED_EYE_INDEX;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
    in_var_TEXCOORD7 = stage_input.in_var_TEXCOORD7;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    return stage_output;
}
