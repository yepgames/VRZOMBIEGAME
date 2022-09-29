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
    float View_View_MaterialTextureDerivativeMultiply : packoffset(c138.y);
    float View_View_UnlitViewmodeMask : packoffset(c140);
    float4 View_View_TemporalAAParams : packoffset(c147);
    float3 View_View_PrecomputedIndirectLightingColorScale : packoffset(c154);
    float3 View_View_PrecomputedIndirectSpecularColorScale : packoffset(c155);
    float View_View_RenderingReflectionCaptureMask : packoffset(c178.w);
    float View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag : packoffset(c181.y);
    float4 View_View_SkyLightColor : packoffset(c182);
    float View_View_ReflectionCubemapMaxMip : packoffset(c190.z);
    float View_View_ShowDecalsMask : packoffset(c190.w);
    float View_View_IndirectCapsuleSelfShadowingIntensity : packoffset(c191.y);
    float3 View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight : packoffset(c192);
    float3 View_View_VolumetricFogInvGridSize : packoffset(c223);
    float3 View_View_VolumetricFogGridZParams : packoffset(c224);
    float3 View_View_VolumetricLightmapWorldToUVScale : packoffset(c226);
    float3 View_View_VolumetricLightmapWorldToUVAdd : packoffset(c227);
    float3 View_View_VolumetricLightmapIndirectionTextureSize : packoffset(c228);
    float View_View_VolumetricLightmapBrickSize : packoffset(c228.w);
    float3 View_View_VolumetricLightmapBrickTexelSize : packoffset(c229);
    float View_View_IndirectLightingCacheShowFlag : packoffset(c230);
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
    int InstancedView_InstancedView_NumSceneColorMSAASamples : packoffset(c130);
    float4 InstancedView_InstancedView_NormalOverrideParameter : packoffset(c133);
    float2 InstancedView_InstancedView_RoughnessOverrideParameter : packoffset(c134);
    float4 InstancedView_InstancedView_SkyLightColor : packoffset(c182);
};

