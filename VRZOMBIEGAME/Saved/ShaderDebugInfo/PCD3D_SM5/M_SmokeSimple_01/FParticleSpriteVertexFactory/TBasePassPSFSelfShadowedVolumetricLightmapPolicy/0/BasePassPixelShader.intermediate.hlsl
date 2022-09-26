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
static float4 in_var_TEXCOORD10;
static float4 in_var_TEXCOORD11;
static float4 in_var_TEXCOORD2;
static float4 in_var_TEXCOORD3[1];
static uint in_var_PACKED_EYE_INDEX;
static float4 in_var_TEXCOORD7;
static float4 out_var_SV_Target0;

struct SPIRV_Cross_Input
{
    float4 in_var_TEXCOORD10 : TEXCOORD10;
    float4 in_var_TEXCOORD11 : TEXCOORD11;
    float4 in_var_TEXCOORD2 : TEXCOORD2;
    float4 in_var_TEXCOORD3[1] : TEXCOORD3;
    nointerpolation uint in_var_PACKED_EYE_INDEX : PACKED_EYE_INDEX;
    float4 in_var_TEXCOORD7 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
};

static float _228 = 0.0f;
static float4x4 _229 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
static float _232 = 0.0f;

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
    bool _262 = false;
    float _259 = 1.0f / gl_FragCoord.w;
    float4x4 _310 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _311 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _312 = 0.0f.xxx;
    float4 _313 = 0.0f.xxxx;
    float4 _314 = 0.0f.xxxx;
    float2 _315 = 0.0f.xx;
    float4x4 _316 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _317 = 0.0f.xxx;
    float3 _318 = 0.0f.xxx;
    float3 _319 = 0.0f.xxx;
    do
    {
        _262 = in_var_PACKED_EYE_INDEX == 0u;
        if (_262)
        {
            _310 = View_View_ViewToClip;
            _311 = View_View_SVPositionToTranslatedWorld;
            _312 = View_View_ViewForward;
            _313 = View_View_ViewRectMin;
            _314 = View_View_NormalOverrideParameter;
            _315 = View_View_RoughnessOverrideParameter;
            _316 = View_View_RelativeWorldToClip;
            _317 = -View_View_MatrixTilePosition;
            _318 = -View_View_ViewTilePosition;
            _319 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _310 = InstancedView_InstancedView_ViewToClip;
            _311 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _312 = InstancedView_InstancedView_ViewForward;
            _313 = InstancedView_InstancedView_ViewRectMin;
            _314 = InstancedView_InstancedView_NormalOverrideParameter;
            _315 = InstancedView_InstancedView_RoughnessOverrideParameter;
            _316 = InstancedView_InstancedView_RelativeWorldToClip;
            _317 = -InstancedView_InstancedView_MatrixTilePosition;
            _318 = -InstancedView_InstancedView_ViewTilePosition;
            _319 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float4 _332 = float4(_232, _232, _232, 1.0f) * _259;
    float4 _337 = mul(float4(gl_FragCoord.xyz, 1.0f), _311);
    float3 _341 = _337.xyz / _337.w.xxx;
    float3 _342 = -_318;
    float3 _343 = _341 - _319;
    float3 _352 = 0.0f.xxx;
    if (_310[3].w >= 1.0f)
    {
        _352 = -_312;
    }
    else
    {
        _352 = normalize(-_341);
    }
    float3 _360 = normalize(mul(normalize((float3(0.0f, 0.0f, 1.0f) * _314.w) + _314.xyz), float3x3(in_var_TEXCOORD10.xyz, cross(in_var_TEXCOORD11.xyz, in_var_TEXCOORD10.xyz) * in_var_TEXCOORD11.w, in_var_TEXCOORD11.xyz))) * 1.0f;
    float4 _373 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, float2(in_var_TEXCOORD3[0].x, in_var_TEXCOORD3[0].y), View_View_MaterialTextureMipBias);
    float3 _380 = clamp(in_var_TEXCOORD2.xyz * _373.xyz, 0.0f.xxx, 1.0f.xxx);
    float _384 = (0.5f * _315.y) + _315.x;
    float _385 = clamp(in_var_TEXCOORD2.w * _373.w, 0.0f, 1.0f);
    float3 _397 = clamp((((_342 * 2097152.0f) + _343) * View_View_VolumetricLightmapWorldToUVScale) + View_View_VolumetricLightmapWorldToUVAdd, 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
    float4 _408 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_397.x), int(_397.y), int(_397.z), 0).xyz, 0)));
    float3 _423 = (((_408.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_397 / _408.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize;
    float _424 = _332.w;
    float _436 = 0.0f;
    [branch]
    if ((Primitive_Primitive_Flags & 4u) != 0u)
    {
        _436 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, _423, 0.0f).x;
    }
    else
    {
        _436 = 1.0f;
    }
    float4 _437 = float4(_436, 1.0f, 1.0f, 1.0f);
    float3 _444 = (_380 * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _451 = (0.039999999105930328369140625f.xxx * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _454 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _459 = 0.0f.xxx;
    if (_454)
    {
        _459 = _444 + (_451 * 0.449999988079071044921875f);
    }
    else
    {
        _459 = _444;
    }
    bool3 _460 = _454.xxx;
    float3 _461 = float3(_460.x ? 0.0f.xxx.x : _451.x, _460.y ? 0.0f.xxx.y : _451.y, _460.z ? 0.0f.xxx.z : _451.z);
    float4 _465 = View_VolumetricLightmapBrickAmbientVector.SampleLevel(View_SharedBilinearClampedSampler, _423, 0.0f);
    float3 _470 = 0.0f.xxx;
    _470.x = _465.x * 0.886227548122406005859375f;
    float3 _472 = _470;
    _472.y = _465.y * 0.886227548122406005859375f;
    float3 _474 = _472;
    _474.z = _465.z * 0.886227548122406005859375f;
    float3 _539 = 0.0f.xxx;
    if (TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z > 0)
    {
        float4 _501 = mul(((float4(_342, 0.0f) + float4(_317, 0.0f)) * 2097152.0f) + float4(_343, 1.0f), _316);
        float _502 = _501.w;
        float4 _527 = TranslucentBasePass_TranslucencyGIVolumeHistory0.SampleLevel(TranslucentBasePass_TranslucencyGIVolumeSampler, float3(((_501.xy / _502.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_502 * TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.x) + TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.y) * TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.z) / float(TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z)), 0.0f);
        float3 _532 = 0.0f.xxx;
        _532.x = _527.x * 0.886227548122406005859375f;
        float3 _534 = _532;
        _534.y = _527.y * 0.886227548122406005859375f;
        float3 _536 = _534;
        _536.z = _527.z * 0.886227548122406005859375f;
        _539 = max(0.0f.xxx, _536) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _539 = 0.0f.xxx;
    }
    float3 _540 = ((max(0.0f.xxx, _474) * 0.3183098733425140380859375f.xxx) * View_View_PrecomputedIndirectLightingColorScale) + _539;
    uint _576 = 0u;
    float3 _577 = 0.0f.xxx;
    int3 _578 = int3(0, 0, 0);
    [branch]
    if (_262)
    {
        _576 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridPixelSizeShift;
        _577 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams;
        _578 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _576 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
        _577 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_LightGridZParams;
        _578 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint2 _594 = uint2((gl_FragCoord.xy - _313.xy) * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (_576.xx & uint2(31u, 31u));
    int3 _604 = int3(0, 0, 0);
    [branch]
    if (_262)
    {
        _604 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _604 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint _612 = (((min(uint(max(0.0f, log2((_259 * _577.x) + _577.y) * _577.z)), uint(_578.z - 1)) * uint(_604.y)) + _594.y) * uint(_604.x)) + _594.x;
    uint _625 = (uint((Primitive_Primitive_Flags & 1024u) != 0u) | (uint((Primitive_Primitive_Flags & 2048u) != 0u) << 1u)) | (uint((Primitive_Primitive_Flags & 4096u) != 0u) << 2u);
    uint _645 = 0u;
    uint _646 = 0u;
    float2 _647 = 0.0f.xx;
    float3 _648 = 0.0f.xxx;
    [branch]
    if (_262)
    {
        _645 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_HasDirectionalLight;
        _646 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
        _647 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
        _648 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightColor;
    }
    else
    {
        _645 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_HasDirectionalLight;
        _646 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
        _647 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
        _648 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightColor;
    }
    float4 _1382 = 0.0f.xxxx;
    float4 _1383 = 0.0f.xxxx;
    float4 _1384 = 0.0f.xxxx;
    [branch]
    if (_645 != 0u)
    {
        float4 _662 = float4(_232, float((_646 & 2u) != 0u), float((_646 & 4u) != 0u), float((_646 & 8u) != 0u));
        _662.x = 1.0f;
        float4 _663 = _437;
        _663.x = 1.0f;
        float _738 = 0.0f;
        if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades > 0u)
        {
            float4 _671 = _424.xxxx;
            float4 _673 = float4(bool4(_671.x >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.x, _671.y >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.y, _671.z >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.z, _671.w >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.w));
            uint _681 = uint(((_673.x + _673.y) + _673.z) + _673.w);
            float _737 = 0.0f;
            if (_681 < TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades)
            {
                float4 _691 = mul(float4(_341, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[_681]);
                float2 _695 = _691.xy / _691.w.xx;
                bool2 _699 = bool2(_695.x >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_681].xy.x, _695.y >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_681].xy.y);
                bool2 _701 = bool2(_695.x <= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_681].zw.x, _695.y <= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_681].zw.y);
                float _736 = 0.0f;
                if (all(bool2(_699.x && _701.x, _699.y && _701.y)))
                {
                    float2 _714 = (_695 * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.xy) - 0.5f.xx;
                    float2 _715 = frac(_714);
                    float4 _727 = clamp((TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlas.GatherRed(TranslucentBasePass_Shared_Forward_ShadowmapSampler, (floor(_714) + 1.0f.xx) * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.zw) * 4000.0f) - (((1.0f - _691.z) * 4000.0f) - 1.0f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
                    float2 _731 = lerp(_727.wx, _727.zy, _715.xx);
                    _736 = lerp(_731.x, _731.y, _715.y);
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
            _738 = _737;
        }
        else
        {
            _738 = 1.0f;
        }
        float _1344 = 0.0f;
        [branch]
        if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM != (-1))
        {
            float3 _748 = _341 - View_View_RelativePreViewTranslation;
            float _1342 = 0.0f;
            do
            {
                uint _751 = uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM);
                uint _752 = _751 * 336u;
                uint _754 = (_752 + 128u) >> 2u;
                float4x4 _768 = _229;
                _768[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_754 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_754 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_754 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_754 + 3u) * 4 + 0)));
                uint _770 = (_752 + 144u) >> 2u;
                float4x4 _784 = _768;
                _784[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_770 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_770 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_770 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_770 + 3u) * 4 + 0)));
                uint _786 = (_752 + 160u) >> 2u;
                float4x4 _800 = _784;
                _800[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_786 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_786 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_786 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_786 + 3u) * 4 + 0)));
                uint _802 = (_752 + 176u) >> 2u;
                float4x4 _816 = _800;
                _816[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_802 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_802 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_802 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_802 + 3u) * 4 + 0)));
                uint _818 = (_752 + 256u) >> 2u;
                float3 _828 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_818 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_818 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_818 + 2u) * 4 + 0)));
                uint _830 = (_752 + 268u) >> 2u;
                uint _834 = (_752 + 272u) >> 2u;
                uint _846 = (_752 + 288u) >> 2u;
                if (VirtualShadowMap_ProjectionData.Load(_830 * 4 + 0) == 0u)
                {
                    int _1048 = max(0, (int(floor(log2(length(((View_View_ViewTilePosition - (-_828)) * 2097152.0f) + (_748 - (-asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_846 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_846 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_846 + 2u) * 4 + 0))))))) + asfloat(VirtualShadowMap_ProjectionData.Load(((_752 + 300u) >> 2u) * 4 + 0)))) - int(VirtualShadowMap_ProjectionData.Load(((_752 + 316u) >> 2u) * 4 + 0))));
                    if (_1048 < int(VirtualShadowMap_ProjectionData.Load(((_752 + 320u) >> 2u) * 4 + 0)))
                    {
                        int _1052 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM + _1048;
                        uint _1053 = uint(_1052);
                        uint _1054 = _1053 * 336u;
                        uint _1056 = (_1054 + 128u) >> 2u;
                        float4x4 _1070 = _229;
                        _1070[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1056 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1056 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1056 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1056 + 3u) * 4 + 0)));
                        uint _1072 = (_1054 + 144u) >> 2u;
                        float4x4 _1086 = _1070;
                        _1086[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1072 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1072 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1072 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1072 + 3u) * 4 + 0)));
                        uint _1088 = (_1054 + 160u) >> 2u;
                        float4x4 _1102 = _1086;
                        _1102[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1088 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1088 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1088 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1088 + 3u) * 4 + 0)));
                        uint _1104 = (_1054 + 176u) >> 2u;
                        float4x4 _1118 = _1102;
                        _1118[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1104 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1104 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1104 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1104 + 3u) * 4 + 0)));
                        uint _1120 = (_1054 + 256u) >> 2u;
                        uint _1132 = (_1054 + 272u) >> 2u;
                        float4 _1151 = mul(float4(((View_View_ViewTilePosition + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1120 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1120 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1120 + 2u) * 4 + 0)))) * 2097152.0f) + (_748 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1132 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1132 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1132 + 2u) * 4 + 0)))), 1.0f), _1118);
                        float2 _1152 = _1151.xy;
                        uint2 _1154 = uint2(_1152 * 128.0f);
                        uint _1160 = (_1053 * 21845u) + (_1154.x + (_1154.y << 7u));
                        uint _1164 = (VirtualShadowMap_PageTable.Load(_1160 * 4 + 0) >> 20u) & 63u;
                        bool _1173 = (VirtualShadowMap_PageTable.Load(_1160 * 4 + 0) & 134217728u) != 0u;
                        float _1335 = 0.0f;
                        bool _1336 = false;
                        if (_1173)
                        {
                            float _1311 = 0.0f;
                            float _1312 = 0.0f;
                            uint2 _1313 = uint2(0u, 0u);
                            uint2 _1314 = uint2(0u, 0u);
                            bool _1315 = false;
                            if (_1164 > 0u)
                            {
                                uint _1186 = (_1054 + 304u) >> 2u;
                                uint _1189 = _1186 + 1u;
                                uint _1194 = uint(int(_1053 + _1164));
                                uint _1197 = ((_1194 * 336u) + 304u) >> 2u;
                                int _1209 = int(_1164);
                                uint2 _1217 = ((_1154 - uint2(int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_1186 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_1189 * 4 + 0))))) + uint2((int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_1197 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1197 + 1u) * 4 + 0)))) << (_1209.xx & int2(31, 31)))) >> (_1164.xx & uint2(31u, 31u));
                                uint2 _1218 = _1217 * uint2(128u, 128u);
                                uint _1221 = (_1054 + 112u) >> 2u;
                                uint _1241 = uint(_1052 + _1209) * 336u;
                                uint _1243 = (_1241 + 112u) >> 2u;
                                uint _1258 = (_1241 + 304u) >> 2u;
                                float _1279 = (_1209 >= 0) ? (1.0f / float(1u << (uint(_1209) & 31u))) : float(1u << (uint(-_1209) & 31u));
                                uint _1298 = (_1194 * 21845u) + (_1217.x + (_1217.y << 7u));
                                _1311 = _1279;
                                _1312 = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1243 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1243 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1243 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1243 + 3u) * 4 + 0))).z - (_1279 * asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1221 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1221 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1221 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1221 + 3u) * 4 + 0))).z);
                                _1313 = clamp(uint2(((_1152 * _1279) + ((float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_1258 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1258 + 1u) * 4 + 0)))) - (float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_1186 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_1189 * 4 + 0)))) * _1279)) * 0.25f).xy) * 16384.0f), _1218, _1218 + uint2(127u, 127u));
                                _1314 = uint2(VirtualShadowMap_PageTable.Load(_1298 * 4 + 0) & 1023u, (VirtualShadowMap_PageTable.Load(_1298 * 4 + 0) >> 10u) & 1023u);
                                _1315 = ((VirtualShadowMap_PageTable.Load(_1298 * 4 + 0) & 134217728u) != 0u) && (((VirtualShadowMap_PageTable.Load(_1298 * 4 + 0) >> 20u) & 63u) == 0u);
                            }
                            else
                            {
                                _1311 = 1.0f;
                                _1312 = 0.0f;
                                _1313 = uint2(_1152 * 16384.0f);
                                _1314 = uint2(VirtualShadowMap_PageTable.Load(_1160 * 4 + 0) & 1023u, (VirtualShadowMap_PageTable.Load(_1160 * 4 + 0) >> 10u) & 1023u);
                                _1315 = _1173 && (((VirtualShadowMap_PageTable.Load(_1160 * 4 + 0) >> 20u) & 63u) == 0u);
                            }
                            float _1333 = 0.0f;
                            if (_1315)
                            {
                                uint2 _1320 = (_1314 * uint2(128u, 128u)) + (_1313 & uint2(127u, 127u));
                                _1333 = (asfloat(VirtualShadowMap_PhysicalPagePool.Load(int3(int3(int(_1320.x), int(_1320.y), 0).xy, 0)).x) - _1312) / _1311;
                            }
                            else
                            {
                                _1333 = 0.0f;
                            }
                            _1335 = _1333;
                            _1336 = _1315 ? true : false;
                        }
                        else
                        {
                            _1335 = 0.0f;
                            _1336 = false;
                        }
                        if (_1336)
                        {
                            _1342 = (_1335 > _1151.z) ? 0.0f : 1.0f;
                            break;
                        }
                    }
                }
                else
                {
                    float3 _881 = ((View_View_ViewTilePosition + _828) * 2097152.0f) + (_748 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_834 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_834 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_834 + 2u) * 4 + 0))));
                    int _978 = 0;
                    float4x4 _979 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    if (VirtualShadowMap_ProjectionData.Load(_830 * 4 + 0) != 2u)
                    {
                        uint _909 = 0u;
                        do
                        {
                            float _887 = _881.x;
                            float _888 = abs(_887);
                            float _889 = _881.y;
                            float _890 = abs(_889);
                            float _892 = _881.z;
                            float _893 = abs(_892);
                            if ((_888 >= _890) && (_888 >= _893))
                            {
                                _909 = (_887 > 0.0f) ? 0u : 1u;
                                break;
                            }
                            else
                            {
                                if (_890 > _893)
                                {
                                    _909 = (_889 > 0.0f) ? 2u : 3u;
                                    break;
                                }
                                else
                                {
                                    _909 = (_892 > 0.0f) ? 4u : 5u;
                                    break;
                                }
                            }
                        } while(false);
                        int _911 = int(_751 + _909);
                        uint _913 = uint(_911) * 336u;
                        uint _915 = (_913 + 128u) >> 2u;
                        float4x4 _929 = _229;
                        _929[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_915 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_915 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_915 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_915 + 3u) * 4 + 0)));
                        uint _931 = (_913 + 144u) >> 2u;
                        float4x4 _945 = _929;
                        _945[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_931 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_931 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_931 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_931 + 3u) * 4 + 0)));
                        uint _947 = (_913 + 160u) >> 2u;
                        float4x4 _961 = _945;
                        _961[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_947 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_947 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_947 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_947 + 3u) * 4 + 0)));
                        uint _963 = (_913 + 176u) >> 2u;
                        float4x4 _977 = _961;
                        _977[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_963 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_963 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_963 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_963 + 3u) * 4 + 0)));
                        _978 = _911;
                        _979 = _977;
                    }
                    else
                    {
                        _978 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM;
                        _979 = _816;
                    }
                    float4 _984 = mul(float4(_881, 1.0f), _979);
                    float3 _988 = _984.xyz / _984.w.xxx;
                    float2 _989 = _988.xy;
                    float _1031 = 0.0f;
                    bool _1032 = false;
                    do
                    {
                        uint2 _994 = uint2(_989 * 128.0f);
                        uint _1000 = (uint(_978) * 21845u) + (_994.x + (_994.y << 7u));
                        uint2 _1018 = (uint2(VirtualShadowMap_PageTable.Load(_1000 * 4 + 0) & 1023u, (VirtualShadowMap_PageTable.Load(_1000 * 4 + 0) >> 10u) & 1023u) * uint2(128u, 128u)) + (uint2(_989 * float(16384u >> (((VirtualShadowMap_PageTable.Load(_1000 * 4 + 0) >> 20u) & 63u) & 31u))) & uint2(127u, 127u));
                        if ((VirtualShadowMap_PageTable.Load(_1000 * 4 + 0) & 134217728u) != 0u)
                        {
                            _1031 = asfloat(VirtualShadowMap_PhysicalPagePool.Load(int3(int3(int(_1018.x), int(_1018.y), 0).xy, 0)).x);
                            _1032 = true;
                            break;
                        }
                        _1031 = 0.0f;
                        _1032 = false;
                        break;
                    } while(false);
                    if (_1032)
                    {
                        _1342 = (_1031 > _988.z) ? 0.0f : 1.0f;
                        break;
                    }
                }
                _1342 = 1.0f;
                break;
            } while(false);
            _1344 = _738 * _1342;
        }
        else
        {
            _1344 = _738;
        }
        float _1352 = clamp((_424 * _647.x) + _647.y, 0.0f, 1.0f);
        float _1354 = lerp(_1344, lerp(1.0f, dot(_663, _662), dot(_662, 1.0f.xxxx)), _1352 * _1352);
        bool _1357 = (_1354 + min(_1354, 1.0f)) > 0.0f;
        float3 _1365 = 0.0f.xxx;
        [branch]
        if (_1357)
        {
            _1365 = ((_459 * 0.3183098733425140380859375f) * 1.0f) * ((_648 * 1.0f) * _1354);
        }
        else
        {
            _1365 = 0.0f.xxx;
        }
        bool3 _1366 = _1357.xxx;
        float4 _1371 = float4(_1365, 0.0f);
        float4 _1375 = float4(float3(_1366.x ? 0.0f.xxx.x : 0.0f.xxx.x, _1366.y ? 0.0f.xxx.y : 0.0f.xxx.y, _1366.z ? 0.0f.xxx.z : 0.0f.xxx.z), 0.0f);
        bool4 _1379 = (((_646 >> 8u) & _625) != 0u).xxxx;
        _1382 = _663;
        _1383 = float4(_1379.x ? _1371.x : 0.0f.xxxx.x, _1379.y ? _1371.y : 0.0f.xxxx.y, _1379.z ? _1371.z : 0.0f.xxxx.z, _1379.w ? _1371.w : 0.0f.xxxx.w);
        _1384 = float4(_1379.x ? _1375.x : 0.0f.xxxx.x, _1379.y ? _1375.y : 0.0f.xxxx.y, _1379.z ? _1375.z : 0.0f.xxxx.z, _1379.w ? _1375.w : 0.0f.xxxx.w);
    }
    else
    {
        _1382 = _437;
        _1383 = 0.0f.xxxx;
        _1384 = 0.0f.xxxx;
    }
    uint _1408 = 0u;
    uint _1409 = 0u;
    [branch]
    if (_262)
    {
        uint _1398 = _612 * 2u;
        _1408 = min(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1398).x, TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumLocalLights);
        _1409 = TranslucentBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1398 + 1u).x;
    }
    else
    {
        uint _1388 = _612 * 2u;
        _1408 = min(TranslucentBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1388).x, TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_NumLocalLights);
        _1409 = TranslucentBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1388 + 1u).x;
    }
    uint _1415 = min(_1408, (_262 ? TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumLocalLights : TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_NumLocalLights));
    float4 _1417 = 0.0f.xxxx;
    float4 _1420 = 0.0f.xxxx;
    _1417 = _1383;
    _1420 = _1384;
    float4 _1418 = 0.0f.xxxx;
    float4 _1421 = 0.0f.xxxx;
    [loop]
    for (uint _1422 = 0u; _1422 < _1415; _1417 = _1418, _1420 = _1421, _1422++)
    {
        uint _1427 = _1409 + _1422;
        float4 _1459 = 0.0f.xxxx;
        float4 _1460 = 0.0f.xxxx;
        float4 _1461 = 0.0f.xxxx;
        float4 _1462 = 0.0f.xxxx;
        float4 _1463 = 0.0f.xxxx;
        [branch]
        if (_262)
        {
            uint _1448 = TranslucentBasePass_Shared_Forward_CulledLightDataGrid.Load(_1427).x * 6u;
            _1459 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1448);
            _1460 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1448 + 1u);
            _1461 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1448 + 3u);
            _1462 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1448 + 2u);
            _1463 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1448 + 4u);
        }
        else
        {
            uint _1434 = TranslucentBasePass_Shared_ForwardISR_CulledLightDataGrid.Load(_1427).x * 6u;
            _1459 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1434);
            _1460 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1434 + 1u);
            _1461 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1434 + 3u);
            _1462 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1434 + 2u);
            _1463 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1434 + 4u);
        }
        float2 _1471 = spvUnpackHalf2x16(asuint(_1461.w));
        float _1472 = _1471.x;
        bool _1474 = _1460.w == 0.0f;
        uint _1478 = asuint(_1462.w);
        float4 _1494 = float4(float((_1478 & 1u) != 0u), float((_1478 & 2u) != 0u), float((_1478 & 4u) != 0u), float((_1478 & 8u) != 0u));
        uint _1495 = _1478 >> 4u;
        float3 _1510 = _1459.xyz - _341;
        float _1511 = dot(_1510, _1510);
        float _1528 = 0.0f;
        if (_1474)
        {
            float _1523 = _1511 * (_1459.w * _1459.w);
            float _1526 = clamp(1.0f - (_1523 * _1523), 0.0f, 1.0f);
            _1528 = _1526 * _1526;
        }
        else
        {
            float3 _1517 = _1510 * _1459.w;
            _1528 = pow(1.0f - clamp(dot(_1517, _1517), 0.0f, 1.0f), _1460.w);
        }
        float _1538 = 0.0f;
        if (_1461.x > (-2.0f))
        {
            float _1535 = clamp((dot(_1510 * rsqrt(_1511), _1462.xyz) - _1461.x) * _1461.y, 0.0f, 1.0f);
            _1538 = _1528 * (_1535 * _1535);
        }
        else
        {
            _1538 = _1528;
        }
        float3 _1586 = 0.0f.xxx;
        float3 _1587 = 0.0f.xxx;
        [branch]
        if (_1538 > 0.0f)
        {
            float _1549 = 0.0f;
            [branch]
            if (uint((_1478 & 255u) != 0u) != 0u)
            {
                _1549 = dot(float4(float((_1495 & 1u) != 0u), float((_1495 & 2u) != 0u), float((_1495 & 4u) != 0u), float((_1495 & 8u) != 0u)), 1.0f.xxxx) * lerp(1.0f, dot(_1382, _1494), dot(_1494, 1.0f.xxxx));
            }
            else
            {
                _1549 = 1.0f;
            }
            bool _1551 = (_1549 + _1549) > 0.0f;
            float3 _1583 = 0.0f.xxx;
            [branch]
            if (_1551)
            {
                float3 _1555 = _1463.xyz * (0.5f * _1472);
                float3 _1556 = _1510 - _1555;
                float3 _1557 = _1510 + _1555;
                float _1576 = 0.0f;
                [branch]
                if (_1472 > 0.0f)
                {
                    float _1569 = rsqrt(dot(_1556, _1556)) * rsqrt(dot(_1557, _1557));
                    _1576 = _1569 / ((((dot(_1556, _1557) * _1569) * 0.5f) + 0.5f) + _1569);
                }
                else
                {
                    _1576 = 1.0f / (dot(_1556, _1556) + 1.0f);
                }
                _1583 = ((_459 * 0.3183098733425140380859375f) * (_1474 ? _1576 : 1.0f)) * ((_1460.xyz * _1538) * _1549);
            }
            else
            {
                _1583 = 0.0f.xxx;
            }
            bool3 _1584 = _1551.xxx;
            _1586 = _1583;
            _1587 = float3(_1584.x ? 0.0f.xxx.x : 0.0f.xxx.x, _1584.y ? 0.0f.xxx.y : 0.0f.xxx.y, _1584.z ? 0.0f.xxx.z : 0.0f.xxx.z);
        }
        else
        {
            _1586 = 0.0f.xxx;
            _1587 = 0.0f.xxx;
        }
        [flatten]
        if (((_1478 >> 8u) & _625) != 0u)
        {
            _1418 = _1417 + float4(_1586, 0.0f);
            _1421 = _1420 + float4(_1587, 0.0f);
        }
        else
        {
            _1418 = _1417;
            _1421 = _1420;
        }
    }
    bool4 _1606 = (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1615 = int(uint(Primitive_Primitive_SingleCaptureIndex));
    float4 _1675 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _384) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1676 = _1675.x;
    float2 _1686 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_1676 * _1676, exp2((-9.27999973297119140625f) * clamp(dot(_360, _352), 0.0f, 1.0f))) * _1676) + _1675.y)) + _1675.zw;
    bool _1714 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _1780 = 0.0f.xxxx;
    if (_1714)
    {
        float4 _1732 = mul(((float4(_342, 0.0f) + float4(_317, 0.0f)) * 2097152.0f) + float4(_343, 1.0f), _316);
        float _1733 = _1732.w;
        float3 _1755 = float3(((_1732.xy / _1733.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_1733 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _1768 = 0.0f.xxxx;
        if (_1714)
        {
            float4 _1767 = 0.0f.xxxx;
            if (_262)
            {
                _1767 = TranslucentBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1755, 0.0f);
            }
            else
            {
                _1767 = TranslucentBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1755, 0.0f);
            }
            _1768 = _1767;
        }
        else
        {
            _1768 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _1780 = float4(_1768.xyz + (in_var_TEXCOORD7.xyz * _1768.w), _1768.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _1780 = in_var_TEXCOORD7;
    }
    float3 _1787 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[1].yzw, Material_Material_PreshaderBuffer[1].x.xxx), 0.0f.xxx);
    float _1836 = 0.0f;
    float3 _1837 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _1809 = abs(((_342 - Primitive_Primitive_TilePosition) * 2097152.0f) + (_343 - Primitive_Primitive_ObjectRelativeWorldPositionAndRadius.xyz));
        float3 _1810 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        bool _1812 = any(bool3(_1809.x > _1810.x, _1809.y > _1810.y, _1809.z > _1810.z));
        float3 _1834 = 0.0f.xxx;
        if (_1812)
        {
            float3 _1830 = frac(frac(((_342.x + _342.y) + _342.z) * 2420.113525390625f) + (((_343.x + _343.y) + _343.z) * 0.001154000055976212024688720703125f)).xxx;
            _1834 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_1830.x > 0.5f.xxx.x, _1830.y > 0.5f.xxx.y, _1830.z > 0.5f.xxx.z)));
        }
        else
        {
            _1834 = _1787;
        }
        _1836 = _1812 ? 1.0f : _385;
        _1837 = _1834;
    }
    else
    {
        _1836 = _385;
        _1837 = _1787;
    }
    float4 _1847 = float4((((lerp((float4(_1606.x ? 0.0f.xxxx.x : _1417.x, _1606.y ? 0.0f.xxxx.y : _1417.y, _1606.z ? 0.0f.xxxx.z : _1417.z, _1606.w ? 0.0f.xxxx.w : _1417.w).xyz + float4(_1606.x ? 0.0f.xxxx.x : _1420.x, _1606.y ? 0.0f.xxxx.y : _1420.y, _1606.z ? 0.0f.xxxx.z : _1420.z, _1606.w ? 0.0f.xxxx.w : _1420.w).xyz) + (((((float4(TranslucentBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler, float4((_360 * (2.0f * dot(_352, _360))) - _352, ReflectionCapture_ReflectionCapture_CaptureProperties[_1615].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_384, 0.001000000047497451305389404296875f))))).xyz * ReflectionCapture_ReflectionCapture_CaptureProperties[_1615].x, _228).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz * lerp(1.0f, min(dot(_540, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) / max(ReflectionCapture_ReflectionCapture_CaptureOffsetAndAverageBrightness[_1615].w * dot(View_View_PrecomputedIndirectSpecularColorScale, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)), 9.9999997473787516355514526367188e-05f), View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp((_384 * View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x) + View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y, 0.0f, 1.0f)))).xyz * ((_461 * _1686.x) + (clamp(50.0f * _461.y, 0.0f, 1.0f) * _1686.y).xxx)) * 1.0f) * max(1.0f.xxx, ((((((_461 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_461 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_461 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)), _459 + (_461 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + ((_540 * _459) * max(1.0f.xxx, ((((((_380 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_380 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_380 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f))) + _1837) * _1780.w) + _1780.xyz, _1836);
    float3 _1851 = _1847.xyz * View_View_PreExposure;
    out_var_SV_Target0 = float4(_1851.x, _1851.y, _1851.z, _1847.w);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD10 = stage_input.in_var_TEXCOORD10;
    in_var_TEXCOORD11 = stage_input.in_var_TEXCOORD11;
    in_var_TEXCOORD2 = stage_input.in_var_TEXCOORD2;
    in_var_TEXCOORD3 = stage_input.in_var_TEXCOORD3;
    in_var_PACKED_EYE_INDEX = stage_input.in_var_PACKED_EYE_INDEX;
    in_var_TEXCOORD7 = stage_input.in_var_TEXCOORD7;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    return stage_output;
}
