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

cbuffer Primitive
{
    uint Primitive_Primitive_Flags : packoffset(c0);
    int Primitive_Primitive_SingleCaptureIndex : packoffset(c0.w);
    float3 Primitive_Primitive_TilePosition : packoffset(c1);
    float Primitive_Primitive_ObjectBoundsX : packoffset(c18.w);
    float4 Primitive_Primitive_ObjectRelativeWorldPositionAndRadius : packoffset(c19);
    float Primitive_Primitive_ObjectBoundsY : packoffset(c25.w);
    float Primitive_Primitive_ObjectBoundsZ : packoffset(c26.w);
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
static float4 in_var_PACKED_TEXCOORDS[1];
static float4 in_var_TEXCOORD3;
static uint in_var_PACKED_EYE_INDEX;
static float4 in_var_TEXCOORD7;
static float4 out_var_SV_Target0;

struct SPIRV_Cross_Input
{
    float4 in_var_TEXCOORD10_centroid : TEXCOORD10_centroid;
    float4 in_var_TEXCOORD11_centroid : TEXCOORD11_centroid;
    float4 in_var_PACKED_TEXCOORDS[1] : PACKED_TEXCOORDS;
    float4 in_var_TEXCOORD3 : TEXCOORD3;
    nointerpolation uint in_var_PACKED_EYE_INDEX : PACKED_EYE_INDEX;
    float4 in_var_TEXCOORD7 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
};

static float _227 = 0.0f;
static float4x4 _228 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
static float _231 = 0.0f;

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
    bool _261 = false;
    float _258 = 1.0f / gl_FragCoord.w;
    float4x4 _309 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _310 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _311 = 0.0f.xxx;
    float4 _312 = 0.0f.xxxx;
    float4 _313 = 0.0f.xxxx;
    float2 _314 = 0.0f.xx;
    float4x4 _315 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _316 = 0.0f.xxx;
    float3 _317 = 0.0f.xxx;
    float3 _318 = 0.0f.xxx;
    do
    {
        _261 = in_var_PACKED_EYE_INDEX == 0u;
        if (_261)
        {
            _309 = View_View_ViewToClip;
            _310 = View_View_SVPositionToTranslatedWorld;
            _311 = View_View_ViewForward;
            _312 = View_View_ViewRectMin;
            _313 = View_View_NormalOverrideParameter;
            _314 = View_View_RoughnessOverrideParameter;
            _315 = View_View_RelativeWorldToClip;
            _316 = -View_View_MatrixTilePosition;
            _317 = -View_View_ViewTilePosition;
            _318 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _309 = InstancedView_InstancedView_ViewToClip;
            _310 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _311 = InstancedView_InstancedView_ViewForward;
            _312 = InstancedView_InstancedView_ViewRectMin;
            _313 = InstancedView_InstancedView_NormalOverrideParameter;
            _314 = InstancedView_InstancedView_RoughnessOverrideParameter;
            _315 = InstancedView_InstancedView_RelativeWorldToClip;
            _316 = -InstancedView_InstancedView_MatrixTilePosition;
            _317 = -InstancedView_InstancedView_ViewTilePosition;
            _318 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float4 _331 = float4(_231, _231, _231, 1.0f) * _258;
    float4 _336 = mul(float4(gl_FragCoord.xyz, 1.0f), _310);
    float3 _340 = _336.xyz / _336.w.xxx;
    float3 _341 = -_317;
    float3 _342 = _340 - _318;
    float3 _351 = 0.0f.xxx;
    if (_309[3].w >= 1.0f)
    {
        _351 = -_311;
    }
    else
    {
        _351 = normalize(-_340);
    }
    float3 _359 = normalize(mul(normalize((float3(0.0f, 0.0f, 1.0f) * _313.w) + _313.xyz), float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz))) * 1.0f;
    float4 _372 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, in_var_PACKED_TEXCOORDS[0].xy, View_View_MaterialTextureMipBias);
    float3 _379 = clamp(in_var_TEXCOORD3.xyz * _372.xyz, 0.0f.xxx, 1.0f.xxx);
    float _383 = (0.5f * _314.y) + _314.x;
    float _384 = clamp(in_var_TEXCOORD3.w * _372.w, 0.0f, 1.0f);
    float3 _396 = clamp((((_341 * 2097152.0f) + _342) * View_View_VolumetricLightmapWorldToUVScale) + View_View_VolumetricLightmapWorldToUVAdd, 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
    float4 _407 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_396.x), int(_396.y), int(_396.z), 0).xyz, 0)));
    float3 _422 = (((_407.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_396 / _407.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize;
    float _423 = _331.w;
    float _435 = 0.0f;
    [branch]
    if ((Primitive_Primitive_Flags & 4u) != 0u)
    {
        _435 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, _422, 0.0f).x;
    }
    else
    {
        _435 = 1.0f;
    }
    float4 _436 = float4(_435, 1.0f, 1.0f, 1.0f);
    float3 _443 = (_379 * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _450 = (0.039999999105930328369140625f.xxx * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _453 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _458 = 0.0f.xxx;
    if (_453)
    {
        _458 = _443 + (_450 * 0.449999988079071044921875f);
    }
    else
    {
        _458 = _443;
    }
    bool3 _459 = _453.xxx;
    float3 _460 = float3(_459.x ? 0.0f.xxx.x : _450.x, _459.y ? 0.0f.xxx.y : _450.y, _459.z ? 0.0f.xxx.z : _450.z);
    float4 _464 = View_VolumetricLightmapBrickAmbientVector.SampleLevel(View_SharedBilinearClampedSampler, _422, 0.0f);
    float3 _469 = 0.0f.xxx;
    _469.x = _464.x * 0.886227548122406005859375f;
    float3 _471 = _469;
    _471.y = _464.y * 0.886227548122406005859375f;
    float3 _473 = _471;
    _473.z = _464.z * 0.886227548122406005859375f;
    float3 _538 = 0.0f.xxx;
    if (TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z > 0)
    {
        float4 _500 = mul(((float4(_341, 0.0f) + float4(_316, 0.0f)) * 2097152.0f) + float4(_342, 1.0f), _315);
        float _501 = _500.w;
        float4 _526 = TranslucentBasePass_TranslucencyGIVolumeHistory0.SampleLevel(TranslucentBasePass_TranslucencyGIVolumeSampler, float3(((_500.xy / _501.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_501 * TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.x) + TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.y) * TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.z) / float(TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z)), 0.0f);
        float3 _531 = 0.0f.xxx;
        _531.x = _526.x * 0.886227548122406005859375f;
        float3 _533 = _531;
        _533.y = _526.y * 0.886227548122406005859375f;
        float3 _535 = _533;
        _535.z = _526.z * 0.886227548122406005859375f;
        _538 = max(0.0f.xxx, _535) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _538 = 0.0f.xxx;
    }
    float3 _539 = ((max(0.0f.xxx, _473) * 0.3183098733425140380859375f.xxx) * View_View_PrecomputedIndirectLightingColorScale) + _538;
    uint _575 = 0u;
    float3 _576 = 0.0f.xxx;
    int3 _577 = int3(0, 0, 0);
    [branch]
    if (_261)
    {
        _575 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridPixelSizeShift;
        _576 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams;
        _577 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _575 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
        _576 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_LightGridZParams;
        _577 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint2 _593 = uint2((gl_FragCoord.xy - _312.xy) * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (_575.xx & uint2(31u, 31u));
    int3 _603 = int3(0, 0, 0);
    [branch]
    if (_261)
    {
        _603 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _603 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint _611 = (((min(uint(max(0.0f, log2((_258 * _576.x) + _576.y) * _576.z)), uint(_577.z - 1)) * uint(_603.y)) + _593.y) * uint(_603.x)) + _593.x;
    uint _624 = (uint((Primitive_Primitive_Flags & 1024u) != 0u) | (uint((Primitive_Primitive_Flags & 2048u) != 0u) << 1u)) | (uint((Primitive_Primitive_Flags & 4096u) != 0u) << 2u);
    uint _644 = 0u;
    uint _645 = 0u;
    float2 _646 = 0.0f.xx;
    float3 _647 = 0.0f.xxx;
    [branch]
    if (_261)
    {
        _644 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_HasDirectionalLight;
        _645 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
        _646 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
        _647 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightColor;
    }
    else
    {
        _644 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_HasDirectionalLight;
        _645 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
        _646 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
        _647 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightColor;
    }
    float4 _1381 = 0.0f.xxxx;
    float4 _1382 = 0.0f.xxxx;
    float4 _1383 = 0.0f.xxxx;
    [branch]
    if (_644 != 0u)
    {
        float4 _661 = float4(_231, float((_645 & 2u) != 0u), float((_645 & 4u) != 0u), float((_645 & 8u) != 0u));
        _661.x = 1.0f;
        float4 _662 = _436;
        _662.x = 1.0f;
        float _737 = 0.0f;
        if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades > 0u)
        {
            float4 _670 = _423.xxxx;
            float4 _672 = float4(bool4(_670.x >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.x, _670.y >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.y, _670.z >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.z, _670.w >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.w));
            uint _680 = uint(((_672.x + _672.y) + _672.z) + _672.w);
            float _736 = 0.0f;
            if (_680 < TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades)
            {
                float4 _690 = mul(float4(_340, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[_680]);
                float2 _694 = _690.xy / _690.w.xx;
                bool2 _698 = bool2(_694.x >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_680].xy.x, _694.y >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_680].xy.y);
                bool2 _700 = bool2(_694.x <= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_680].zw.x, _694.y <= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_680].zw.y);
                float _735 = 0.0f;
                if (all(bool2(_698.x && _700.x, _698.y && _700.y)))
                {
                    float2 _713 = (_694 * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.xy) - 0.5f.xx;
                    float2 _714 = frac(_713);
                    float4 _726 = clamp((TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlas.GatherRed(TranslucentBasePass_Shared_Forward_ShadowmapSampler, (floor(_713) + 1.0f.xx) * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.zw) * 4000.0f) - (((1.0f - _690.z) * 4000.0f) - 1.0f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
                    float2 _730 = lerp(_726.wx, _726.zy, _714.xx);
                    _735 = lerp(_730.x, _730.y, _714.y);
                }
                else
                {
                    _735 = 1.0f;
                }
                _736 = _735;
            }
            else
            {
                _736 = 1.0f;
            }
            _737 = _736;
        }
        else
        {
            _737 = 1.0f;
        }
        float _1343 = 0.0f;
        [branch]
        if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM != (-1))
        {
            float3 _747 = _340 - View_View_RelativePreViewTranslation;
            float _1341 = 0.0f;
            do
            {
                uint _750 = uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM);
                uint _751 = _750 * 336u;
                uint _753 = (_751 + 128u) >> 2u;
                float4x4 _767 = _228;
                _767[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_753 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_753 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_753 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_753 + 3u) * 4 + 0)));
                uint _769 = (_751 + 144u) >> 2u;
                float4x4 _783 = _767;
                _783[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_769 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_769 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_769 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_769 + 3u) * 4 + 0)));
                uint _785 = (_751 + 160u) >> 2u;
                float4x4 _799 = _783;
                _799[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_785 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_785 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_785 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_785 + 3u) * 4 + 0)));
                uint _801 = (_751 + 176u) >> 2u;
                float4x4 _815 = _799;
                _815[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_801 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_801 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_801 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_801 + 3u) * 4 + 0)));
                uint _817 = (_751 + 256u) >> 2u;
                float3 _827 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_817 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_817 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_817 + 2u) * 4 + 0)));
                uint _829 = (_751 + 268u) >> 2u;
                uint _833 = (_751 + 272u) >> 2u;
                uint _845 = (_751 + 288u) >> 2u;
                if (VirtualShadowMap_ProjectionData.Load(_829 * 4 + 0) == 0u)
                {
                    int _1047 = max(0, (int(floor(log2(length(((View_View_ViewTilePosition - (-_827)) * 2097152.0f) + (_747 - (-asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_845 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_845 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_845 + 2u) * 4 + 0))))))) + asfloat(VirtualShadowMap_ProjectionData.Load(((_751 + 300u) >> 2u) * 4 + 0)))) - int(VirtualShadowMap_ProjectionData.Load(((_751 + 316u) >> 2u) * 4 + 0))));
                    if (_1047 < int(VirtualShadowMap_ProjectionData.Load(((_751 + 320u) >> 2u) * 4 + 0)))
                    {
                        int _1051 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM + _1047;
                        uint _1052 = uint(_1051);
                        uint _1053 = _1052 * 336u;
                        uint _1055 = (_1053 + 128u) >> 2u;
                        float4x4 _1069 = _228;
                        _1069[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1055 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1055 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1055 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1055 + 3u) * 4 + 0)));
                        uint _1071 = (_1053 + 144u) >> 2u;
                        float4x4 _1085 = _1069;
                        _1085[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1071 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1071 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1071 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1071 + 3u) * 4 + 0)));
                        uint _1087 = (_1053 + 160u) >> 2u;
                        float4x4 _1101 = _1085;
                        _1101[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1087 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1087 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1087 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1087 + 3u) * 4 + 0)));
                        uint _1103 = (_1053 + 176u) >> 2u;
                        float4x4 _1117 = _1101;
                        _1117[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1103 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1103 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1103 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1103 + 3u) * 4 + 0)));
                        uint _1119 = (_1053 + 256u) >> 2u;
                        uint _1131 = (_1053 + 272u) >> 2u;
                        float4 _1150 = mul(float4(((View_View_ViewTilePosition + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1119 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1119 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1119 + 2u) * 4 + 0)))) * 2097152.0f) + (_747 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1131 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1131 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1131 + 2u) * 4 + 0)))), 1.0f), _1117);
                        float2 _1151 = _1150.xy;
                        uint2 _1153 = uint2(_1151 * 128.0f);
                        uint _1159 = (_1052 * 21845u) + (_1153.x + (_1153.y << 7u));
                        uint _1163 = (VirtualShadowMap_PageTable.Load(_1159 * 4 + 0) >> 20u) & 63u;
                        bool _1172 = (VirtualShadowMap_PageTable.Load(_1159 * 4 + 0) & 134217728u) != 0u;
                        float _1334 = 0.0f;
                        bool _1335 = false;
                        if (_1172)
                        {
                            float _1310 = 0.0f;
                            float _1311 = 0.0f;
                            uint2 _1312 = uint2(0u, 0u);
                            uint2 _1313 = uint2(0u, 0u);
                            bool _1314 = false;
                            if (_1163 > 0u)
                            {
                                uint _1185 = (_1053 + 304u) >> 2u;
                                uint _1188 = _1185 + 1u;
                                uint _1193 = uint(int(_1052 + _1163));
                                uint _1196 = ((_1193 * 336u) + 304u) >> 2u;
                                int _1208 = int(_1163);
                                uint2 _1216 = ((_1153 - uint2(int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_1185 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_1188 * 4 + 0))))) + uint2((int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_1196 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1196 + 1u) * 4 + 0)))) << (_1208.xx & int2(31, 31)))) >> (_1163.xx & uint2(31u, 31u));
                                uint2 _1217 = _1216 * uint2(128u, 128u);
                                uint _1220 = (_1053 + 112u) >> 2u;
                                uint _1240 = uint(_1051 + _1208) * 336u;
                                uint _1242 = (_1240 + 112u) >> 2u;
                                uint _1257 = (_1240 + 304u) >> 2u;
                                float _1278 = (_1208 >= 0) ? (1.0f / float(1u << (uint(_1208) & 31u))) : float(1u << (uint(-_1208) & 31u));
                                uint _1297 = (_1193 * 21845u) + (_1216.x + (_1216.y << 7u));
                                _1310 = _1278;
                                _1311 = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1242 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1242 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1242 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1242 + 3u) * 4 + 0))).z - (_1278 * asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1220 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1220 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1220 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1220 + 3u) * 4 + 0))).z);
                                _1312 = clamp(uint2(((_1151 * _1278) + ((float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_1257 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1257 + 1u) * 4 + 0)))) - (float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_1185 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_1188 * 4 + 0)))) * _1278)) * 0.25f).xy) * 16384.0f), _1217, _1217 + uint2(127u, 127u));
                                _1313 = uint2(VirtualShadowMap_PageTable.Load(_1297 * 4 + 0) & 1023u, (VirtualShadowMap_PageTable.Load(_1297 * 4 + 0) >> 10u) & 1023u);
                                _1314 = ((VirtualShadowMap_PageTable.Load(_1297 * 4 + 0) & 134217728u) != 0u) && (((VirtualShadowMap_PageTable.Load(_1297 * 4 + 0) >> 20u) & 63u) == 0u);
                            }
                            else
                            {
                                _1310 = 1.0f;
                                _1311 = 0.0f;
                                _1312 = uint2(_1151 * 16384.0f);
                                _1313 = uint2(VirtualShadowMap_PageTable.Load(_1159 * 4 + 0) & 1023u, (VirtualShadowMap_PageTable.Load(_1159 * 4 + 0) >> 10u) & 1023u);
                                _1314 = _1172 && (((VirtualShadowMap_PageTable.Load(_1159 * 4 + 0) >> 20u) & 63u) == 0u);
                            }
                            float _1332 = 0.0f;
                            if (_1314)
                            {
                                uint2 _1319 = (_1313 * uint2(128u, 128u)) + (_1312 & uint2(127u, 127u));
                                _1332 = (asfloat(VirtualShadowMap_PhysicalPagePool.Load(int3(int3(int(_1319.x), int(_1319.y), 0).xy, 0)).x) - _1311) / _1310;
                            }
                            else
                            {
                                _1332 = 0.0f;
                            }
                            _1334 = _1332;
                            _1335 = _1314 ? true : false;
                        }
                        else
                        {
                            _1334 = 0.0f;
                            _1335 = false;
                        }
                        if (_1335)
                        {
                            _1341 = (_1334 > _1150.z) ? 0.0f : 1.0f;
                            break;
                        }
                    }
                }
                else
                {
                    float3 _880 = ((View_View_ViewTilePosition + _827) * 2097152.0f) + (_747 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_833 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_833 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_833 + 2u) * 4 + 0))));
                    int _977 = 0;
                    float4x4 _978 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    if (VirtualShadowMap_ProjectionData.Load(_829 * 4 + 0) != 2u)
                    {
                        uint _908 = 0u;
                        do
                        {
                            float _886 = _880.x;
                            float _887 = abs(_886);
                            float _888 = _880.y;
                            float _889 = abs(_888);
                            float _891 = _880.z;
                            float _892 = abs(_891);
                            if ((_887 >= _889) && (_887 >= _892))
                            {
                                _908 = (_886 > 0.0f) ? 0u : 1u;
                                break;
                            }
                            else
                            {
                                if (_889 > _892)
                                {
                                    _908 = (_888 > 0.0f) ? 2u : 3u;
                                    break;
                                }
                                else
                                {
                                    _908 = (_891 > 0.0f) ? 4u : 5u;
                                    break;
                                }
                            }
                        } while(false);
                        int _910 = int(_750 + _908);
                        uint _912 = uint(_910) * 336u;
                        uint _914 = (_912 + 128u) >> 2u;
                        float4x4 _928 = _228;
                        _928[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_914 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_914 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_914 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_914 + 3u) * 4 + 0)));
                        uint _930 = (_912 + 144u) >> 2u;
                        float4x4 _944 = _928;
                        _944[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_930 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_930 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_930 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_930 + 3u) * 4 + 0)));
                        uint _946 = (_912 + 160u) >> 2u;
                        float4x4 _960 = _944;
                        _960[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_946 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_946 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_946 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_946 + 3u) * 4 + 0)));
                        uint _962 = (_912 + 176u) >> 2u;
                        float4x4 _976 = _960;
                        _976[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_962 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_962 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_962 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_962 + 3u) * 4 + 0)));
                        _977 = _910;
                        _978 = _976;
                    }
                    else
                    {
                        _977 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM;
                        _978 = _815;
                    }
                    float4 _983 = mul(float4(_880, 1.0f), _978);
                    float3 _987 = _983.xyz / _983.w.xxx;
                    float2 _988 = _987.xy;
                    float _1030 = 0.0f;
                    bool _1031 = false;
                    do
                    {
                        uint2 _993 = uint2(_988 * 128.0f);
                        uint _999 = (uint(_977) * 21845u) + (_993.x + (_993.y << 7u));
                        uint2 _1017 = (uint2(VirtualShadowMap_PageTable.Load(_999 * 4 + 0) & 1023u, (VirtualShadowMap_PageTable.Load(_999 * 4 + 0) >> 10u) & 1023u) * uint2(128u, 128u)) + (uint2(_988 * float(16384u >> (((VirtualShadowMap_PageTable.Load(_999 * 4 + 0) >> 20u) & 63u) & 31u))) & uint2(127u, 127u));
                        if ((VirtualShadowMap_PageTable.Load(_999 * 4 + 0) & 134217728u) != 0u)
                        {
                            _1030 = asfloat(VirtualShadowMap_PhysicalPagePool.Load(int3(int3(int(_1017.x), int(_1017.y), 0).xy, 0)).x);
                            _1031 = true;
                            break;
                        }
                        _1030 = 0.0f;
                        _1031 = false;
                        break;
                    } while(false);
                    if (_1031)
                    {
                        _1341 = (_1030 > _987.z) ? 0.0f : 1.0f;
                        break;
                    }
                }
                _1341 = 1.0f;
                break;
            } while(false);
            _1343 = _737 * _1341;
        }
        else
        {
            _1343 = _737;
        }
        float _1351 = clamp((_423 * _646.x) + _646.y, 0.0f, 1.0f);
        float _1353 = lerp(_1343, lerp(1.0f, dot(_662, _661), dot(_661, 1.0f.xxxx)), _1351 * _1351);
        bool _1356 = (_1353 + min(_1353, 1.0f)) > 0.0f;
        float3 _1364 = 0.0f.xxx;
        [branch]
        if (_1356)
        {
            _1364 = ((_458 * 0.3183098733425140380859375f) * 1.0f) * ((_647 * 1.0f) * _1353);
        }
        else
        {
            _1364 = 0.0f.xxx;
        }
        bool3 _1365 = _1356.xxx;
        float4 _1370 = float4(_1364, 0.0f);
        float4 _1374 = float4(float3(_1365.x ? 0.0f.xxx.x : 0.0f.xxx.x, _1365.y ? 0.0f.xxx.y : 0.0f.xxx.y, _1365.z ? 0.0f.xxx.z : 0.0f.xxx.z), 0.0f);
        bool4 _1378 = (((_645 >> 8u) & _624) != 0u).xxxx;
        _1381 = _662;
        _1382 = float4(_1378.x ? _1370.x : 0.0f.xxxx.x, _1378.y ? _1370.y : 0.0f.xxxx.y, _1378.z ? _1370.z : 0.0f.xxxx.z, _1378.w ? _1370.w : 0.0f.xxxx.w);
        _1383 = float4(_1378.x ? _1374.x : 0.0f.xxxx.x, _1378.y ? _1374.y : 0.0f.xxxx.y, _1378.z ? _1374.z : 0.0f.xxxx.z, _1378.w ? _1374.w : 0.0f.xxxx.w);
    }
    else
    {
        _1381 = _436;
        _1382 = 0.0f.xxxx;
        _1383 = 0.0f.xxxx;
    }
    uint _1407 = 0u;
    uint _1408 = 0u;
    [branch]
    if (_261)
    {
        uint _1397 = _611 * 2u;
        _1407 = min(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1397).x, TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumLocalLights);
        _1408 = TranslucentBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1397 + 1u).x;
    }
    else
    {
        uint _1387 = _611 * 2u;
        _1407 = min(TranslucentBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1387).x, TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_NumLocalLights);
        _1408 = TranslucentBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1387 + 1u).x;
    }
    uint _1414 = min(_1407, (_261 ? TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumLocalLights : TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_NumLocalLights));
    float4 _1416 = 0.0f.xxxx;
    float4 _1419 = 0.0f.xxxx;
    _1416 = _1382;
    _1419 = _1383;
    float4 _1417 = 0.0f.xxxx;
    float4 _1420 = 0.0f.xxxx;
    [loop]
    for (uint _1421 = 0u; _1421 < _1414; _1416 = _1417, _1419 = _1420, _1421++)
    {
        uint _1426 = _1408 + _1421;
        float4 _1458 = 0.0f.xxxx;
        float4 _1459 = 0.0f.xxxx;
        float4 _1460 = 0.0f.xxxx;
        float4 _1461 = 0.0f.xxxx;
        float4 _1462 = 0.0f.xxxx;
        [branch]
        if (_261)
        {
            uint _1447 = TranslucentBasePass_Shared_Forward_CulledLightDataGrid.Load(_1426).x * 6u;
            _1458 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1447);
            _1459 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1447 + 1u);
            _1460 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1447 + 3u);
            _1461 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1447 + 2u);
            _1462 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1447 + 4u);
        }
        else
        {
            uint _1433 = TranslucentBasePass_Shared_ForwardISR_CulledLightDataGrid.Load(_1426).x * 6u;
            _1458 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1433);
            _1459 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1433 + 1u);
            _1460 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1433 + 3u);
            _1461 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1433 + 2u);
            _1462 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1433 + 4u);
        }
        float2 _1470 = spvUnpackHalf2x16(asuint(_1460.w));
        float _1471 = _1470.x;
        bool _1473 = _1459.w == 0.0f;
        uint _1477 = asuint(_1461.w);
        float4 _1493 = float4(float((_1477 & 1u) != 0u), float((_1477 & 2u) != 0u), float((_1477 & 4u) != 0u), float((_1477 & 8u) != 0u));
        uint _1494 = _1477 >> 4u;
        float3 _1509 = _1458.xyz - _340;
        float _1510 = dot(_1509, _1509);
        float _1527 = 0.0f;
        if (_1473)
        {
            float _1522 = _1510 * (_1458.w * _1458.w);
            float _1525 = clamp(1.0f - (_1522 * _1522), 0.0f, 1.0f);
            _1527 = _1525 * _1525;
        }
        else
        {
            float3 _1516 = _1509 * _1458.w;
            _1527 = pow(1.0f - clamp(dot(_1516, _1516), 0.0f, 1.0f), _1459.w);
        }
        float _1537 = 0.0f;
        if (_1460.x > (-2.0f))
        {
            float _1534 = clamp((dot(_1509 * rsqrt(_1510), _1461.xyz) - _1460.x) * _1460.y, 0.0f, 1.0f);
            _1537 = _1527 * (_1534 * _1534);
        }
        else
        {
            _1537 = _1527;
        }
        float3 _1585 = 0.0f.xxx;
        float3 _1586 = 0.0f.xxx;
        [branch]
        if (_1537 > 0.0f)
        {
            float _1548 = 0.0f;
            [branch]
            if (uint((_1477 & 255u) != 0u) != 0u)
            {
                _1548 = dot(float4(float((_1494 & 1u) != 0u), float((_1494 & 2u) != 0u), float((_1494 & 4u) != 0u), float((_1494 & 8u) != 0u)), 1.0f.xxxx) * lerp(1.0f, dot(_1381, _1493), dot(_1493, 1.0f.xxxx));
            }
            else
            {
                _1548 = 1.0f;
            }
            bool _1550 = (_1548 + _1548) > 0.0f;
            float3 _1582 = 0.0f.xxx;
            [branch]
            if (_1550)
            {
                float3 _1554 = _1462.xyz * (0.5f * _1471);
                float3 _1555 = _1509 - _1554;
                float3 _1556 = _1509 + _1554;
                float _1575 = 0.0f;
                [branch]
                if (_1471 > 0.0f)
                {
                    float _1568 = rsqrt(dot(_1555, _1555)) * rsqrt(dot(_1556, _1556));
                    _1575 = _1568 / ((((dot(_1555, _1556) * _1568) * 0.5f) + 0.5f) + _1568);
                }
                else
                {
                    _1575 = 1.0f / (dot(_1555, _1555) + 1.0f);
                }
                _1582 = ((_458 * 0.3183098733425140380859375f) * (_1473 ? _1575 : 1.0f)) * ((_1459.xyz * _1537) * _1548);
            }
            else
            {
                _1582 = 0.0f.xxx;
            }
            bool3 _1583 = _1550.xxx;
            _1585 = _1582;
            _1586 = float3(_1583.x ? 0.0f.xxx.x : 0.0f.xxx.x, _1583.y ? 0.0f.xxx.y : 0.0f.xxx.y, _1583.z ? 0.0f.xxx.z : 0.0f.xxx.z);
        }
        else
        {
            _1585 = 0.0f.xxx;
            _1586 = 0.0f.xxx;
        }
        [flatten]
        if (((_1477 >> 8u) & _624) != 0u)
        {
            _1417 = _1416 + float4(_1585, 0.0f);
            _1420 = _1419 + float4(_1586, 0.0f);
        }
        else
        {
            _1417 = _1416;
            _1420 = _1419;
        }
    }
    bool4 _1605 = (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1614 = int(uint(Primitive_Primitive_SingleCaptureIndex));
    float4 _1674 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _383) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1675 = _1674.x;
    float2 _1685 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_1675 * _1675, exp2((-9.27999973297119140625f) * clamp(dot(_359, _351), 0.0f, 1.0f))) * _1675) + _1674.y)) + _1674.zw;
    bool _1713 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _1779 = 0.0f.xxxx;
    if (_1713)
    {
        float4 _1731 = mul(((float4(_341, 0.0f) + float4(_316, 0.0f)) * 2097152.0f) + float4(_342, 1.0f), _315);
        float _1732 = _1731.w;
        float3 _1754 = float3(((_1731.xy / _1732.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_1732 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _1767 = 0.0f.xxxx;
        if (_1713)
        {
            float4 _1766 = 0.0f.xxxx;
            if (_261)
            {
                _1766 = TranslucentBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1754, 0.0f);
            }
            else
            {
                _1766 = TranslucentBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1754, 0.0f);
            }
            _1767 = _1766;
        }
        else
        {
            _1767 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _1779 = float4(_1767.xyz + (in_var_TEXCOORD7.xyz * _1767.w), _1767.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _1779 = in_var_TEXCOORD7;
    }
    float3 _1786 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[1].yzw, Material_Material_PreshaderBuffer[1].x.xxx), 0.0f.xxx);
    float _1835 = 0.0f;
    float3 _1836 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _1808 = abs(((_341 - Primitive_Primitive_TilePosition) * 2097152.0f) + (_342 - Primitive_Primitive_ObjectRelativeWorldPositionAndRadius.xyz));
        float3 _1809 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        bool _1811 = any(bool3(_1808.x > _1809.x, _1808.y > _1809.y, _1808.z > _1809.z));
        float3 _1833 = 0.0f.xxx;
        if (_1811)
        {
            float3 _1829 = frac(frac(((_341.x + _341.y) + _341.z) * 2420.113525390625f) + (((_342.x + _342.y) + _342.z) * 0.001154000055976212024688720703125f)).xxx;
            _1833 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_1829.x > 0.5f.xxx.x, _1829.y > 0.5f.xxx.y, _1829.z > 0.5f.xxx.z)));
        }
        else
        {
            _1833 = _1786;
        }
        _1835 = _1811 ? 1.0f : _384;
        _1836 = _1833;
    }
    else
    {
        _1835 = _384;
        _1836 = _1786;
    }
    float4 _1846 = float4((((lerp((float4(_1605.x ? 0.0f.xxxx.x : _1416.x, _1605.y ? 0.0f.xxxx.y : _1416.y, _1605.z ? 0.0f.xxxx.z : _1416.z, _1605.w ? 0.0f.xxxx.w : _1416.w).xyz + float4(_1605.x ? 0.0f.xxxx.x : _1419.x, _1605.y ? 0.0f.xxxx.y : _1419.y, _1605.z ? 0.0f.xxxx.z : _1419.z, _1605.w ? 0.0f.xxxx.w : _1419.w).xyz) + (((((float4(TranslucentBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler, float4((_359 * (2.0f * dot(_351, _359))) - _351, ReflectionCapture_ReflectionCapture_CaptureProperties[_1614].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_383, 0.001000000047497451305389404296875f))))).xyz * ReflectionCapture_ReflectionCapture_CaptureProperties[_1614].x, _227).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz * lerp(1.0f, min(dot(_539, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) / max(ReflectionCapture_ReflectionCapture_CaptureOffsetAndAverageBrightness[_1614].w * dot(View_View_PrecomputedIndirectSpecularColorScale, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)), 9.9999997473787516355514526367188e-05f), View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp((_383 * View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x) + View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y, 0.0f, 1.0f)))).xyz * ((_460 * _1685.x) + (clamp(50.0f * _460.y, 0.0f, 1.0f) * _1685.y).xxx)) * 1.0f) * max(1.0f.xxx, ((((((_460 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_460 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_460 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)), _458 + (_460 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + ((_539 * _458) * max(1.0f.xxx, ((((((_379 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_379 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_379 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f))) + _1836) * _1779.w) + _1779.xyz, _1835);
    float3 _1850 = _1846.xyz * View_View_PreExposure;
    out_var_SV_Target0 = float4(_1850.x, _1850.y, _1850.z, _1846.w);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD10_centroid = stage_input.in_var_TEXCOORD10_centroid;
    in_var_TEXCOORD11_centroid = stage_input.in_var_TEXCOORD11_centroid;
    in_var_PACKED_TEXCOORDS = stage_input.in_var_PACKED_TEXCOORDS;
    in_var_TEXCOORD3 = stage_input.in_var_TEXCOORD3;
    in_var_PACKED_EYE_INDEX = stage_input.in_var_PACKED_EYE_INDEX;
    in_var_TEXCOORD7 = stage_input.in_var_TEXCOORD7;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    return stage_output;
}