cbuffer ReflectionCapture
{
    float4 ReflectionCapture_ReflectionCapture_CaptureProperties[341] : packoffset(c682);
    float4 ReflectionCapture_ReflectionCapture_CaptureOffsetAndAverageBrightness[341] : packoffset(c1023);
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

cbuffer IndirectLightingCache
{
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd : packoffset(c0);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale : packoffset(c1);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV : packoffset(c2);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV : packoffset(c3);
    float4 IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal : packoffset(c4);
    float IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing : packoffset(c5);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[57] : packoffset(c0);
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
Texture2D<float4> OpaqueBasePass_DBufferATexture;
Texture2D<float4> OpaqueBasePass_DBufferBTexture;
Texture2D<float4> OpaqueBasePass_DBufferCTexture;
SamplerState OpaqueBasePass_DBufferATextureSampler;
Texture2D<float4> OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture;
Texture2D<float4> OpaqueBasePass_IndirectOcclusionTexture;
Texture2D<float4> OpaqueBasePass_ResolvedSceneDepthTexture;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture0;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture1;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture2;
SamplerState IndirectLightingCache_IndirectLightingCacheTextureSampler0;
Texture2D<float4> Material_Texture2D_0;
SamplerState Material_Texture2D_0Sampler;
Texture2D<float4> Material_Texture2D_1;
SamplerState Material_Texture2D_1Sampler;
Texture2D<float4> Material_Texture2D_2;
SamplerState Material_Texture2D_2Sampler;
Texture2D<float4> Material_Texture2D_3;
SamplerState Material_Texture2D_3Sampler;
Texture2D<float4> Material_Texture2D_4;
SamplerState Material_Texture2D_4Sampler;
Texture2D<float4> Material_Texture2D_5;
SamplerState Material_Texture2D_5Sampler;
Texture2D<float4> Material_Texture2D_6;
SamplerState Material_Texture2D_6Sampler;
Texture2D<float4> Material_Texture2D_7;
SamplerState Material_Texture2D_7Sampler;
Texture2D<float4> Material_Texture2D_8;
SamplerState Material_Texture2D_8Sampler;
Texture2D<float4> Material_Texture2D_9;
SamplerState Material_Texture2D_9Sampler;
Texture2D<float4> Material_Texture2D_10;
SamplerState Material_Texture2D_10Sampler;
Texture2D<float4> Material_Texture2D_11;
SamplerState Material_Texture2D_11Sampler;
Texture2D<float4> Material_Texture2D_12;
Texture2D<float4> Material_Texture2D_13;
Texture2D<float4> Material_Texture2D_14;
Texture2D<float4> Material_Texture2D_15;
Texture2D<float4> Material_Texture2D_16;
Texture2D<float4> Material_Texture2D_17;
Texture2D<float4> Material_Texture2D_18;
Texture2D<float4> Material_Texture2D_19;
Texture2D<float4> Material_Texture2D_20;
Texture2D<float4> Material_Texture2D_21;
Texture2D<float4> Material_Texture2D_22;
Texture2D<float4> Material_Texture2D_23;

static float4 gl_FragCoord;
static int gl_SampleMask;
static float4 in_var_TEXCOORD10_centroid;
static float4 in_var_TEXCOORD11_centroid;
static float4 in_var_COLOR0;
static float4 in_var_TEXCOORD0[1];
static uint in_var_PACKED_EYE_INDEX;
static uint in_var_PRIMITIVE_ID;
static float4 in_var_TEXCOORD7;
static float4 out_var_SV_Target0;

struct SPIRV_Cross_Input
{
    float4 in_var_TEXCOORD10_centroid : TEXCOORD10_centroid;
    float4 in_var_TEXCOORD11_centroid : TEXCOORD11_centroid;
    float4 in_var_COLOR0 : COLOR0;
    float4 in_var_TEXCOORD0[1] : TEXCOORD0;
    nointerpolation uint in_var_PACKED_EYE_INDEX : PACKED_EYE_INDEX;
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
    float4 in_var_TEXCOORD7 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
    uint gl_SampleMask : SV_Coverage;
};

static float _311 = 0.0f;
static float3 _312 = 0.0f.xxx;
static float _316 = 0.0f;
static float4 _317 = 0.0f.xxxx;

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
    bool _356 = false;
    float _353 = 1.0f / gl_FragCoord.w;
    float4x4 _420 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _421 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _422 = 0.0f.xxx;
    float4 _423 = 0.0f.xxxx;
    float4 _424 = 0.0f.xxxx;
    float4 _425 = 0.0f.xxxx;
    int _426 = 0;
    float4 _427 = 0.0f.xxxx;
    float2 _428 = 0.0f.xx;
    float4 _429 = 0.0f.xxxx;
    float4x4 _430 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _431 = 0.0f.xxx;
    float3 _432 = 0.0f.xxx;
    float3 _433 = 0.0f.xxx;
    do
    {
        _356 = in_var_PACKED_EYE_INDEX == 0u;
        if (_356)
        {
            _420 = View_View_ViewToClip;
            _421 = View_View_SVPositionToTranslatedWorld;
            _422 = View_View_ViewForward;
            _423 = View_View_ScreenPositionScaleBias;
            _424 = View_View_ViewRectMin;
            _425 = View_View_ViewSizeAndInvSize;
            _426 = View_View_NumSceneColorMSAASamples;
            _427 = View_View_NormalOverrideParameter;
            _428 = View_View_RoughnessOverrideParameter;
            _429 = View_View_SkyLightColor;
            _430 = View_View_RelativeWorldToClip;
            _431 = -View_View_MatrixTilePosition;
            _432 = -View_View_ViewTilePosition;
            _433 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _420 = InstancedView_InstancedView_ViewToClip;
            _421 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _422 = InstancedView_InstancedView_ViewForward;
            _423 = InstancedView_InstancedView_ScreenPositionScaleBias;
            _424 = InstancedView_InstancedView_ViewRectMin;
            _425 = InstancedView_InstancedView_ViewSizeAndInvSize;
            _426 = InstancedView_InstancedView_NumSceneColorMSAASamples;
            _427 = InstancedView_InstancedView_NormalOverrideParameter;
            _428 = InstancedView_InstancedView_RoughnessOverrideParameter;
            _429 = InstancedView_InstancedView_SkyLightColor;
            _430 = InstancedView_InstancedView_RelativeWorldToClip;
            _431 = -InstancedView_InstancedView_MatrixTilePosition;
            _432 = -InstancedView_InstancedView_ViewTilePosition;
            _433 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float3x3 _442 = float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz);
    float2 _445 = gl_FragCoord.xy - _424.xy;
    float4 _453 = float4(((_445 * _425.zw) - 0.5f.xx) * float2(2.0f, -2.0f), _316, 1.0f) * _353;
    float4 _458 = mul(float4(gl_FragCoord.xyz, 1.0f), _421);
    float3 _462 = _458.xyz / _458.w.xxx;
    float3 _463 = -_432;
    float3 _464 = _462 - _433;
    float3 _473 = 0.0f.xxx;
    if (_420[3].w >= 1.0f)
    {
        _473 = -_422;
    }
    else
    {
        _473 = normalize(-_462);
    }
    float2 _474 = (-0.5f).xx + float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y);
    float2 _478 = float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[1].x.xx;
    float2 _479 = ddy(_478);
    float2 _480 = ddx(_478);
    float3 _481 = mul(_442, _473);
    float2 _490 = Material_Material_PreshaderBuffer[1].y.xx * ((_481.xy * (-1.0f).xx) / _481.z.xx);
    float2 _495 = _478 + (_490 * Material_Material_PreshaderBuffer[2].x.xx);
    float2 _499 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float2 _503 = _499 + View_View_TemporalAAParams.x.xx;
    float4 _518 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _499 * 0.015625f.xx, View_View_MaterialTextureMipBias);
    float _526 = lerp(Material_Material_PreshaderBuffer[2].z, Material_Material_PreshaderBuffer[2].y, (float((uint(_503.x) + (2u * uint(_503.y))) % 5u) + _518.x) * 0.16666667163372039794921875f);
    float _536 = lerp(Material_Material_PreshaderBuffer[2].w * _526, Material_Material_PreshaderBuffer[3].x * _526, clamp(abs(dot(_473, in_var_TEXCOORD11_centroid.xyz)), 0.0f, 1.0f));
    float _537 = floor(_536);
    float _538 = 1.0f / _536;
    float2 _540 = _490 * _538.xx;
    float2 _541 = ddx(_495);
    float2 _542 = ddy(_495);
    float _548_copy;
    float2 _551 = 0.0f.xx;
    _551 = 0.0f.xx;
    float _549 = 0.0f;
    float2 _552 = 0.0f.xx;
    int _554 = 0;
    float _556 = 0.0f;
    float2 _575 = 0.0f.xx;
    float _548 = 1.0f;
    int _553 = 0;
    float _555 = 1.0f;
    float _557 = 1.0f;
    for (;;)
    {
        if (float(_553) < (_537 + 2.0f))
        {
            _556 = dot(Material_Material_PreshaderBuffer[6], Material_Texture2D_1.SampleGrad(Material_Texture2D_1Sampler, _495 + _551, _541, _542));
            if (_548 < _556)
            {
                float _570 = _556 - _548;
                _575 = _551 - (_540 * (_570 / ((_557 - _555) + _570)));
                break;
            }
            _549 = _548 - _538;
            _552 = _551 + _540;
            _554 = _553 + 1;
            _548_copy = _548;
            _548 = _549;
            _551 = _552;
            _553 = _554;
            _555 = _556;
            _557 = _548_copy;
            continue;
        }
        else
        {
            _575 = _551;
            break;
        }
    }
    float2 _577 = _495 + _575.xy;
    float2 _580 = View_View_MaterialTextureDerivativeMultiply.xx;
    float2 _589 = (Material_Texture2D_2.SampleGrad(Material_Texture2D_2Sampler, _577, _480 * _580, _479 * _580).xy * 2.0f.xx) - 1.0f.xx;
    float4 _611 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, Material_Material_PreshaderBuffer[7].w.xx * float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _628 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[8].z, Material_Material_PreshaderBuffer[8].y, ((in_var_COLOR0.y * Material_Material_PreshaderBuffer[7].z).xxx * (in_var_COLOR0.y.xxx + (_611.xyz * Material_Material_PreshaderBuffer[8].x.xxx))).x), 0.0f, 1.0f), 0.0f, 1.0f);
    float2 _629 = (-0.5f).xx + in_var_TEXCOORD0[0].zw;
    float2 _645 = ((0.5f.xx + float2(dot(_629, Material_Material_PreshaderBuffer[10].xy), dot(_629, Material_Material_PreshaderBuffer[10].zw))) + Material_Material_PreshaderBuffer[11].zw) * Material_Material_PreshaderBuffer[13].yz;
    float2 _646 = ddy(_645);
    float2 _647 = ddx(_645);
    float2 _656 = (Material_Texture2D_4.SampleGrad(Material_Texture2D_4Sampler, _645, _647 * _580, _646 * _580).xy * 2.0f.xx) - 1.0f.xx;
    float2 _684 = ((0.5f.xx + float2(dot(_629, Material_Material_PreshaderBuffer[15].yz), dot(_629, Material_Material_PreshaderBuffer[16].xy))) + Material_Material_PreshaderBuffer[17].xy) * Material_Material_PreshaderBuffer[19].xy;
    float2 _685 = ddy(_684);
    float2 _686 = ddx(_684);
    float2 _690 = _684 * Material_Material_PreshaderBuffer[19].z.xx;
    float2 _691 = _686 * _580;
    float2 _692 = _685 * _580;
    float2 _699 = (Material_Texture2D_5.SampleGrad(Material_Texture2D_5Sampler, _690, _691, _692).xy * 2.0f.xx) - 1.0f.xx;
    float4 _713 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _714 = _713.x;
    float4 _725 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, Material_Material_PreshaderBuffer[20].z.xx * float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _742 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[21].y, Material_Material_PreshaderBuffer[21].x, ((_714 * Material_Material_PreshaderBuffer[20].y).xxx * (_714.xxx + (_725.xyz * Material_Material_PreshaderBuffer[20].w.xxx))).x), 0.0f, 1.0f), 0.0f, 1.0f);
    float3 _745 = _742.xxx;
    float2 _750 = _684 * Material_Material_PreshaderBuffer[21].z.xx;
    float2 _757 = (Material_Texture2D_8.SampleGrad(Material_Texture2D_8Sampler, _750, _691, _692).xy * 2.0f.xx) - 1.0f.xx;
    float _778 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[22].z, Material_Material_PreshaderBuffer[22].y, _713.y), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[22].w, 0.0f, 1.0f);
    float3 _780 = _778.xxx;
    float2 _785 = _684 * Material_Material_PreshaderBuffer[23].x.xx;
    float2 _792 = (Material_Texture2D_9.SampleGrad(Material_Texture2D_9Sampler, _785, _691, _692).xy * 2.0f.xx) - 1.0f.xx;
    float _813 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[24].x, Material_Material_PreshaderBuffer[23].w, _713.z), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[24].y, 0.0f, 1.0f);
    float3 _815 = _813.xxx;
    float2 _820 = _684 * Material_Material_PreshaderBuffer[24].z.xx;
    float2 _827 = (Material_Texture2D_10.SampleGrad(Material_Texture2D_10Sampler, _820, _691, _692).xy * 2.0f.xx) - 1.0f.xx;
    float _848 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[25].z, Material_Material_PreshaderBuffer[25].y, _713.w), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[25].w, 0.0f, 1.0f);
    float3 _850 = _848.xxx;
    float3 _851 = lerp(lerp(lerp(lerp(float3(_656.x * Material_Material_PreshaderBuffer[13].w, _656.y * Material_Material_PreshaderBuffer[13].w, sqrt(clamp(1.0f - dot(_656, _656), 0.0f, 1.0f))), float3(_699.x * Material_Material_PreshaderBuffer[19].w, _699.y * Material_Material_PreshaderBuffer[19].w, sqrt(clamp(1.0f - dot(_699, _699), 0.0f, 1.0f))), _745), float3(_757.x * Material_Material_PreshaderBuffer[21].w, _757.y * Material_Material_PreshaderBuffer[21].w, sqrt(clamp(1.0f - dot(_757, _757), 0.0f, 1.0f))), _780), float3(_792.x * Material_Material_PreshaderBuffer[23].y, _792.y * Material_Material_PreshaderBuffer[23].y, sqrt(clamp(1.0f - dot(_792, _792), 0.0f, 1.0f))), _815), float3(_827.x * Material_Material_PreshaderBuffer[24].w, _827.y * Material_Material_PreshaderBuffer[24].w, sqrt(clamp(1.0f - dot(_827, _827), 0.0f, 1.0f))), _850);
    float _853 = _851.z + 1.0f;
    float2 _871 = ((0.5f.xx + float2(dot(_474, Material_Material_PreshaderBuffer[27].yz), dot(_474, Material_Material_PreshaderBuffer[28].xy))) + Material_Material_PreshaderBuffer[29].xy) * Material_Material_PreshaderBuffer[31].xy;
    float2 _872 = ddy(_871);
    float2 _873 = ddx(_871);
    float2 _882 = (Material_Texture2D_11.SampleGrad(Material_Texture2D_11Sampler, _871, _873 * _580, _872 * _580).xy * 2.0f.xx) - 1.0f.xx;
    float3 _898 = float3(_851.xy, _853);
    float3 _901 = float3(float3(_882.x * Material_Material_PreshaderBuffer[31].z, _882.y * Material_Material_PreshaderBuffer[31].z, _311).xy * (-1.0f).xx, sqrt(clamp(1.0f - dot(_882, _882), 0.0f, 1.0f)));
    float3 _907 = (_898 * dot(_898, _901).xxx) - (_853.xxx * _901);
    float3 _908 = _628.xxx;
    float3 _920 = normalize(mul(normalize((lerp(lerp(float3(_589.x * Material_Material_PreshaderBuffer[7].x, _589.y * Material_Material_PreshaderBuffer[7].x, sqrt(clamp(1.0f - dot(_589, _589), 0.0f, 1.0f))), _908 * _907, _908), _907, _908) * _427.w) + _427.xyz), _442)) * 1.0f;
    float4 _931 = Material_Texture2D_12.Sample(View_MaterialTextureBilinearWrapedSampler, _577);
    float3 _936 = _931.xyz * Material_Material_PreshaderBuffer[34].z.xxx;
    float3 _942 = lerp(_936, dot(_936, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[34].w.xxx);
    float3 _943 = normalize(1.0f.xxx);
    float _946 = _943.x;
    float3 _950 = float4(_946, _943.yz, Material_Material_PreshaderBuffer[34].y).xyz;
    float3 _952 = _950 * dot(_950, _942);
    float3 _953 = _942 - _952;
    float4 _967 = Material_Texture2D_13.Sample(View_MaterialTextureBilinearWrapedSampler, _645);
    float3 _972 = _967.xyz * Material_Material_PreshaderBuffer[37].z.xxx;
    float3 _978 = lerp(_972, dot(_972, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[37].w.xxx);
    float3 _982 = float4(_946, _943.yz, Material_Material_PreshaderBuffer[37].y).xyz;
    float3 _984 = _982 * dot(_982, _978);
    float3 _985 = _978 - _984;
    float4 _999 = Material_Texture2D_14.Sample(View_MaterialTextureBilinearWrapedSampler, _690);
    float3 _1004 = _999.xyz * Material_Material_PreshaderBuffer[40].z.xxx;
    float3 _1010 = lerp(_1004, dot(_1004, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[40].w.xxx);
    float3 _1014 = float4(_946, _943.yz, Material_Material_PreshaderBuffer[40].y).xyz;
    float3 _1016 = _1014 * dot(_1014, _1010);
    float3 _1017 = _1010 - _1016;
    float4 _1032 = Material_Texture2D_15.Sample(View_MaterialTextureBilinearWrapedSampler, _750);
    float3 _1037 = _1032.xyz * Material_Material_PreshaderBuffer[43].z.xxx;
    float3 _1043 = lerp(_1037, dot(_1037, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[43].w.xxx);
    float3 _1047 = float4(_946, _943.yz, Material_Material_PreshaderBuffer[43].y).xyz;
    float3 _1049 = _1047 * dot(_1047, _1043);
    float3 _1050 = _1043 - _1049;
    float4 _1065 = Material_Texture2D_16.Sample(View_MaterialTextureBilinearWrapedSampler, _785);
    float3 _1070 = _1065.xyz * Material_Material_PreshaderBuffer[46].z.xxx;
    float3 _1076 = lerp(_1070, dot(_1070, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[46].w.xxx);
    float3 _1080 = float4(_946, _943.yz, Material_Material_PreshaderBuffer[46].y).xyz;
    float3 _1082 = _1080 * dot(_1080, _1076);
    float3 _1083 = _1076 - _1082;
    float4 _1098 = Material_Texture2D_17.Sample(View_MaterialTextureBilinearWrapedSampler, _820);
    float3 _1103 = _1098.xyz * Material_Material_PreshaderBuffer[49].z.xxx;
    float3 _1109 = lerp(_1103, dot(_1103, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[49].w.xxx);
    float3 _1113 = float4(_946, _943.yz, Material_Material_PreshaderBuffer[49].y).xyz;
    float3 _1115 = _1113 * dot(_1113, _1109);
    float3 _1116 = _1109 - _1115;
    float3 _1128 = lerp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[38].xyz * (_984 + ((_985 * cos(Material_Material_PreshaderBuffer[37].y)) + (cross(_982, _985) * sin(Material_Material_PreshaderBuffer[37].y)))), Material_Material_PreshaderBuffer[41].xyz * (_1016 + ((_1017 * cos(Material_Material_PreshaderBuffer[40].y)) + (cross(_1014, _1017) * sin(Material_Material_PreshaderBuffer[40].y)))), _745), Material_Material_PreshaderBuffer[44].xyz * (_1049 + ((_1050 * cos(Material_Material_PreshaderBuffer[43].y)) + (cross(_1047, _1050) * sin(Material_Material_PreshaderBuffer[43].y)))), _780), Material_Material_PreshaderBuffer[47].xyz * (_1082 + ((_1083 * cos(Material_Material_PreshaderBuffer[46].y)) + (cross(_1080, _1083) * sin(Material_Material_PreshaderBuffer[46].y)))), _815), Material_Material_PreshaderBuffer[50].xyz * (_1115 + ((_1116 * cos(Material_Material_PreshaderBuffer[49].y)) + (cross(_1113, _1116) * sin(Material_Material_PreshaderBuffer[49].y)))), _850);
    float4 _1134 = Material_Texture2D_18.Sample(View_MaterialTextureBilinearWrapedSampler, _645);
    float _1135 = _1134.z;
    float4 _1143 = Material_Texture2D_19.Sample(View_MaterialTextureBilinearWrapedSampler, _690);
    float _1144 = _1143.z;
    float4 _1153 = Material_Texture2D_20.Sample(View_MaterialTextureBilinearWrapedSampler, _750);
    float _1154 = _1153.z;
    float4 _1163 = Material_Texture2D_21.Sample(View_MaterialTextureBilinearWrapedSampler, _785);
    float _1164 = _1163.z;
    float4 _1173 = Material_Texture2D_22.Sample(View_MaterialTextureBilinearWrapedSampler, _820);
    float _1174 = _1173.z;
    float _1180 = lerp(lerp(lerp(lerp((_1135 <= 0.0f) ? 0.0f : pow(_1135, Material_Material_PreshaderBuffer[50].w), (_1144 <= 0.0f) ? 0.0f : pow(_1144, Material_Material_PreshaderBuffer[51].x), _742), (_1154 <= 0.0f) ? 0.0f : pow(_1154, Material_Material_PreshaderBuffer[51].y), _778), (_1164 <= 0.0f) ? 0.0f : pow(_1164, Material_Material_PreshaderBuffer[51].z), _813), (_1174 <= 0.0f) ? 0.0f : pow(_1174, Material_Material_PreshaderBuffer[51].w), _848);
    float4 _1186 = Material_Texture2D_23.Sample(View_MaterialTextureBilinearWrapedSampler, _577);
    float _1226 = lerp(lerp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[53].x, Material_Material_PreshaderBuffer[52].w, _1134.y), lerp(Material_Material_PreshaderBuffer[53].z, Material_Material_PreshaderBuffer[53].y, _1143.y), _742), lerp(Material_Material_PreshaderBuffer[54].x, Material_Material_PreshaderBuffer[53].w, _1153.y), _778), lerp(Material_Material_PreshaderBuffer[54].z, Material_Material_PreshaderBuffer[54].y, _1163.y), _813), lerp(Material_Material_PreshaderBuffer[55].x, Material_Material_PreshaderBuffer[54].w, _1173.y), _848);
    float _1234 = lerp(_967.w, 1.0f, 0.5f) * Material_Material_PreshaderBuffer[55].y;
    float _1235 = _1186.x;
    float _1241 = _1134.x;
    float _1247 = _1143.x;
    float _1254 = _1153.x;
    float _1261 = _1163.x;
    float _1268 = _1173.x;
    float _1274 = lerp(lerp(lerp(lerp((_1241 <= 0.0f) ? 0.0f : pow(_1241, Material_Material_PreshaderBuffer[55].w), (_1247 <= 0.0f) ? 0.0f : pow(_1247, Material_Material_PreshaderBuffer[56].x), _742), (_1254 <= 0.0f) ? 0.0f : pow(_1254, Material_Material_PreshaderBuffer[56].y), _778), (_1261 <= 0.0f) ? 0.0f : pow(_1261, Material_Material_PreshaderBuffer[56].z), _813), (_1268 <= 0.0f) ? 0.0f : pow(_1268, Material_Material_PreshaderBuffer[56].w), _848);
    uint _1304 = 0u;
    do
    {
        if (_426 > 1)
        {
            float _1286 = (_1234 - 0.33329999446868896484375f) * 1.49992501735687255859375f;
            uint _1294 = (_1286 > 0.75f) ? 15u : ((_1286 > 0.5f) ? 13u : ((_1286 > 0.25f) ? 9u : ((_1286 > 0.00999999977648258209228515625f) ? 8u : 0u)));
            if ((float(_1294) - 0.5f) < 0.0f)
            {
                discard;
            }
            _1304 = _1294;
            break;
        }
        if ((_1234 - 0.33329999446868896484375f) < 0.0f)
        {
            discard;
        }
        _1304 = 15u;
        break;
    } while(false);
    float3 _1305 = clamp(lerp(lerp(Material_Material_PreshaderBuffer[35].xyz * (_952 + ((_953 * cos(Material_Material_PreshaderBuffer[34].y)) + (cross(_950, _953) * sin(Material_Material_PreshaderBuffer[34].y)))), _908 * _1128, _908), _1128, _908), 0.0f.xxx, 1.0f.xxx);
    float _1306 = clamp(lerp(lerp(0.0f, _628 * _1180, _628), _1180, _628), 0.0f, 1.0f);
    float _1307 = clamp(Material_Material_PreshaderBuffer[52].x, 0.0f, 1.0f);
    float _1312 = (clamp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[52].z, Material_Material_PreshaderBuffer[52].y, _1186.y), _628 * _1226, _628), _1226, _628), 0.0f, 1.0f) * _428.y) + _428.x;
    float _1313 = clamp(lerp(lerp((_1235 <= 0.0f) ? 0.0f : pow(_1235, Material_Material_PreshaderBuffer[55].z), _628 * _1274, _628), _1274, _628), 0.0f, 1.0f);
    uint _1314 = in_var_PRIMITIVE_ID * 40u;
    float _1362 = 0.0f;
    float _1363 = 0.0f;
    float _1364 = 0.0f;
    float3 _1365 = 0.0f.xxx;
    float3 _1366 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_1314 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _1330 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _1334 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1330, 0.0f);
        float4 _1337 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1330, 0.0f);
        float4 _1340 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1330, 0.0f);
        float _1350 = _1340.w;
        _1362 = (_1312 * _1350) + _1340.z;
        _1363 = (_1307 * _1350) + _1340.y;
        _1364 = (_1306 * _1350) + _1340.x;
        _1365 = (_1305 * _1334.w) + _1334.xyz;
        _1366 = normalize((_920 * _1337.w) + ((_1337.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _1362 = _1312;
        _1363 = _1307;
        _1364 = _1306;
        _1365 = _1305;
        _1366 = _920;
    }
    uint _1369 = asuint(asfloat(View_PrimitiveSceneData.Load4(_1314 * 16 + 0)).x);
    float _1378 = _453.w;
    bool _1386 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _1392 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_1314 * 16 + 0)).x) & 2u) != 0u) && _1386)
    {
        _1392 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _1392 = 1.0f;
    }
    float _1443 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_1314 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _1411 = clamp((((_463 * 2097152.0f) + _464) * View_View_VolumetricLightmapWorldToUVScale) + View_View_VolumetricLightmapWorldToUVAdd, 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _1422 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_1411.x), int(_1411.y), int(_1411.z), 0).xyz, 0)));
        _1443 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_1422.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_1411 / _1422.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _1443 = _1392;
    }
    float4 _1444 = float4(_1443, 1.0f, 1.0f, 1.0f);
    float3 _1457 = ((_1365 - (_1365 * _1364)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _1464 = (lerp((0.07999999821186065673828125f * _1363).xxx, _1365, _1364.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _1467 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _1472 = 0.0f.xxx;
    if (_1467)
    {
        _1472 = _1457 + (_1464 * 0.449999988079071044921875f);
    }
    else
    {
        _1472 = _1457;
    }
    bool3 _1473 = _1467.xxx;
    float3 _1474 = float3(_1473.x ? 0.0f.xxx.x : _1464.x, _1473.y ? 0.0f.xxx.y : _1464.y, _1473.z ? 0.0f.xxx.z : _1464.z);
    float3 _1537 = 0.0f.xxx;
    if (_1386)
    {
        float3 _1489 = clamp((((_463 * 2097152.0f) + _464) * IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale) + IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _1493 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _1489);
        float4 _1497 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _1489);
        float4 _1500 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _1489);
        float4 _1518 = _317;
        _1518.y = (-0.48860299587249755859375f) * _1366.y;
        float4 _1521 = _1518;
        _1521.z = 0.48860299587249755859375f * _1366.z;
        float4 _1524 = _1521;
        _1524.w = (-0.48860299587249755859375f) * _1366.x;
        float4 _1525 = _1524;
        _1525.x = 0.886227548122406005859375f;
        float3 _1527 = _1525.yzw * 2.094395160675048828125f;
        float4 _1528 = float4(_1525.x, _1527.x, _1527.y, _1527.z);
        float3 _1530 = 0.0f.xxx;
        _1530.x = dot(float4(_1493.x, _1497.x, _1500.x, _1493.w), _1528);
        float3 _1532 = _1530;
        _1532.y = dot(float4(_1493.y, _1497.y, _1500.y, _1497.w), _1528);
        float3 _1534 = _1532;
        _1534.z = dot(float4(_1493.z, _1497.z, _1500.zw), _1528);
        _1537 = max(0.0f.xxx, _1534) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _1537 = 0.0f.xxx;
    }
    float3 _1616 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _1568 = 0.0f;
        float _1569 = 0.0f;
        float3 _1570 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _1558 = 0.0f.xxx;
            float _1559 = 0.0f;
            if (_1386)
            {
                _1558 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _1559 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _1558 = _1366;
                _1559 = 1.0f;
            }
            float _1560 = 1.0f - _1559;
            float _1562 = 1.0f - (_1560 * _1560);
            _1568 = lerp(clamp(dot(_1558, _1366), 0.0f, 1.0f), 1.0f, _1562);
            _1569 = _1559;
            _1570 = lerp(_1558, _1366, _1562.xxx);
        }
        else
        {
            _1568 = 1.0f;
            _1569 = 1.0f;
            _1570 = _1366;
        }
        float4 _1574 = float4(_1570, 1.0f);
        float3 _1578 = _312;
        _1578.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _1574);
        float3 _1582 = _1578;
        _1582.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _1574);
        float3 _1586 = _1582;
        _1586.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _1574);
        float4 _1589 = _1574.xyzz * _1574.yzzx;
        float3 _1593 = _312;
        _1593.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _1589);
        float3 _1597 = _1593;
        _1597.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _1589);
        float3 _1601 = _1597;
        _1601.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _1589);
        _1616 = (max(0.0f.xxx, (_1586 + _1601) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * ((_1570.x * _1570.x) - (_1570.y * _1570.y)))) * _429.xyz) * (_1569 * _1568);
    }
    else
    {
        _1616 = 0.0f.xxx;
    }
    float3 _1617 = (_1537 * View_View_PrecomputedIndirectLightingColorScale) + _1616;
    float2 _1625 = ((_453.xy / _1378.xx) * _423.xy) + _423.wz;
    float2 _1744 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _1636 = int2(trunc(_1625 * View_View_BufferSizeAndInvSize.xy));
        int _1637 = _1636.x;
        int _1638 = _1636.y;
        float4 _1642 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1637, _1638, 0).xy, 0));
        float _1643 = _1642.x;
        float2 _1743 = 0.0f.xx;
        if ((abs((((_1643 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1643 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1378) / _1378) > 0.00999999977648258209228515625f)
        {
            float2 _1667 = _1625 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _1671 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1637 - 1, _1638, 0).xy, 0));
            float _1672 = _1671.x;
            float _1680 = abs((((_1672 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1672 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1378);
            bool _1681 = _1680 < 100000000.0f;
            bool2 _1682 = _1681.xx;
            float2 _1683 = float2(_1682.x ? _1667.x : _1625.x, _1682.y ? _1667.y : _1625.y);
            float _1684 = _1681 ? _1680 : 100000000.0f;
            float2 _1687 = _1625 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _1691 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1637, _1638 + 1, 0).xy, 0));
            float _1692 = _1691.x;
            float _1700 = abs((((_1692 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1692 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1378);
            bool _1701 = _1700 < _1684;
            bool2 _1702 = _1701.xx;
            float2 _1703 = float2(_1702.x ? _1687.x : _1683.x, _1702.y ? _1687.y : _1683.y);
            float _1704 = _1701 ? _1700 : _1684;
            float2 _1706 = _1625 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _1710 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1637 + 1, _1638, 0).xy, 0));
            float _1711 = _1710.x;
            float _1719 = abs((((_1711 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1711 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1378);
            bool _1720 = _1719 < _1704;
            bool2 _1721 = _1720.xx;
            float2 _1722 = float2(_1721.x ? _1706.x : _1703.x, _1721.y ? _1706.y : _1703.y);
            float2 _1726 = _1625 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _1730 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1637, _1638 - 1, 0).xy, 0));
            float _1731 = _1730.x;
            bool2 _1741 = (abs((((_1731 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1731 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1378) < (_1720 ? _1719 : _1704)).xx;
            _1743 = float2(_1741.x ? _1726.x : _1722.x, _1741.y ? _1726.y : _1722.y);
        }
        else
        {
            _1743 = _1625;
        }
        _1744 = _1743;
    }
    else
    {
        _1744 = _1625;
    }
    uint _1750_dummy_parameter;
    uint2 _1750 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _1750_dummy_parameter);
    float _1768 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_1744 * float2(float(_1750.x), float(_1750.y)))), 0).xy, 0)).x, ((uint(((2.0f * float((_1369 & 128u) != 0u)) + float((_1369 & 256u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _1778 = _1313.xxx;
    uint _1806 = 0u;
    float3 _1807 = 0.0f.xxx;
    int3 _1808 = int3(0, 0, 0);
    [branch]
    if (_356)
    {
        _1806 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift;
        _1807 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams;
        _1808 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _1806 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
        _1807 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridZParams;
        _1808 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint2 _1824 = uint2(_445 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (_1806.xx & uint2(31u, 31u));
    int3 _1834 = int3(0, 0, 0);
    [branch]
    if (_356)
    {
        _1834 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _1834 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint _1842 = (((min(uint(max(0.0f, log2((_353 * _1807.x) + _1807.y) * _1807.z)), uint(_1808.z - 1)) * uint(_1834.y)) + _1824.y) * uint(_1834.x)) + _1824.x;
    float4 _1860 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _1860 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_1744 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _1860 = 1.0f.xxxx;
    }
    float4 _1861 = _1860 * _1860;
    uint _1864 = asuint(asfloat(View_PrimitiveSceneData.Load4(_1314 * 16 + 0)).x);
    uint _1877 = (uint((_1864 & 1024u) != 0u) | (uint((_1864 & 2048u) != 0u) << 1u)) | (uint((_1864 & 4096u) != 0u) << 2u);
    uint _1901 = 0u;
    uint _1902 = 0u;
    float2 _1903 = 0.0f.xx;
    float3 _1904 = 0.0f.xxx;
    float3 _1905 = 0.0f.xxx;
    [branch]
    if (_356)
    {
        _1901 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight;
        _1902 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
        _1903 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
        _1904 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor;
        _1905 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection;
    }
    else
    {
        _1901 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_HasDirectionalLight;
        _1902 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
        _1903 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
        _1904 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightColor;
        _1905 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDirection;
    }
    float4 _2045 = 0.0f.xxxx;
    float4 _2046 = 0.0f.xxxx;
    [branch]
    if (_1901 != 0u)
    {
        float4 _1924 = float4(float((_1902 & 1u) != 0u), float((_1902 & 2u) != 0u), float((_1902 & 4u) != 0u), float((_1902 & 8u) != 0u));
        uint _1925 = _1902 >> 4u;
        float _1939 = dot(float4(float((_1925 & 1u) != 0u), float((_1925 & 2u) != 0u), float((_1925 & 4u) != 0u), float((_1925 & 8u) != 0u)), _1861);
        bool _1941 = _1903.y < 0.0f;
        float _1942 = _1941 ? 1.0f : _1939;
        float _1959 = 0.0f;
        float _1960 = 0.0f;
        [branch]
        if (uint((_1902 & 255u) != 0u) != 0u)
        {
            float _1953 = clamp((_1378 * _1903.x) + _1903.y, 0.0f, 1.0f);
            float _1955 = lerp(_1941 ? _1939 : 1.0f, lerp(1.0f, dot(_1444, _1924), dot(_1924, 1.0f.xxxx)), _1953 * _1953);
            _1959 = min(_1955, _1942) * _1942;
            _1960 = _1955 * _1942;
        }
        else
        {
            _1959 = 1.0f;
            _1960 = 1.0f;
        }
        float3 _2029 = 0.0f.xxx;
        float3 _2030 = 0.0f.xxx;
        [branch]
        if ((_1960 + _1959) > 0.0f)
        {
            float _1967 = max(_1362, View_View_MinRoughness);
            float3 _1970 = _1905 * rsqrt(dot(_1905, _1905));
            float _1971 = dot(_1366, _1970);
            float _1972 = clamp(_1971, 0.0f, 1.0f);
            float _1973 = dot(_1366, _473);
            float _1974 = dot(_473, _1970);
            float _1977 = rsqrt(2.0f + (2.0f * _1974));
            float _1980 = clamp((_1971 + _1973) * _1977, 0.0f, 1.0f);
            float _1986 = clamp(abs(_1973) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float3 _1988 = 1.0f.xxx * _1972;
            float _1990 = _1967 * _1967;
            float _1991 = _1990 * _1990;
            float _1995 = (((_1980 * _1991) - _1980) * _1980) + 1.0f;
            float _1999 = sqrt(_1991);
            float _2000 = 1.0f - _1999;
            float _2009 = 1.0f - clamp(_1977 + (_1977 * _1974), 0.0f, 1.0f);
            float _2010 = _2009 * _2009;
            float _2012 = (_2010 * _2010) * _2009;
            float3 _2026 = (_1904 * 1.0f) * _1960;
            _2029 = ((_1472 * 0.3183098733425140380859375f) * _1988) * _2026;
            _2030 = ((_1988 * (((clamp(50.0f * _1474.y, 0.0f, 1.0f) * _2012).xxx + (_1474 * (1.0f - _2012))) * ((_1991 / ((3.1415927410125732421875f * _1995) * _1995)) * (0.5f / ((_1972 * ((_1986 * _2000) + _1999)) + (_1986 * ((_1972 * _2000) + _1999))))))) * 1.0f) * _2026;
        }
        else
        {
            _2029 = 0.0f.xxx;
            _2030 = 0.0f.xxx;
        }
        float4 _2034 = float4(_2029, 0.0f);
        float4 _2038 = float4(_2030, 0.0f);
        bool4 _2042 = (((_1902 >> 8u) & _1877) != 0u).xxxx;
        _2045 = float4(_2042.x ? _2034.x : 0.0f.xxxx.x, _2042.y ? _2034.y : 0.0f.xxxx.y, _2042.z ? _2034.z : 0.0f.xxxx.z, _2042.w ? _2034.w : 0.0f.xxxx.w);
        _2046 = float4(_2042.x ? _2038.x : 0.0f.xxxx.x, _2042.y ? _2038.y : 0.0f.xxxx.y, _2042.z ? _2038.z : 0.0f.xxxx.z, _2042.w ? _2038.w : 0.0f.xxxx.w);
    }
    else
    {
        _2045 = 0.0f.xxxx;
        _2046 = 0.0f.xxxx;
    }
    uint _2070 = 0u;
    uint _2071 = 0u;
    [branch]
    if (_356)
    {
        uint _2060 = _1842 * 2u;
        _2070 = min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_2060).x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
        _2071 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_2060 + 1u).x;
    }
    else
    {
        uint _2050 = _1842 * 2u;
        _2070 = min(OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_2050).x, OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights);
        _2071 = OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_2050 + 1u).x;
    }
    uint _2077 = min(_2070, (_356 ? OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights : OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights));
    float4 _2079 = 0.0f.xxxx;
    float4 _2082 = 0.0f.xxxx;
    _2079 = _2045;
    _2082 = _2046;
    float4 _2080 = 0.0f.xxxx;
    float4 _2083 = 0.0f.xxxx;
    [loop]
    for (uint _2084 = 0u; _2084 < _2077; _2079 = _2080, _2082 = _2083, _2084++)
    {
        uint _2089 = _2071 + _2084;
        float4 _2121 = 0.0f.xxxx;
        float4 _2122 = 0.0f.xxxx;
        float4 _2123 = 0.0f.xxxx;
        float4 _2124 = 0.0f.xxxx;
        float4 _2125 = 0.0f.xxxx;
        [branch]
        if (_356)
        {
            uint _2110 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid.Load(_2089).x * 6u;
            _2121 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2110);
            _2122 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2110 + 1u);
            _2123 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2110 + 3u);
            _2124 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2110 + 2u);
            _2125 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2110 + 4u);
        }
        else
        {
            uint _2096 = OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid.Load(_2089).x * 6u;
            _2121 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2096);
            _2122 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2096 + 1u);
            _2123 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2096 + 3u);
            _2124 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2096 + 2u);
            _2125 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2096 + 4u);
        }
        float2 _2134 = spvUnpackHalf2x16(asuint(_2123.w));
        float _2135 = _2134.x;
        bool _2138 = _2122.w == 0.0f;
        uint _2142 = asuint(_2124.w);
        float4 _2158 = float4(float((_2142 & 1u) != 0u), float((_2142 & 2u) != 0u), float((_2142 & 4u) != 0u), float((_2142 & 8u) != 0u));
        uint _2159 = _2142 >> 4u;
        float3 _2174 = _2121.xyz - _462;
        float _2175 = dot(_2174, _2174);
        float _2192 = 0.0f;
        if (_2138)
        {
            float _2187 = _2175 * (_2121.w * _2121.w);
            float _2190 = clamp(1.0f - (_2187 * _2187), 0.0f, 1.0f);
            _2192 = _2190 * _2190;
        }
        else
        {
            float3 _2181 = _2174 * _2121.w;
            _2192 = pow(1.0f - clamp(dot(_2181, _2181), 0.0f, 1.0f), _2122.w);
        }
        float _2202 = 0.0f;
        if (_2123.x > (-2.0f))
        {
            float _2199 = clamp((dot(_2174 * rsqrt(_2175), _2124.xyz) - _2123.x) * _2123.y, 0.0f, 1.0f);
            _2202 = _2192 * (_2199 * _2199);
        }
        else
        {
            _2202 = _2192;
        }
        float3 _2522 = 0.0f.xxx;
        float3 _2523 = 0.0f.xxx;
        [branch]
        if (_2202 > 0.0f)
        {
            float _2213 = 0.0f;
            [branch]
            if (uint((_2142 & 255u) != 0u) != 0u)
            {
                _2213 = dot(float4(float((_2159 & 1u) != 0u), float((_2159 & 2u) != 0u), float((_2159 & 4u) != 0u), float((_2159 & 8u) != 0u)), _1861) * lerp(1.0f, dot(_1444, _2158), dot(_2158, 1.0f.xxxx));
            }
            else
            {
                _2213 = 1.0f;
            }
            float3 _2520 = 0.0f.xxx;
            float3 _2521 = 0.0f.xxx;
            [branch]
            if ((_2213 + _2213) > 0.0f)
            {
                float3 _2219 = _2125.xyz * (0.5f * _2135);
                float3 _2220 = _2174 - _2219;
                float3 _2221 = _2174 + _2219;
                float _2224 = max(_1362, View_View_MinRoughness);
                bool _2225 = _2135 > 0.0f;
                float _2252 = 0.0f;
                float _2253 = 0.0f;
                float _2254 = 0.0f;
                [branch]
                if (_2225)
                {
                    float _2237 = rsqrt(dot(_2220, _2220));
                    float _2238 = rsqrt(dot(_2221, _2221));
                    float _2239 = _2237 * _2238;
                    float _2241 = dot(_2220, _2221) * _2239;
                    _2252 = _2241;
                    _2253 = 0.5f * ((dot(_1366, _2220) * _2237) + (dot(_1366, _2221) * _2238));
                    _2254 = _2239 / (((_2241 * 0.5f) + 0.5f) + _2239);
                }
                else
                {
                    float _2229 = dot(_2220, _2220);
                    _2252 = 1.0f;
                    _2253 = dot(_1366, _2220 * rsqrt(_2229));
                    _2254 = 1.0f / (_2229 + 1.0f);
                }
                float _2272 = 0.0f;
                if (_2123.z > 0.0f)
                {
                    float _2261 = sqrt(clamp((_2123.z * _2123.z) * _2254, 0.0f, 1.0f));
                    float _2271 = 0.0f;
                    if (_2253 < _2261)
                    {
                        float _2267 = _2261 + max(_2253, -_2261);
                        _2271 = (_2267 * _2267) / (4.0f * _2261);
                    }
                    else
                    {
                        _2271 = _2253;
                    }
                    _2272 = _2271;
                }
                else
                {
                    _2272 = _2253;
                }
                float _2273 = clamp(_2272, 0.0f, 1.0f);
                float3 _2291 = 0.0f.xxx;
                if (_2225)
                {
                    float3 _2278 = reflect(-_473, _1366);
                    float3 _2279 = _2221 - _2220;
                    float _2281 = dot(_2278, _2279);
                    _2291 = _2220 + (_2279 * clamp(dot(_2220, (_2278 * _2281) - _2279) / ((_2135 * _2135) - (_2281 * _2281)), 0.0f, 1.0f));
                }
                else
                {
                    _2291 = _2220;
                }
                float _2293 = rsqrt(dot(_2291, _2291));
                float3 _2294 = _2291 * _2293;
                float _2295 = max(_2224, View_View_MinRoughness);
                float _2300 = clamp((_2123.z * _2293) * (1.0f - (_2295 * _2295)), 0.0f, 1.0f);
                float _2302 = clamp(_2125.w * _2293, 0.0f, 1.0f);
                float _2310 = dot(_1366, _2294);
                float _2311 = dot(_1366, _473);
                float _2312 = dot(_473, _2294);
                float _2315 = rsqrt(2.0f + (2.0f * _2312));
                bool _2322 = _2300 > 0.0f;
                float _2417 = 0.0f;
                float _2418 = 0.0f;
                if (_2322)
                {
                    float _2327 = sqrt(1.0f - (_2300 * _2300));
                    float _2329 = (2.0f * _2310) * _2311;
                    float _2330 = _2329 - _2312;
                    float _2415 = 0.0f;
                    float _2416 = 0.0f;
                    if (_2330 >= _2327)
                    {
                        _2415 = 1.0f;
                        _2416 = abs(_2311);
                    }
                    else
                    {
                        float _2338 = _2300 * rsqrt(1.0f - (_2330 * _2330));
                        float _2341 = _2338 * (_2311 - (_2330 * _2310));
                        float _2347 = _2338 * ((((2.0f * _2311) * _2311) - 1.0f) - (_2330 * _2312));
                        float _2358 = _2338 * sqrt(clamp((((1.0f - (_2310 * _2310)) - (_2311 * _2311)) - (_2312 * _2312)) + (_2329 * _2312), 0.0f, 1.0f));
                        float _2360 = (_2358 * 2.0f) * _2311;
                        float _2361 = _2310 * _2327;
                        float _2362 = _2361 + _2311;
                        float _2363 = _2362 + _2341;
                        float _2364 = _2312 * _2327;
                        float _2366 = (_2364 + 1.0f) + _2347;
                        float _2367 = _2358 * _2366;
                        float _2368 = _2363 * _2366;
                        float _2369 = _2360 * _2363;
                        float _2374 = _2368 * (((-0.5f) * _2367) + ((0.25f * _2360) * _2363));
                        float _2388 = ((_2367 * _2367) + (_2369 * (_2369 - (2.0f * _2367)))) + (_2363 * ((_2362 * (_2366 * _2366)) + (_2368 * (((-0.5f) * (_2366 + _2364)) - 0.5f))));
                        float _2393 = (2.0f * _2374) / ((_2388 * _2388) + (_2374 * _2374));
                        float _2394 = _2393 * _2388;
                        float _2396 = 1.0f - (_2393 * _2374);
                        float _2404 = _2364 + ((_2396 * _2347) + (_2394 * _2360));
                        float _2407 = rsqrt(2.0f + (2.0f * _2404));
                        _2415 = clamp(((_2361 + ((_2396 * _2341) + (_2394 * _2358))) + _2311) * _2407, 0.0f, 1.0f);
                        _2416 = clamp(_2407 + (_2407 * _2404), 0.0f, 1.0f);
                    }
                    _2417 = _2415;
                    _2418 = _2416;
                }
                else
                {
                    _2417 = clamp((_2310 + _2311) * _2315, 0.0f, 1.0f);
                    _2418 = clamp(_2315 + (_2315 * _2312), 0.0f, 1.0f);
                }
                float _2421 = clamp(abs(_2311) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _2424 = 1.0f.xxx * ((_2138 ? _2254 : 1.0f) * _2273);
                float3 _2514 = 0.0f.xxx;
                if (((0u | (asuint(clamp(1.0f - (max(_2135, _2123.z) * 0.0500000007450580596923828125f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _2514 = 0.0f.xxx;
                }
                else
                {
                    float _2431 = _2224 * _2224;
                    float _2432 = _2431 * _2431;
                    float _2442 = 0.0f;
                    if (_2302 > 0.0f)
                    {
                        _2442 = clamp(_2432 + ((_2302 * _2302) / ((_2418 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _2442 = _2432;
                    }
                    float _2457 = 0.0f;
                    float _2458 = 0.0f;
                    if (_2322)
                    {
                        float _2455 = _2442 + (((0.25f * _2300) * ((3.0f * asfloat(532487669 + (asint(_2442) >> 1))) + _2300)) / (_2418 + 0.001000000047497451305389404296875f));
                        _2457 = _2442 / _2455;
                        _2458 = _2455;
                    }
                    else
                    {
                        _2457 = 1.0f;
                        _2458 = _2442;
                    }
                    float _2480 = 0.0f;
                    if (_2252 < 1.0f)
                    {
                        float _2465 = sqrt((1.00010001659393310546875f - _2252) / (1.0f + _2252));
                        _2480 = _2457 * sqrt(_2458 / (_2458 + (((0.25f * _2465) * ((3.0f * asfloat(532487669 + (asint(_2458) >> 1))) + _2465)) / (_2418 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _2480 = _2457;
                    }
                    float _2484 = (((_2417 * _2442) - _2417) * _2417) + 1.0f;
                    float _2489 = sqrt(_2442);
                    float _2490 = 1.0f - _2489;
                    float _2499 = 1.0f - _2418;
                    float _2500 = _2499 * _2499;
                    float _2502 = (_2500 * _2500) * _2499;
                    _2514 = _2424 * (((clamp(50.0f * _1474.y, 0.0f, 1.0f) * _2502).xxx + (_1474 * (1.0f - _2502))) * (((_2442 / ((3.1415927410125732421875f * _2484) * _2484)) * _2480) * (0.5f / ((_2273 * ((_2421 * _2490) + _2489)) + (_2421 * ((_2273 * _2490) + _2489))))));
                }
                float3 _2517 = (_2122.xyz * _2202) * _2213;
                _2520 = ((_1472 * 0.3183098733425140380859375f) * _2424) * _2517;
                _2521 = (_2514 * 1.0f) * _2517;
            }
            else
            {
                _2520 = 0.0f.xxx;
                _2521 = 0.0f.xxx;
            }
            _2522 = _2520;
            _2523 = _2521;
        }
        else
        {
            _2522 = 0.0f.xxx;
            _2523 = 0.0f.xxx;
        }
        [flatten]
        if (((_2142 >> 8u) & _1877) != 0u)
        {
            _2080 = _2079 + float4(_2522, 0.0f);
            _2083 = _2082 + float4(_2523, 0.0f);
        }
        else
        {
            _2080 = _2079;
            _2083 = _2082;
        }
    }
    bool4 _2542 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _2551 = int(asuint(asfloat(View_PrimitiveSceneData.Load4(_1314 * 16 + 0)).w));
    float3 _2555 = (_1366 * (2.0f * dot(_473, _1366))) - _473;
    float _2563 = 1.0f - (1.2000000476837158203125f * log2(max(_1362, 0.001000000047497451305389404296875f)));
    float4 _2579 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_2555, ReflectionCapture_ReflectionCapture_CaptureProperties[_2551].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _2563);
    float _2583 = 1.0f - _2579.w;
    float4 _2587 = float4(_2579.xyz * ReflectionCapture_ReflectionCapture_CaptureProperties[_2551].x, _2583);
    float3 _2592 = _2587.xyz * View_View_PrecomputedIndirectSpecularColorScale;
    float4 _2593 = float4(_2592.x, _2592.y, _2592.z, _2587.w);
    float4 _2630 = 0.0f.xxxx;
    float3 _2631 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        float3 _2614 = OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _2555, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _2563).xyz * View_View_SkyLightColor.xyz;
        float4 _2628 = 0.0f.xxxx;
        float3 _2629 = 0.0f.xxx;
        [flatten]
        if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.z < 1.0f) && true)
        {
            float3 _2626 = _2592.xyz + ((_2614 * _2583) * 1.0f);
            _2628 = float4(_2626.x, _2626.y, _2626.z, _2587.w);
            _2629 = 0.0f.xxx;
        }
        else
        {
            _2628 = _2593;
            _2629 = _2614 * 1.0f;
        }
        _2630 = _2628;
        _2631 = _2629;
    }
    else
    {
        _2630 = _2593;
        _2631 = 0.0f.xxx;
    }
    float4 _2654 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _1362) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _2655 = _2654.x;
    float2 _2665 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_2655 * _2655, exp2((-9.27999973297119140625f) * clamp(dot(_1366, _473), 0.0f, 1.0f))) * _2655) + _2654.y)) + _2654.zw;
    bool _2693 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2761 = 0.0f.xxxx;
    if (_2693)
    {
        float4 _2711 = mul(((float4(_463, 0.0f) + float4(_431, 0.0f)) * 2097152.0f) + float4(_464, 1.0f), _430);
        float _2712 = _2711.w;
        float3 _2734 = float3(((_2711.xy / _2712.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_2712 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _2749 = 0.0f.xxxx;
        if (_2693)
        {
            float4 _2748 = 0.0f.xxxx;
            if (_356)
            {
                _2748 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _2734, 0.0f);
            }
            else
            {
                _2748 = OpaqueBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _2734, 0.0f);
            }
            _2749 = _2748;
        }
        else
        {
            _2749 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _2761 = float4(_2749.xyz + (in_var_TEXCOORD7.xyz * _2749.w), _2749.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _2761 = in_var_TEXCOORD7;
    }
    float3 _2768 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[32].xyz, Material_Material_PreshaderBuffer[31].w.xxx), 0.0f.xxx);
    float3 _2825 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _2799 = abs(((_463 - asfloat(View_PrimitiveSceneData.Load4((_1314 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_464 - asfloat(View_PrimitiveSceneData.Load4((_1314 + 19u) * 16 + 0)).xyz));
        float3 _2800 = float3(asfloat(View_PrimitiveSceneData.Load4((_1314 + 18u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_1314 + 25u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_1314 + 26u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _2824 = 0.0f.xxx;
        if (any(bool3(_2799.x > _2800.x, _2799.y > _2800.y, _2799.z > _2800.z)))
        {
            float3 _2820 = frac(frac(((_463.x + _463.y) + _463.z) * 2420.113525390625f) + (((_464.x + _464.y) + _464.z) * 0.001154000055976212024688720703125f)).xxx;
            _2824 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2820.x > 0.5f.xxx.x, _2820.y > 0.5f.xxx.y, _2820.z > 0.5f.xxx.z)));
        }
        else
        {
            _2824 = _2768;
        }
        _2825 = _2824;
    }
    else
    {
        _2825 = _2768;
    }
    float4 _2836 = float4((((lerp((float4(_2542.x ? 0.0f.xxxx.x : _2079.x, _2542.y ? 0.0f.xxxx.y : _2079.y, _2542.z ? 0.0f.xxxx.z : _2079.z, _2542.w ? 0.0f.xxxx.w : _2079.w).xyz + float4(_2542.x ? 0.0f.xxxx.x : _2082.x, _2542.y ? 0.0f.xxxx.y : _2082.y, _2542.z ? 0.0f.xxxx.z : _2082.z, _2542.w ? 0.0f.xxxx.w : _2082.w).xyz) + (((((_2630.xyz * lerp(1.0f, min((dot(_1617, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * _1768) / max(ReflectionCapture_ReflectionCapture_CaptureOffsetAndAverageBrightness[_2551].w * dot(View_View_PrecomputedIndirectSpecularColorScale, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)), 9.9999997473787516355514526367188e-05f), View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp((_1362 * View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x) + View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y, 0.0f, 1.0f)))).xyz + (_2631 * _2630.w)).xyz * ((_1474 * _2665.x) + (clamp(50.0f * _1474.y, 0.0f, 1.0f) * _2665.y).xxx)) * _1768) * max(_1778, ((((((_1474 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1313) + ((_1474 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1313) + ((_1474 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1313)), _1472 + (_1474 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + (((_1617 * _1768) * _1472) * max(_1778, ((((((_1365 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1313) + ((_1365 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1313) + ((_1365 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1313))) + _2825) * _2761.w) + _2761.xyz, 0.0f);
    _2836.w = 0.0f;
    out_var_SV_Target0 = _2836 * View_View_PreExposure;
    gl_SampleMask = int(_1304);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD10_centroid = stage_input.in_var_TEXCOORD10_centroid;
    in_var_TEXCOORD11_centroid = stage_input.in_var_TEXCOORD11_centroid;
    in_var_COLOR0 = stage_input.in_var_COLOR0;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_PACKED_EYE_INDEX = stage_input.in_var_PACKED_EYE_INDEX;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
    in_var_TEXCOORD7 = stage_input.in_var_TEXCOORD7;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_SampleMask = gl_SampleMask;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    return stage_output;
}
