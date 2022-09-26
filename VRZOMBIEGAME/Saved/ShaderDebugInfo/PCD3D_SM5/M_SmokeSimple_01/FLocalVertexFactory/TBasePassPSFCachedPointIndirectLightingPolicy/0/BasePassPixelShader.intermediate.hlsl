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
    float View_View_IndirectLightingCacheShowFlag : packoffset(c230);
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

cbuffer IndirectLightingCache
{
    float IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing : packoffset(c5);
    float4 IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[3] : packoffset(c6);
};

ByteAddressBuffer VirtualShadowMap_ProjectionData;
ByteAddressBuffer VirtualShadowMap_PageTable;
cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[3] : packoffset(c0);
};

Texture3D<uint4> View_VolumetricLightmapIndirectionTexture;
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

static float _235 = 0.0f;
static float4x4 _236 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
static float _239 = 0.0f;

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
    bool _267 = false;
    float _264 = 1.0f / gl_FragCoord.w;
    float4x4 _315 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _316 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _317 = 0.0f.xxx;
    float4 _318 = 0.0f.xxxx;
    float4 _319 = 0.0f.xxxx;
    float2 _320 = 0.0f.xx;
    float4x4 _321 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _322 = 0.0f.xxx;
    float3 _323 = 0.0f.xxx;
    float3 _324 = 0.0f.xxx;
    do
    {
        _267 = in_var_PACKED_EYE_INDEX == 0u;
        if (_267)
        {
            _315 = View_View_ViewToClip;
            _316 = View_View_SVPositionToTranslatedWorld;
            _317 = View_View_ViewForward;
            _318 = View_View_ViewRectMin;
            _319 = View_View_NormalOverrideParameter;
            _320 = View_View_RoughnessOverrideParameter;
            _321 = View_View_RelativeWorldToClip;
            _322 = -View_View_MatrixTilePosition;
            _323 = -View_View_ViewTilePosition;
            _324 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _315 = InstancedView_InstancedView_ViewToClip;
            _316 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _317 = InstancedView_InstancedView_ViewForward;
            _318 = InstancedView_InstancedView_ViewRectMin;
            _319 = InstancedView_InstancedView_NormalOverrideParameter;
            _320 = InstancedView_InstancedView_RoughnessOverrideParameter;
            _321 = InstancedView_InstancedView_RelativeWorldToClip;
            _322 = -InstancedView_InstancedView_MatrixTilePosition;
            _323 = -InstancedView_InstancedView_ViewTilePosition;
            _324 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float4 _337 = float4(_239, _239, _239, 1.0f) * _264;
    float4 _342 = mul(float4(gl_FragCoord.xyz, 1.0f), _316);
    float3 _346 = _342.xyz / _342.w.xxx;
    float3 _347 = -_323;
    float3 _348 = _346 - _324;
    float3 _357 = 0.0f.xxx;
    if (_315[3].w >= 1.0f)
    {
        _357 = -_317;
    }
    else
    {
        _357 = normalize(-_346);
    }
    float3 _365 = normalize(mul(normalize((float3(0.0f, 0.0f, 1.0f) * _319.w) + _319.xyz), float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz))) * 1.0f;
    float4 _378 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float3 _381 = clamp(_378.xyz, 0.0f.xxx, 1.0f.xxx);
    float _385 = (0.5f * _320.y) + _320.x;
    float _386 = clamp(_378.w, 0.0f, 1.0f);
    float _387 = _337.w;
    uint _388 = in_var_PRIMITIVE_ID * 40u;
    bool _397 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _403 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_388 * 16 + 0)).x) & 2u) != 0u) && _397)
    {
        _403 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _403 = 1.0f;
    }
    float _454 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_388 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _422 = clamp((((_347 * 2097152.0f) + _348) * View_View_VolumetricLightmapWorldToUVScale) + View_View_VolumetricLightmapWorldToUVAdd, 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _433 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_422.x), int(_422.y), int(_422.z), 0).xyz, 0)));
        _454 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_433.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_422 / _433.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _454 = _403;
    }
    float4 _455 = float4(_454, 1.0f, 1.0f, 1.0f);
    float3 _462 = (_381 * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _469 = (0.039999999105930328369140625f.xxx * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _472 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _477 = 0.0f.xxx;
    if (_472)
    {
        _477 = _462 + (_469 * 0.449999988079071044921875f);
    }
    else
    {
        _477 = _462;
    }
    bool3 _478 = _472.xxx;
    float3 _479 = float3(_478.x ? 0.0f.xxx.x : _469.x, _478.y ? 0.0f.xxx.y : _469.y, _478.z ? 0.0f.xxx.z : _469.z);
    float3 _494 = 0.0f.xxx;
    if (_397)
    {
        float3 _489 = 0.0f.xxx;
        _489.x = IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[0].x * 0.886227548122406005859375f;
        float3 _491 = _489;
        _491.y = IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[1].x * 0.886227548122406005859375f;
        float3 _493 = _491;
        _493.z = IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[2].x * 0.886227548122406005859375f;
        _494 = _493;
    }
    else
    {
        _494 = 0.0f.xxx;
    }
    float3 _557 = 0.0f.xxx;
    if (TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z > 0)
    {
        float4 _519 = mul(((float4(_347, 0.0f) + float4(_322, 0.0f)) * 2097152.0f) + float4(_348, 1.0f), _321);
        float _520 = _519.w;
        float4 _545 = TranslucentBasePass_TranslucencyGIVolumeHistory0.SampleLevel(TranslucentBasePass_TranslucencyGIVolumeSampler, float3(((_519.xy / _520.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_520 * TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.x) + TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.y) * TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.z) / float(TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z)), 0.0f);
        float3 _550 = 0.0f.xxx;
        _550.x = _545.x * 0.886227548122406005859375f;
        float3 _552 = _550;
        _552.y = _545.y * 0.886227548122406005859375f;
        float3 _554 = _552;
        _554.z = _545.z * 0.886227548122406005859375f;
        _557 = max(0.0f.xxx, _554) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _557 = 0.0f.xxx;
    }
    float3 _558 = (_494 * View_View_PrecomputedIndirectLightingColorScale) + _557;
    uint _594 = 0u;
    float3 _595 = 0.0f.xxx;
    int3 _596 = int3(0, 0, 0);
    [branch]
    if (_267)
    {
        _594 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridPixelSizeShift;
        _595 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams;
        _596 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _594 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
        _595 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_LightGridZParams;
        _596 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint2 _612 = uint2((gl_FragCoord.xy - _318.xy) * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (_594.xx & uint2(31u, 31u));
    int3 _622 = int3(0, 0, 0);
    [branch]
    if (_267)
    {
        _622 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _622 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint _630 = (((min(uint(max(0.0f, log2((_264 * _595.x) + _595.y) * _595.z)), uint(_596.z - 1)) * uint(_622.y)) + _612.y) * uint(_622.x)) + _612.x;
    uint _633 = asuint(asfloat(View_PrimitiveSceneData.Load4(_388 * 16 + 0)).x);
    uint _646 = (uint((_633 & 1024u) != 0u) | (uint((_633 & 2048u) != 0u) << 1u)) | (uint((_633 & 4096u) != 0u) << 2u);
    uint _666 = 0u;
    uint _667 = 0u;
    float2 _668 = 0.0f.xx;
    float3 _669 = 0.0f.xxx;
    [branch]
    if (_267)
    {
        _666 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_HasDirectionalLight;
        _667 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
        _668 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
        _669 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightColor;
    }
    else
    {
        _666 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_HasDirectionalLight;
        _667 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
        _668 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
        _669 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightColor;
    }
    float4 _1403 = 0.0f.xxxx;
    float4 _1404 = 0.0f.xxxx;
    float4 _1405 = 0.0f.xxxx;
    [branch]
    if (_666 != 0u)
    {
        float4 _683 = float4(_239, float((_667 & 2u) != 0u), float((_667 & 4u) != 0u), float((_667 & 8u) != 0u));
        _683.x = 1.0f;
        float4 _684 = _455;
        _684.x = 1.0f;
        float _759 = 0.0f;
        if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades > 0u)
        {
            float4 _692 = _387.xxxx;
            float4 _694 = float4(bool4(_692.x >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.x, _692.y >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.y, _692.z >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.z, _692.w >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.w));
            uint _702 = uint(((_694.x + _694.y) + _694.z) + _694.w);
            float _758 = 0.0f;
            if (_702 < TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades)
            {
                float4 _712 = mul(float4(_346, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[_702]);
                float2 _716 = _712.xy / _712.w.xx;
                bool2 _720 = bool2(_716.x >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_702].xy.x, _716.y >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_702].xy.y);
                bool2 _722 = bool2(_716.x <= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_702].zw.x, _716.y <= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_702].zw.y);
                float _757 = 0.0f;
                if (all(bool2(_720.x && _722.x, _720.y && _722.y)))
                {
                    float2 _735 = (_716 * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.xy) - 0.5f.xx;
                    float2 _736 = frac(_735);
                    float4 _748 = clamp((TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlas.GatherRed(TranslucentBasePass_Shared_Forward_ShadowmapSampler, (floor(_735) + 1.0f.xx) * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.zw) * 4000.0f) - (((1.0f - _712.z) * 4000.0f) - 1.0f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
                    float2 _752 = lerp(_748.wx, _748.zy, _736.xx);
                    _757 = lerp(_752.x, _752.y, _736.y);
                }
                else
                {
                    _757 = 1.0f;
                }
                _758 = _757;
            }
            else
            {
                _758 = 1.0f;
            }
            _759 = _758;
        }
        else
        {
            _759 = 1.0f;
        }
        float _1365 = 0.0f;
        [branch]
        if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM != (-1))
        {
            float3 _769 = _346 - View_View_RelativePreViewTranslation;
            float _1363 = 0.0f;
            do
            {
                uint _772 = uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM);
                uint _773 = _772 * 336u;
                uint _775 = (_773 + 128u) >> 2u;
                float4x4 _789 = _236;
                _789[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_775 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_775 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_775 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_775 + 3u) * 4 + 0)));
                uint _791 = (_773 + 144u) >> 2u;
                float4x4 _805 = _789;
                _805[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_791 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_791 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_791 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_791 + 3u) * 4 + 0)));
                uint _807 = (_773 + 160u) >> 2u;
                float4x4 _821 = _805;
                _821[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_807 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_807 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_807 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_807 + 3u) * 4 + 0)));
                uint _823 = (_773 + 176u) >> 2u;
                float4x4 _837 = _821;
                _837[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_823 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_823 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_823 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_823 + 3u) * 4 + 0)));
                uint _839 = (_773 + 256u) >> 2u;
                float3 _849 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_839 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_839 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_839 + 2u) * 4 + 0)));
                uint _851 = (_773 + 268u) >> 2u;
                uint _855 = (_773 + 272u) >> 2u;
                uint _867 = (_773 + 288u) >> 2u;
                if (VirtualShadowMap_ProjectionData.Load(_851 * 4 + 0) == 0u)
                {
                    int _1069 = max(0, (int(floor(log2(length(((View_View_ViewTilePosition - (-_849)) * 2097152.0f) + (_769 - (-asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_867 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_867 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_867 + 2u) * 4 + 0))))))) + asfloat(VirtualShadowMap_ProjectionData.Load(((_773 + 300u) >> 2u) * 4 + 0)))) - int(VirtualShadowMap_ProjectionData.Load(((_773 + 316u) >> 2u) * 4 + 0))));
                    if (_1069 < int(VirtualShadowMap_ProjectionData.Load(((_773 + 320u) >> 2u) * 4 + 0)))
                    {
                        int _1073 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM + _1069;
                        uint _1074 = uint(_1073);
                        uint _1075 = _1074 * 336u;
                        uint _1077 = (_1075 + 128u) >> 2u;
                        float4x4 _1091 = _236;
                        _1091[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1077 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1077 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1077 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1077 + 3u) * 4 + 0)));
                        uint _1093 = (_1075 + 144u) >> 2u;
                        float4x4 _1107 = _1091;
                        _1107[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1093 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1093 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1093 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1093 + 3u) * 4 + 0)));
                        uint _1109 = (_1075 + 160u) >> 2u;
                        float4x4 _1123 = _1107;
                        _1123[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1109 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1109 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1109 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1109 + 3u) * 4 + 0)));
                        uint _1125 = (_1075 + 176u) >> 2u;
                        float4x4 _1139 = _1123;
                        _1139[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1125 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1125 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1125 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1125 + 3u) * 4 + 0)));
                        uint _1141 = (_1075 + 256u) >> 2u;
                        uint _1153 = (_1075 + 272u) >> 2u;
                        float4 _1172 = mul(float4(((View_View_ViewTilePosition + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1141 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1141 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1141 + 2u) * 4 + 0)))) * 2097152.0f) + (_769 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1153 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1153 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1153 + 2u) * 4 + 0)))), 1.0f), _1139);
                        float2 _1173 = _1172.xy;
                        uint2 _1175 = uint2(_1173 * 128.0f);
                        uint _1181 = (_1074 * 21845u) + (_1175.x + (_1175.y << 7u));
                        uint _1185 = (VirtualShadowMap_PageTable.Load(_1181 * 4 + 0) >> 20u) & 63u;
                        bool _1194 = (VirtualShadowMap_PageTable.Load(_1181 * 4 + 0) & 134217728u) != 0u;
                        float _1356 = 0.0f;
                        bool _1357 = false;
                        if (_1194)
                        {
                            float _1332 = 0.0f;
                            float _1333 = 0.0f;
                            uint2 _1334 = uint2(0u, 0u);
                            uint2 _1335 = uint2(0u, 0u);
                            bool _1336 = false;
                            if (_1185 > 0u)
                            {
                                uint _1207 = (_1075 + 304u) >> 2u;
                                uint _1210 = _1207 + 1u;
                                uint _1215 = uint(int(_1074 + _1185));
                                uint _1218 = ((_1215 * 336u) + 304u) >> 2u;
                                int _1230 = int(_1185);
                                uint2 _1238 = ((_1175 - uint2(int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_1207 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_1210 * 4 + 0))))) + uint2((int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_1218 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1218 + 1u) * 4 + 0)))) << (_1230.xx & int2(31, 31)))) >> (_1185.xx & uint2(31u, 31u));
                                uint2 _1239 = _1238 * uint2(128u, 128u);
                                uint _1242 = (_1075 + 112u) >> 2u;
                                uint _1262 = uint(_1073 + _1230) * 336u;
                                uint _1264 = (_1262 + 112u) >> 2u;
                                uint _1279 = (_1262 + 304u) >> 2u;
                                float _1300 = (_1230 >= 0) ? (1.0f / float(1u << (uint(_1230) & 31u))) : float(1u << (uint(-_1230) & 31u));
                                uint _1319 = (_1215 * 21845u) + (_1238.x + (_1238.y << 7u));
                                _1332 = _1300;
                                _1333 = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1264 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1264 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1264 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1264 + 3u) * 4 + 0))).z - (_1300 * asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1242 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1242 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1242 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1242 + 3u) * 4 + 0))).z);
                                _1334 = clamp(uint2(((_1173 * _1300) + ((float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_1279 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1279 + 1u) * 4 + 0)))) - (float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_1207 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_1210 * 4 + 0)))) * _1300)) * 0.25f).xy) * 16384.0f), _1239, _1239 + uint2(127u, 127u));
                                _1335 = uint2(VirtualShadowMap_PageTable.Load(_1319 * 4 + 0) & 1023u, (VirtualShadowMap_PageTable.Load(_1319 * 4 + 0) >> 10u) & 1023u);
                                _1336 = ((VirtualShadowMap_PageTable.Load(_1319 * 4 + 0) & 134217728u) != 0u) && (((VirtualShadowMap_PageTable.Load(_1319 * 4 + 0) >> 20u) & 63u) == 0u);
                            }
                            else
                            {
                                _1332 = 1.0f;
                                _1333 = 0.0f;
                                _1334 = uint2(_1173 * 16384.0f);
                                _1335 = uint2(VirtualShadowMap_PageTable.Load(_1181 * 4 + 0) & 1023u, (VirtualShadowMap_PageTable.Load(_1181 * 4 + 0) >> 10u) & 1023u);
                                _1336 = _1194 && (((VirtualShadowMap_PageTable.Load(_1181 * 4 + 0) >> 20u) & 63u) == 0u);
                            }
                            float _1354 = 0.0f;
                            if (_1336)
                            {
                                uint2 _1341 = (_1335 * uint2(128u, 128u)) + (_1334 & uint2(127u, 127u));
                                _1354 = (asfloat(VirtualShadowMap_PhysicalPagePool.Load(int3(int3(int(_1341.x), int(_1341.y), 0).xy, 0)).x) - _1333) / _1332;
                            }
                            else
                            {
                                _1354 = 0.0f;
                            }
                            _1356 = _1354;
                            _1357 = _1336 ? true : false;
                        }
                        else
                        {
                            _1356 = 0.0f;
                            _1357 = false;
                        }
                        if (_1357)
                        {
                            _1363 = (_1356 > _1172.z) ? 0.0f : 1.0f;
                            break;
                        }
                    }
                }
                else
                {
                    float3 _902 = ((View_View_ViewTilePosition + _849) * 2097152.0f) + (_769 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_855 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_855 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_855 + 2u) * 4 + 0))));
                    int _999 = 0;
                    float4x4 _1000 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    if (VirtualShadowMap_ProjectionData.Load(_851 * 4 + 0) != 2u)
                    {
                        uint _930 = 0u;
                        do
                        {
                            float _908 = _902.x;
                            float _909 = abs(_908);
                            float _910 = _902.y;
                            float _911 = abs(_910);
                            float _913 = _902.z;
                            float _914 = abs(_913);
                            if ((_909 >= _911) && (_909 >= _914))
                            {
                                _930 = (_908 > 0.0f) ? 0u : 1u;
                                break;
                            }
                            else
                            {
                                if (_911 > _914)
                                {
                                    _930 = (_910 > 0.0f) ? 2u : 3u;
                                    break;
                                }
                                else
                                {
                                    _930 = (_913 > 0.0f) ? 4u : 5u;
                                    break;
                                }
                            }
                        } while(false);
                        int _932 = int(_772 + _930);
                        uint _934 = uint(_932) * 336u;
                        uint _936 = (_934 + 128u) >> 2u;
                        float4x4 _950 = _236;
                        _950[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_936 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_936 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_936 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_936 + 3u) * 4 + 0)));
                        uint _952 = (_934 + 144u) >> 2u;
                        float4x4 _966 = _950;
                        _966[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_952 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_952 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_952 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_952 + 3u) * 4 + 0)));
                        uint _968 = (_934 + 160u) >> 2u;
                        float4x4 _982 = _966;
                        _982[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_968 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_968 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_968 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_968 + 3u) * 4 + 0)));
                        uint _984 = (_934 + 176u) >> 2u;
                        float4x4 _998 = _982;
                        _998[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_984 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_984 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_984 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_984 + 3u) * 4 + 0)));
                        _999 = _932;
                        _1000 = _998;
                    }
                    else
                    {
                        _999 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM;
                        _1000 = _837;
                    }
                    float4 _1005 = mul(float4(_902, 1.0f), _1000);
                    float3 _1009 = _1005.xyz / _1005.w.xxx;
                    float2 _1010 = _1009.xy;
                    float _1052 = 0.0f;
                    bool _1053 = false;
                    do
                    {
                        uint2 _1015 = uint2(_1010 * 128.0f);
                        uint _1021 = (uint(_999) * 21845u) + (_1015.x + (_1015.y << 7u));
                        uint2 _1039 = (uint2(VirtualShadowMap_PageTable.Load(_1021 * 4 + 0) & 1023u, (VirtualShadowMap_PageTable.Load(_1021 * 4 + 0) >> 10u) & 1023u) * uint2(128u, 128u)) + (uint2(_1010 * float(16384u >> (((VirtualShadowMap_PageTable.Load(_1021 * 4 + 0) >> 20u) & 63u) & 31u))) & uint2(127u, 127u));
                        if ((VirtualShadowMap_PageTable.Load(_1021 * 4 + 0) & 134217728u) != 0u)
                        {
                            _1052 = asfloat(VirtualShadowMap_PhysicalPagePool.Load(int3(int3(int(_1039.x), int(_1039.y), 0).xy, 0)).x);
                            _1053 = true;
                            break;
                        }
                        _1052 = 0.0f;
                        _1053 = false;
                        break;
                    } while(false);
                    if (_1053)
                    {
                        _1363 = (_1052 > _1009.z) ? 0.0f : 1.0f;
                        break;
                    }
                }
                _1363 = 1.0f;
                break;
            } while(false);
            _1365 = _759 * _1363;
        }
        else
        {
            _1365 = _759;
        }
        float _1373 = clamp((_387 * _668.x) + _668.y, 0.0f, 1.0f);
        float _1375 = lerp(_1365, lerp(1.0f, dot(_684, _683), dot(_683, 1.0f.xxxx)), _1373 * _1373);
        bool _1378 = (_1375 + min(_1375, 1.0f)) > 0.0f;
        float3 _1386 = 0.0f.xxx;
        [branch]
        if (_1378)
        {
            _1386 = ((_477 * 0.3183098733425140380859375f) * 1.0f) * ((_669 * 1.0f) * _1375);
        }
        else
        {
            _1386 = 0.0f.xxx;
        }
        bool3 _1387 = _1378.xxx;
        float4 _1392 = float4(_1386, 0.0f);
        float4 _1396 = float4(float3(_1387.x ? 0.0f.xxx.x : 0.0f.xxx.x, _1387.y ? 0.0f.xxx.y : 0.0f.xxx.y, _1387.z ? 0.0f.xxx.z : 0.0f.xxx.z), 0.0f);
        bool4 _1400 = (((_667 >> 8u) & _646) != 0u).xxxx;
        _1403 = _684;
        _1404 = float4(_1400.x ? _1392.x : 0.0f.xxxx.x, _1400.y ? _1392.y : 0.0f.xxxx.y, _1400.z ? _1392.z : 0.0f.xxxx.z, _1400.w ? _1392.w : 0.0f.xxxx.w);
        _1405 = float4(_1400.x ? _1396.x : 0.0f.xxxx.x, _1400.y ? _1396.y : 0.0f.xxxx.y, _1400.z ? _1396.z : 0.0f.xxxx.z, _1400.w ? _1396.w : 0.0f.xxxx.w);
    }
    else
    {
        _1403 = _455;
        _1404 = 0.0f.xxxx;
        _1405 = 0.0f.xxxx;
    }
    uint _1429 = 0u;
    uint _1430 = 0u;
    [branch]
    if (_267)
    {
        uint _1419 = _630 * 2u;
        _1429 = min(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1419).x, TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumLocalLights);
        _1430 = TranslucentBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1419 + 1u).x;
    }
    else
    {
        uint _1409 = _630 * 2u;
        _1429 = min(TranslucentBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1409).x, TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_NumLocalLights);
        _1430 = TranslucentBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1409 + 1u).x;
    }
    uint _1436 = min(_1429, (_267 ? TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumLocalLights : TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_NumLocalLights));
    float4 _1438 = 0.0f.xxxx;
    float4 _1441 = 0.0f.xxxx;
    _1438 = _1404;
    _1441 = _1405;
    float4 _1439 = 0.0f.xxxx;
    float4 _1442 = 0.0f.xxxx;
    [loop]
    for (uint _1443 = 0u; _1443 < _1436; _1438 = _1439, _1441 = _1442, _1443++)
    {
        uint _1448 = _1430 + _1443;
        float4 _1480 = 0.0f.xxxx;
        float4 _1481 = 0.0f.xxxx;
        float4 _1482 = 0.0f.xxxx;
        float4 _1483 = 0.0f.xxxx;
        float4 _1484 = 0.0f.xxxx;
        [branch]
        if (_267)
        {
            uint _1469 = TranslucentBasePass_Shared_Forward_CulledLightDataGrid.Load(_1448).x * 6u;
            _1480 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1469);
            _1481 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1469 + 1u);
            _1482 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1469 + 3u);
            _1483 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1469 + 2u);
            _1484 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1469 + 4u);
        }
        else
        {
            uint _1455 = TranslucentBasePass_Shared_ForwardISR_CulledLightDataGrid.Load(_1448).x * 6u;
            _1480 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1455);
            _1481 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1455 + 1u);
            _1482 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1455 + 3u);
            _1483 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1455 + 2u);
            _1484 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1455 + 4u);
        }
        float2 _1492 = spvUnpackHalf2x16(asuint(_1482.w));
        float _1493 = _1492.x;
        bool _1495 = _1481.w == 0.0f;
        uint _1499 = asuint(_1483.w);
        float4 _1515 = float4(float((_1499 & 1u) != 0u), float((_1499 & 2u) != 0u), float((_1499 & 4u) != 0u), float((_1499 & 8u) != 0u));
        uint _1516 = _1499 >> 4u;
        float3 _1531 = _1480.xyz - _346;
        float _1532 = dot(_1531, _1531);
        float _1549 = 0.0f;
        if (_1495)
        {
            float _1544 = _1532 * (_1480.w * _1480.w);
            float _1547 = clamp(1.0f - (_1544 * _1544), 0.0f, 1.0f);
            _1549 = _1547 * _1547;
        }
        else
        {
            float3 _1538 = _1531 * _1480.w;
            _1549 = pow(1.0f - clamp(dot(_1538, _1538), 0.0f, 1.0f), _1481.w);
        }
        float _1559 = 0.0f;
        if (_1482.x > (-2.0f))
        {
            float _1556 = clamp((dot(_1531 * rsqrt(_1532), _1483.xyz) - _1482.x) * _1482.y, 0.0f, 1.0f);
            _1559 = _1549 * (_1556 * _1556);
        }
        else
        {
            _1559 = _1549;
        }
        float3 _1607 = 0.0f.xxx;
        float3 _1608 = 0.0f.xxx;
        [branch]
        if (_1559 > 0.0f)
        {
            float _1570 = 0.0f;
            [branch]
            if (uint((_1499 & 255u) != 0u) != 0u)
            {
                _1570 = dot(float4(float((_1516 & 1u) != 0u), float((_1516 & 2u) != 0u), float((_1516 & 4u) != 0u), float((_1516 & 8u) != 0u)), 1.0f.xxxx) * lerp(1.0f, dot(_1403, _1515), dot(_1515, 1.0f.xxxx));
            }
            else
            {
                _1570 = 1.0f;
            }
            bool _1572 = (_1570 + _1570) > 0.0f;
            float3 _1604 = 0.0f.xxx;
            [branch]
            if (_1572)
            {
                float3 _1576 = _1484.xyz * (0.5f * _1493);
                float3 _1577 = _1531 - _1576;
                float3 _1578 = _1531 + _1576;
                float _1597 = 0.0f;
                [branch]
                if (_1493 > 0.0f)
                {
                    float _1590 = rsqrt(dot(_1577, _1577)) * rsqrt(dot(_1578, _1578));
                    _1597 = _1590 / ((((dot(_1577, _1578) * _1590) * 0.5f) + 0.5f) + _1590);
                }
                else
                {
                    _1597 = 1.0f / (dot(_1577, _1577) + 1.0f);
                }
                _1604 = ((_477 * 0.3183098733425140380859375f) * (_1495 ? _1597 : 1.0f)) * ((_1481.xyz * _1559) * _1570);
            }
            else
            {
                _1604 = 0.0f.xxx;
            }
            bool3 _1605 = _1572.xxx;
            _1607 = _1604;
            _1608 = float3(_1605.x ? 0.0f.xxx.x : 0.0f.xxx.x, _1605.y ? 0.0f.xxx.y : 0.0f.xxx.y, _1605.z ? 0.0f.xxx.z : 0.0f.xxx.z);
        }
        else
        {
            _1607 = 0.0f.xxx;
            _1608 = 0.0f.xxx;
        }
        [flatten]
        if (((_1499 >> 8u) & _646) != 0u)
        {
            _1439 = _1438 + float4(_1607, 0.0f);
            _1442 = _1441 + float4(_1608, 0.0f);
        }
        else
        {
            _1439 = _1438;
            _1442 = _1441;
        }
    }
    bool4 _1627 = (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1636 = int(asuint(asfloat(View_PrimitiveSceneData.Load4(_388 * 16 + 0)).w));
    float4 _1696 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _385) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1697 = _1696.x;
    float2 _1707 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_1697 * _1697, exp2((-9.27999973297119140625f) * clamp(dot(_365, _357), 0.0f, 1.0f))) * _1697) + _1696.y)) + _1696.zw;
    bool _1735 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _1803 = 0.0f.xxxx;
    if (_1735)
    {
        float4 _1753 = mul(((float4(_347, 0.0f) + float4(_322, 0.0f)) * 2097152.0f) + float4(_348, 1.0f), _321);
        float _1754 = _1753.w;
        float3 _1776 = float3(((_1753.xy / _1754.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_1754 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _1791 = 0.0f.xxxx;
        if (_1735)
        {
            float4 _1790 = 0.0f.xxxx;
            if (_267)
            {
                _1790 = TranslucentBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1776, 0.0f);
            }
            else
            {
                _1790 = TranslucentBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1776, 0.0f);
            }
            _1791 = _1790;
        }
        else
        {
            _1791 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _1803 = float4(_1791.xyz + (in_var_TEXCOORD7.xyz * _1791.w), _1791.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _1803 = in_var_TEXCOORD7;
    }
    float3 _1810 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[1].yzw, Material_Material_PreshaderBuffer[1].x.xxx), 0.0f.xxx);
    float _1868 = 0.0f;
    float3 _1869 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _1841 = abs(((_347 - asfloat(View_PrimitiveSceneData.Load4((_388 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_348 - asfloat(View_PrimitiveSceneData.Load4((_388 + 19u) * 16 + 0)).xyz));
        float3 _1842 = float3(asfloat(View_PrimitiveSceneData.Load4((_388 + 18u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_388 + 25u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_388 + 26u) * 16 + 0)).w) + 1.0f.xxx;
        bool _1844 = any(bool3(_1841.x > _1842.x, _1841.y > _1842.y, _1841.z > _1842.z));
        float3 _1866 = 0.0f.xxx;
        if (_1844)
        {
            float3 _1862 = frac(frac(((_347.x + _347.y) + _347.z) * 2420.113525390625f) + (((_348.x + _348.y) + _348.z) * 0.001154000055976212024688720703125f)).xxx;
            _1866 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_1862.x > 0.5f.xxx.x, _1862.y > 0.5f.xxx.y, _1862.z > 0.5f.xxx.z)));
        }
        else
        {
            _1866 = _1810;
        }
        _1868 = _1844 ? 1.0f : _386;
        _1869 = _1866;
    }
    else
    {
        _1868 = _386;
        _1869 = _1810;
    }
    float4 _1879 = float4((((lerp((float4(_1627.x ? 0.0f.xxxx.x : _1438.x, _1627.y ? 0.0f.xxxx.y : _1438.y, _1627.z ? 0.0f.xxxx.z : _1438.z, _1627.w ? 0.0f.xxxx.w : _1438.w).xyz + float4(_1627.x ? 0.0f.xxxx.x : _1441.x, _1627.y ? 0.0f.xxxx.y : _1441.y, _1627.z ? 0.0f.xxxx.z : _1441.z, _1627.w ? 0.0f.xxxx.w : _1441.w).xyz) + (((((float4(TranslucentBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler, float4((_365 * (2.0f * dot(_357, _365))) - _357, ReflectionCapture_ReflectionCapture_CaptureProperties[_1636].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_385, 0.001000000047497451305389404296875f))))).xyz * ReflectionCapture_ReflectionCapture_CaptureProperties[_1636].x, _235).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz * lerp(1.0f, min(dot(_558, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) / max(ReflectionCapture_ReflectionCapture_CaptureOffsetAndAverageBrightness[_1636].w * dot(View_View_PrecomputedIndirectSpecularColorScale, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)), 9.9999997473787516355514526367188e-05f), View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp((_385 * View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x) + View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y, 0.0f, 1.0f)))).xyz * ((_479 * _1707.x) + (clamp(50.0f * _479.y, 0.0f, 1.0f) * _1707.y).xxx)) * 1.0f) * max(1.0f.xxx, ((((((_479 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_479 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_479 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)), _477 + (_479 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + ((_558 * _477) * max(1.0f.xxx, ((((((_381 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_381 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_381 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f))) + _1869) * _1803.w) + _1803.xyz, _1868);
    float3 _1883 = _1879.xyz * View_View_PreExposure;
    out_var_SV_Target0 = float4(_1883.x, _1883.y, _1883.z, _1879.w);
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
