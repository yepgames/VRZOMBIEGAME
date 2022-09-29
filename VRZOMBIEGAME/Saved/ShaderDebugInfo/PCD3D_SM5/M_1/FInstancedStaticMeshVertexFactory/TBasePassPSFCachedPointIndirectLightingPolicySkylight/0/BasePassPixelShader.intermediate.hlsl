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
    float4 IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal : packoffset(c4);
    float IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing : packoffset(c5);
    float4 IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[3] : packoffset(c6);
    float4 IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[3] : packoffset(c9);
    float4 IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2 : packoffset(c12);
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
static float4 in_var_COLOR1;
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
    float4 in_var_COLOR1 : COLOR1;
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

static float _317 = 0.0f;
static float4 _318 = 0.0f.xxxx;
static float3 _319 = 0.0f.xxx;
static float _323 = 0.0f;
static float4 _324 = 0.0f.xxxx;

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
    bool _364 = false;
    float _361 = 1.0f / gl_FragCoord.w;
    float4x4 _428 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _429 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _430 = 0.0f.xxx;
    float4 _431 = 0.0f.xxxx;
    float4 _432 = 0.0f.xxxx;
    float4 _433 = 0.0f.xxxx;
    int _434 = 0;
    float4 _435 = 0.0f.xxxx;
    float2 _436 = 0.0f.xx;
    float4 _437 = 0.0f.xxxx;
    float4x4 _438 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _439 = 0.0f.xxx;
    float3 _440 = 0.0f.xxx;
    float3 _441 = 0.0f.xxx;
    do
    {
        _364 = in_var_PACKED_EYE_INDEX == 0u;
        if (_364)
        {
            _428 = View_View_ViewToClip;
            _429 = View_View_SVPositionToTranslatedWorld;
            _430 = View_View_ViewForward;
            _431 = View_View_ScreenPositionScaleBias;
            _432 = View_View_ViewRectMin;
            _433 = View_View_ViewSizeAndInvSize;
            _434 = View_View_NumSceneColorMSAASamples;
            _435 = View_View_NormalOverrideParameter;
            _436 = View_View_RoughnessOverrideParameter;
            _437 = View_View_SkyLightColor;
            _438 = View_View_RelativeWorldToClip;
            _439 = -View_View_MatrixTilePosition;
            _440 = -View_View_ViewTilePosition;
            _441 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _428 = InstancedView_InstancedView_ViewToClip;
            _429 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _430 = InstancedView_InstancedView_ViewForward;
            _431 = InstancedView_InstancedView_ScreenPositionScaleBias;
            _432 = InstancedView_InstancedView_ViewRectMin;
            _433 = InstancedView_InstancedView_ViewSizeAndInvSize;
            _434 = InstancedView_InstancedView_NumSceneColorMSAASamples;
            _435 = InstancedView_InstancedView_NormalOverrideParameter;
            _436 = InstancedView_InstancedView_RoughnessOverrideParameter;
            _437 = InstancedView_InstancedView_SkyLightColor;
            _438 = InstancedView_InstancedView_RelativeWorldToClip;
            _439 = -InstancedView_InstancedView_MatrixTilePosition;
            _440 = -InstancedView_InstancedView_ViewTilePosition;
            _441 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float3x3 _450 = float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz);
    float2 _453 = gl_FragCoord.xy - _432.xy;
    float4 _461 = float4(((_453 * _433.zw) - 0.5f.xx) * float2(2.0f, -2.0f), _323, 1.0f) * _361;
    float4 _466 = mul(float4(gl_FragCoord.xyz, 1.0f), _429);
    float3 _470 = _466.xyz / _466.w.xxx;
    float3 _471 = -_440;
    float3 _472 = _470 - _441;
    float3 _481 = 0.0f.xxx;
    if (_428[3].w >= 1.0f)
    {
        _481 = -_430;
    }
    else
    {
        _481 = normalize(-_470);
    }
    float2 _482 = (-0.5f).xx + float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y);
    float2 _486 = float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[1].x.xx;
    float2 _487 = ddy(_486);
    float2 _488 = ddx(_486);
    float3 _489 = mul(_450, _481);
    float2 _498 = Material_Material_PreshaderBuffer[1].y.xx * ((_489.xy * (-1.0f).xx) / _489.z.xx);
    float2 _503 = _486 + (_498 * Material_Material_PreshaderBuffer[2].x.xx);
    float2 _507 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float2 _511 = _507 + View_View_TemporalAAParams.x.xx;
    float4 _526 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _507 * 0.015625f.xx, View_View_MaterialTextureMipBias);
    float _534 = lerp(Material_Material_PreshaderBuffer[2].z, Material_Material_PreshaderBuffer[2].y, (float((uint(_511.x) + (2u * uint(_511.y))) % 5u) + _526.x) * 0.16666667163372039794921875f);
    float _544 = lerp(Material_Material_PreshaderBuffer[2].w * _534, Material_Material_PreshaderBuffer[3].x * _534, clamp(abs(dot(_481, in_var_TEXCOORD11_centroid.xyz)), 0.0f, 1.0f));
    float _545 = floor(_544);
    float _546 = 1.0f / _544;
    float2 _548 = _498 * _546.xx;
    float2 _549 = ddx(_503);
    float2 _550 = ddy(_503);
    float _556_copy;
    float2 _559 = 0.0f.xx;
    _559 = 0.0f.xx;
    float _557 = 0.0f;
    float2 _560 = 0.0f.xx;
    int _562 = 0;
    float _564 = 0.0f;
    float2 _583 = 0.0f.xx;
    float _556 = 1.0f;
    int _561 = 0;
    float _563 = 1.0f;
    float _565 = 1.0f;
    for (;;)
    {
        if (float(_561) < (_545 + 2.0f))
        {
            _564 = dot(Material_Material_PreshaderBuffer[6], Material_Texture2D_1.SampleGrad(Material_Texture2D_1Sampler, _503 + _559, _549, _550));
            if (_556 < _564)
            {
                float _578 = _564 - _556;
                _583 = _559 - (_548 * (_578 / ((_565 - _563) + _578)));
                break;
            }
            _557 = _556 - _546;
            _560 = _559 + _548;
            _562 = _561 + 1;
            _556_copy = _556;
            _556 = _557;
            _559 = _560;
            _561 = _562;
            _563 = _564;
            _565 = _556_copy;
            continue;
        }
        else
        {
            _583 = _559;
            break;
        }
    }
    float2 _585 = _503 + _583.xy;
    float2 _588 = View_View_MaterialTextureDerivativeMultiply.xx;
    float2 _597 = (Material_Texture2D_2.SampleGrad(Material_Texture2D_2Sampler, _585, _488 * _588, _487 * _588).xy * 2.0f.xx) - 1.0f.xx;
    float4 _619 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, Material_Material_PreshaderBuffer[7].w.xx * float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _636 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[8].z, Material_Material_PreshaderBuffer[8].y, ((in_var_COLOR0.y * Material_Material_PreshaderBuffer[7].z).xxx * (in_var_COLOR0.y.xxx + (_619.xyz * Material_Material_PreshaderBuffer[8].x.xxx))).x), 0.0f, 1.0f), 0.0f, 1.0f);
    float2 _637 = (-0.5f).xx + in_var_TEXCOORD0[0].zw;
    float2 _653 = ((0.5f.xx + float2(dot(_637, Material_Material_PreshaderBuffer[10].xy), dot(_637, Material_Material_PreshaderBuffer[10].zw))) + Material_Material_PreshaderBuffer[11].zw) * Material_Material_PreshaderBuffer[13].yz;
    float2 _654 = ddy(_653);
    float2 _655 = ddx(_653);
    float2 _664 = (Material_Texture2D_4.SampleGrad(Material_Texture2D_4Sampler, _653, _655 * _588, _654 * _588).xy * 2.0f.xx) - 1.0f.xx;
    float2 _692 = ((0.5f.xx + float2(dot(_637, Material_Material_PreshaderBuffer[15].yz), dot(_637, Material_Material_PreshaderBuffer[16].xy))) + Material_Material_PreshaderBuffer[17].xy) * Material_Material_PreshaderBuffer[19].xy;
    float2 _693 = ddy(_692);
    float2 _694 = ddx(_692);
    float2 _698 = _692 * Material_Material_PreshaderBuffer[19].z.xx;
    float2 _699 = _694 * _588;
    float2 _700 = _693 * _588;
    float2 _707 = (Material_Texture2D_5.SampleGrad(Material_Texture2D_5Sampler, _698, _699, _700).xy * 2.0f.xx) - 1.0f.xx;
    float4 _721 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _722 = _721.x;
    float4 _733 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, Material_Material_PreshaderBuffer[20].z.xx * float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _750 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[21].y, Material_Material_PreshaderBuffer[21].x, ((_722 * Material_Material_PreshaderBuffer[20].y).xxx * (_722.xxx + (_733.xyz * Material_Material_PreshaderBuffer[20].w.xxx))).x), 0.0f, 1.0f), 0.0f, 1.0f);
    float3 _753 = _750.xxx;
    float2 _758 = _692 * Material_Material_PreshaderBuffer[21].z.xx;
    float2 _765 = (Material_Texture2D_8.SampleGrad(Material_Texture2D_8Sampler, _758, _699, _700).xy * 2.0f.xx) - 1.0f.xx;
    float _786 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[22].z, Material_Material_PreshaderBuffer[22].y, _721.y), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[22].w, 0.0f, 1.0f);
    float3 _788 = _786.xxx;
    float2 _793 = _692 * Material_Material_PreshaderBuffer[23].x.xx;
    float2 _800 = (Material_Texture2D_9.SampleGrad(Material_Texture2D_9Sampler, _793, _699, _700).xy * 2.0f.xx) - 1.0f.xx;
    float _821 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[24].x, Material_Material_PreshaderBuffer[23].w, _721.z), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[24].y, 0.0f, 1.0f);
    float3 _823 = _821.xxx;
    float2 _828 = _692 * Material_Material_PreshaderBuffer[24].z.xx;
    float2 _835 = (Material_Texture2D_10.SampleGrad(Material_Texture2D_10Sampler, _828, _699, _700).xy * 2.0f.xx) - 1.0f.xx;
    float _856 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[25].z, Material_Material_PreshaderBuffer[25].y, _721.w), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[25].w, 0.0f, 1.0f);
    float3 _858 = _856.xxx;
    float3 _859 = lerp(lerp(lerp(lerp(float3(_664.x * Material_Material_PreshaderBuffer[13].w, _664.y * Material_Material_PreshaderBuffer[13].w, sqrt(clamp(1.0f - dot(_664, _664), 0.0f, 1.0f))), float3(_707.x * Material_Material_PreshaderBuffer[19].w, _707.y * Material_Material_PreshaderBuffer[19].w, sqrt(clamp(1.0f - dot(_707, _707), 0.0f, 1.0f))), _753), float3(_765.x * Material_Material_PreshaderBuffer[21].w, _765.y * Material_Material_PreshaderBuffer[21].w, sqrt(clamp(1.0f - dot(_765, _765), 0.0f, 1.0f))), _788), float3(_800.x * Material_Material_PreshaderBuffer[23].y, _800.y * Material_Material_PreshaderBuffer[23].y, sqrt(clamp(1.0f - dot(_800, _800), 0.0f, 1.0f))), _823), float3(_835.x * Material_Material_PreshaderBuffer[24].w, _835.y * Material_Material_PreshaderBuffer[24].w, sqrt(clamp(1.0f - dot(_835, _835), 0.0f, 1.0f))), _858);
    float _861 = _859.z + 1.0f;
    float2 _879 = ((0.5f.xx + float2(dot(_482, Material_Material_PreshaderBuffer[27].yz), dot(_482, Material_Material_PreshaderBuffer[28].xy))) + Material_Material_PreshaderBuffer[29].xy) * Material_Material_PreshaderBuffer[31].xy;
    float2 _880 = ddy(_879);
    float2 _881 = ddx(_879);
    float2 _890 = (Material_Texture2D_11.SampleGrad(Material_Texture2D_11Sampler, _879, _881 * _588, _880 * _588).xy * 2.0f.xx) - 1.0f.xx;
    float3 _906 = float3(_859.xy, _861);
    float3 _909 = float3(float3(_890.x * Material_Material_PreshaderBuffer[31].z, _890.y * Material_Material_PreshaderBuffer[31].z, _317).xy * (-1.0f).xx, sqrt(clamp(1.0f - dot(_890, _890), 0.0f, 1.0f)));
    float3 _915 = (_906 * dot(_906, _909).xxx) - (_861.xxx * _909);
    float3 _916 = _636.xxx;
    float3 _928 = normalize(mul(normalize((lerp(lerp(float3(_597.x * Material_Material_PreshaderBuffer[7].x, _597.y * Material_Material_PreshaderBuffer[7].x, sqrt(clamp(1.0f - dot(_597, _597), 0.0f, 1.0f))), _916 * _915, _916), _915, _916) * _435.w) + _435.xyz), _450)) * 1.0f;
    float4 _939 = Material_Texture2D_12.Sample(View_MaterialTextureBilinearWrapedSampler, _585);
    float3 _944 = _939.xyz * Material_Material_PreshaderBuffer[34].z.xxx;
    float3 _950 = lerp(_944, dot(_944, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[34].w.xxx);
    float3 _951 = normalize(1.0f.xxx);
    float _954 = _951.x;
    float3 _958 = float4(_954, _951.yz, Material_Material_PreshaderBuffer[34].y).xyz;
    float3 _960 = _958 * dot(_958, _950);
    float3 _961 = _950 - _960;
    float4 _975 = Material_Texture2D_13.Sample(View_MaterialTextureBilinearWrapedSampler, _653);
    float3 _980 = _975.xyz * Material_Material_PreshaderBuffer[37].z.xxx;
    float3 _986 = lerp(_980, dot(_980, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[37].w.xxx);
    float3 _990 = float4(_954, _951.yz, Material_Material_PreshaderBuffer[37].y).xyz;
    float3 _992 = _990 * dot(_990, _986);
    float3 _993 = _986 - _992;
    float4 _1007 = Material_Texture2D_14.Sample(View_MaterialTextureBilinearWrapedSampler, _698);
    float3 _1012 = _1007.xyz * Material_Material_PreshaderBuffer[40].z.xxx;
    float3 _1018 = lerp(_1012, dot(_1012, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[40].w.xxx);
    float3 _1022 = float4(_954, _951.yz, Material_Material_PreshaderBuffer[40].y).xyz;
    float3 _1024 = _1022 * dot(_1022, _1018);
    float3 _1025 = _1018 - _1024;
    float4 _1040 = Material_Texture2D_15.Sample(View_MaterialTextureBilinearWrapedSampler, _758);
    float3 _1045 = _1040.xyz * Material_Material_PreshaderBuffer[43].z.xxx;
    float3 _1051 = lerp(_1045, dot(_1045, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[43].w.xxx);
    float3 _1055 = float4(_954, _951.yz, Material_Material_PreshaderBuffer[43].y).xyz;
    float3 _1057 = _1055 * dot(_1055, _1051);
    float3 _1058 = _1051 - _1057;
    float4 _1073 = Material_Texture2D_16.Sample(View_MaterialTextureBilinearWrapedSampler, _793);
    float3 _1078 = _1073.xyz * Material_Material_PreshaderBuffer[46].z.xxx;
    float3 _1084 = lerp(_1078, dot(_1078, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[46].w.xxx);
    float3 _1088 = float4(_954, _951.yz, Material_Material_PreshaderBuffer[46].y).xyz;
    float3 _1090 = _1088 * dot(_1088, _1084);
    float3 _1091 = _1084 - _1090;
    float4 _1106 = Material_Texture2D_17.Sample(View_MaterialTextureBilinearWrapedSampler, _828);
    float3 _1111 = _1106.xyz * Material_Material_PreshaderBuffer[49].z.xxx;
    float3 _1117 = lerp(_1111, dot(_1111, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[49].w.xxx);
    float3 _1121 = float4(_954, _951.yz, Material_Material_PreshaderBuffer[49].y).xyz;
    float3 _1123 = _1121 * dot(_1121, _1117);
    float3 _1124 = _1117 - _1123;
    float3 _1136 = lerp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[38].xyz * (_992 + ((_993 * cos(Material_Material_PreshaderBuffer[37].y)) + (cross(_990, _993) * sin(Material_Material_PreshaderBuffer[37].y)))), Material_Material_PreshaderBuffer[41].xyz * (_1024 + ((_1025 * cos(Material_Material_PreshaderBuffer[40].y)) + (cross(_1022, _1025) * sin(Material_Material_PreshaderBuffer[40].y)))), _753), Material_Material_PreshaderBuffer[44].xyz * (_1057 + ((_1058 * cos(Material_Material_PreshaderBuffer[43].y)) + (cross(_1055, _1058) * sin(Material_Material_PreshaderBuffer[43].y)))), _788), Material_Material_PreshaderBuffer[47].xyz * (_1090 + ((_1091 * cos(Material_Material_PreshaderBuffer[46].y)) + (cross(_1088, _1091) * sin(Material_Material_PreshaderBuffer[46].y)))), _823), Material_Material_PreshaderBuffer[50].xyz * (_1123 + ((_1124 * cos(Material_Material_PreshaderBuffer[49].y)) + (cross(_1121, _1124) * sin(Material_Material_PreshaderBuffer[49].y)))), _858);
    float4 _1142 = Material_Texture2D_18.Sample(View_MaterialTextureBilinearWrapedSampler, _653);
    float _1143 = _1142.z;
    float4 _1151 = Material_Texture2D_19.Sample(View_MaterialTextureBilinearWrapedSampler, _698);
    float _1152 = _1151.z;
    float4 _1161 = Material_Texture2D_20.Sample(View_MaterialTextureBilinearWrapedSampler, _758);
    float _1162 = _1161.z;
    float4 _1171 = Material_Texture2D_21.Sample(View_MaterialTextureBilinearWrapedSampler, _793);
    float _1172 = _1171.z;
    float4 _1181 = Material_Texture2D_22.Sample(View_MaterialTextureBilinearWrapedSampler, _828);
    float _1182 = _1181.z;
    float _1188 = lerp(lerp(lerp(lerp((_1143 <= 0.0f) ? 0.0f : pow(_1143, Material_Material_PreshaderBuffer[50].w), (_1152 <= 0.0f) ? 0.0f : pow(_1152, Material_Material_PreshaderBuffer[51].x), _750), (_1162 <= 0.0f) ? 0.0f : pow(_1162, Material_Material_PreshaderBuffer[51].y), _786), (_1172 <= 0.0f) ? 0.0f : pow(_1172, Material_Material_PreshaderBuffer[51].z), _821), (_1182 <= 0.0f) ? 0.0f : pow(_1182, Material_Material_PreshaderBuffer[51].w), _856);
    float4 _1194 = Material_Texture2D_23.Sample(View_MaterialTextureBilinearWrapedSampler, _585);
    float _1234 = lerp(lerp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[53].x, Material_Material_PreshaderBuffer[52].w, _1142.y), lerp(Material_Material_PreshaderBuffer[53].z, Material_Material_PreshaderBuffer[53].y, _1151.y), _750), lerp(Material_Material_PreshaderBuffer[54].x, Material_Material_PreshaderBuffer[53].w, _1161.y), _786), lerp(Material_Material_PreshaderBuffer[54].z, Material_Material_PreshaderBuffer[54].y, _1171.y), _821), lerp(Material_Material_PreshaderBuffer[55].x, Material_Material_PreshaderBuffer[54].w, _1181.y), _856);
    float _1242 = lerp(_975.w, 1.0f, 0.5f) * Material_Material_PreshaderBuffer[55].y;
    float _1243 = _1194.x;
    float _1249 = _1142.x;
    float _1255 = _1151.x;
    float _1262 = _1161.x;
    float _1269 = _1171.x;
    float _1276 = _1181.x;
    float _1282 = lerp(lerp(lerp(lerp((_1249 <= 0.0f) ? 0.0f : pow(_1249, Material_Material_PreshaderBuffer[55].w), (_1255 <= 0.0f) ? 0.0f : pow(_1255, Material_Material_PreshaderBuffer[56].x), _750), (_1262 <= 0.0f) ? 0.0f : pow(_1262, Material_Material_PreshaderBuffer[56].y), _786), (_1269 <= 0.0f) ? 0.0f : pow(_1269, Material_Material_PreshaderBuffer[56].z), _821), (_1276 <= 0.0f) ? 0.0f : pow(_1276, Material_Material_PreshaderBuffer[56].w), _856);
    uint _1332 = 0u;
    do
    {
        if (abs(in_var_COLOR1.w) > 0.001000000047497451305389404296875f)
        {
            float _1299 = frac(cos(dot(floor(gl_FragCoord.xy), float2(347.834503173828125f, 3343.28369140625f))) * 1000.0f);
            if ((float((in_var_COLOR1.w < 0.0f) ? ((in_var_COLOR1.w + 1.0f) > _1299) : (in_var_COLOR1.w < _1299)) - 0.001000000047497451305389404296875f) < 0.0f)
            {
                discard;
            }
        }
        if (_434 > 1)
        {
            float _1314 = (_1242 - 0.33329999446868896484375f) * 1.49992501735687255859375f;
            uint _1322 = (_1314 > 0.75f) ? 15u : ((_1314 > 0.5f) ? 13u : ((_1314 > 0.25f) ? 9u : ((_1314 > 0.00999999977648258209228515625f) ? 8u : 0u)));
            if ((float(_1322) - 0.5f) < 0.0f)
            {
                discard;
            }
            _1332 = _1322;
            break;
        }
        if ((_1242 - 0.33329999446868896484375f) < 0.0f)
        {
            discard;
        }
        _1332 = 15u;
        break;
    } while(false);
    float3 _1333 = clamp(lerp(lerp(Material_Material_PreshaderBuffer[35].xyz * (_960 + ((_961 * cos(Material_Material_PreshaderBuffer[34].y)) + (cross(_958, _961) * sin(Material_Material_PreshaderBuffer[34].y)))), _916 * _1136, _916), _1136, _916), 0.0f.xxx, 1.0f.xxx);
    float _1334 = clamp(lerp(lerp(0.0f, _636 * _1188, _636), _1188, _636), 0.0f, 1.0f);
    float _1335 = clamp(Material_Material_PreshaderBuffer[52].x, 0.0f, 1.0f);
    float _1340 = (clamp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[52].z, Material_Material_PreshaderBuffer[52].y, _1194.y), _636 * _1234, _636), _1234, _636), 0.0f, 1.0f) * _436.y) + _436.x;
    float _1341 = clamp(lerp(lerp((_1243 <= 0.0f) ? 0.0f : pow(_1243, Material_Material_PreshaderBuffer[55].z), _636 * _1282, _636), _1282, _636), 0.0f, 1.0f);
    uint _1342 = in_var_PRIMITIVE_ID * 40u;
    float _1390 = 0.0f;
    float _1391 = 0.0f;
    float _1392 = 0.0f;
    float3 _1393 = 0.0f.xxx;
    float3 _1394 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_1342 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _1358 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _1362 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1358, 0.0f);
        float4 _1365 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1358, 0.0f);
        float4 _1368 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1358, 0.0f);
        float _1378 = _1368.w;
        _1390 = (_1340 * _1378) + _1368.z;
        _1391 = (_1335 * _1378) + _1368.y;
        _1392 = (_1334 * _1378) + _1368.x;
        _1393 = (_1333 * _1362.w) + _1362.xyz;
        _1394 = normalize((_928 * _1365.w) + ((_1365.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _1390 = _1340;
        _1391 = _1335;
        _1392 = _1334;
        _1393 = _1333;
        _1394 = _928;
    }
    uint _1397 = asuint(asfloat(View_PrimitiveSceneData.Load4(_1342 * 16 + 0)).x);
    float _1406 = _461.w;
    bool _1414 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _1420 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_1342 * 16 + 0)).x) & 2u) != 0u) && _1414)
    {
        _1420 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _1420 = 1.0f;
    }
    float _1471 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_1342 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _1439 = clamp((((_471 * 2097152.0f) + _472) * View_View_VolumetricLightmapWorldToUVScale) + View_View_VolumetricLightmapWorldToUVAdd, 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _1450 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_1439.x), int(_1439.y), int(_1439.z), 0).xyz, 0)));
        _1471 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_1450.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_1439 / _1450.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _1471 = _1420;
    }
    float4 _1472 = float4(_1471, 1.0f, 1.0f, 1.0f);
    float3 _1485 = ((_1393 - (_1393 * _1392)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _1492 = (lerp((0.07999999821186065673828125f * _1391).xxx, _1393, _1392.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _1495 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _1500 = 0.0f.xxx;
    if (_1495)
    {
        _1500 = _1485 + (_1492 * 0.449999988079071044921875f);
    }
    else
    {
        _1500 = _1485;
    }
    bool3 _1501 = _1495.xxx;
    float3 _1502 = float3(_1501.x ? 0.0f.xxx.x : _1492.x, _1501.y ? 0.0f.xxx.y : _1492.y, _1501.z ? 0.0f.xxx.z : _1492.z);
    float3 _1575 = 0.0f.xxx;
    if (_1414)
    {
        float4 _1525 = _324;
        _1525.y = (-0.48860299587249755859375f) * _1394.y;
        float4 _1528 = _1525;
        _1528.z = 0.48860299587249755859375f * _1394.z;
        float4 _1531 = _1528;
        _1531.w = (-0.48860299587249755859375f) * _1394.x;
        float3 _1532 = _1394 * _1394;
        float4 _1535 = _318;
        _1535.x = (1.09254801273345947265625f * _1394.x) * _1394.y;
        float4 _1538 = _1535;
        _1538.y = ((-1.09254801273345947265625f) * _1394.y) * _1394.z;
        float4 _1543 = _1538;
        _1543.z = 0.3153919875621795654296875f * ((3.0f * _1532.z) - 1.0f);
        float4 _1546 = _1543;
        _1546.w = ((-1.09254801273345947265625f) * _1394.x) * _1394.z;
        float4 _1550 = _1531;
        _1550.x = 0.886227548122406005859375f;
        float3 _1552 = _1550.yzw * 2.094395160675048828125f;
        float4 _1553 = float4(_1550.x, _1552.x, _1552.y, _1552.z);
        float4 _1554 = _1546 * 0.785398185253143310546875f;
        float _1555 = (_1532.x - _1532.y) * 0.4290426075458526611328125f;
        float3 _1561 = 0.0f.xxx;
        _1561.x = (dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[0], _1553) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[0], _1554)) + (IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.x * _1555);
        float3 _1567 = _1561;
        _1567.y = (dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[1], _1553) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[1], _1554)) + (IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.y * _1555);
        float3 _1573 = _1567;
        _1573.z = (dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[2], _1553) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[2], _1554)) + (IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.z * _1555);
        _1575 = max(0.0f.xxx, _1573);
    }
    else
    {
        _1575 = 0.0f.xxx;
    }
    float3 _1654 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _1606 = 0.0f;
        float _1607 = 0.0f;
        float3 _1608 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _1596 = 0.0f.xxx;
            float _1597 = 0.0f;
            if (_1414)
            {
                _1596 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _1597 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _1596 = _1394;
                _1597 = 1.0f;
            }
            float _1598 = 1.0f - _1597;
            float _1600 = 1.0f - (_1598 * _1598);
            _1606 = lerp(clamp(dot(_1596, _1394), 0.0f, 1.0f), 1.0f, _1600);
            _1607 = _1597;
            _1608 = lerp(_1596, _1394, _1600.xxx);
        }
        else
        {
            _1606 = 1.0f;
            _1607 = 1.0f;
            _1608 = _1394;
        }
        float4 _1612 = float4(_1608, 1.0f);
        float3 _1616 = _319;
        _1616.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _1612);
        float3 _1620 = _1616;
        _1620.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _1612);
        float3 _1624 = _1620;
        _1624.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _1612);
        float4 _1627 = _1612.xyzz * _1612.yzzx;
        float3 _1631 = _319;
        _1631.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _1627);
        float3 _1635 = _1631;
        _1635.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _1627);
        float3 _1639 = _1635;
        _1639.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _1627);
        _1654 = (max(0.0f.xxx, (_1624 + _1639) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * ((_1608.x * _1608.x) - (_1608.y * _1608.y)))) * _437.xyz) * (_1607 * _1606);
    }
    else
    {
        _1654 = 0.0f.xxx;
    }
    float3 _1655 = (_1575 * View_View_PrecomputedIndirectLightingColorScale) + _1654;
    float2 _1663 = ((_461.xy / _1406.xx) * _431.xy) + _431.wz;
    float2 _1782 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _1674 = int2(trunc(_1663 * View_View_BufferSizeAndInvSize.xy));
        int _1675 = _1674.x;
        int _1676 = _1674.y;
        float4 _1680 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1675, _1676, 0).xy, 0));
        float _1681 = _1680.x;
        float2 _1781 = 0.0f.xx;
        if ((abs((((_1681 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1681 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1406) / _1406) > 0.00999999977648258209228515625f)
        {
            float2 _1705 = _1663 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _1709 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1675 - 1, _1676, 0).xy, 0));
            float _1710 = _1709.x;
            float _1718 = abs((((_1710 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1710 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1406);
            bool _1719 = _1718 < 100000000.0f;
            bool2 _1720 = _1719.xx;
            float2 _1721 = float2(_1720.x ? _1705.x : _1663.x, _1720.y ? _1705.y : _1663.y);
            float _1722 = _1719 ? _1718 : 100000000.0f;
            float2 _1725 = _1663 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _1729 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1675, _1676 + 1, 0).xy, 0));
            float _1730 = _1729.x;
            float _1738 = abs((((_1730 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1730 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1406);
            bool _1739 = _1738 < _1722;
            bool2 _1740 = _1739.xx;
            float2 _1741 = float2(_1740.x ? _1725.x : _1721.x, _1740.y ? _1725.y : _1721.y);
            float _1742 = _1739 ? _1738 : _1722;
            float2 _1744 = _1663 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _1748 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1675 + 1, _1676, 0).xy, 0));
            float _1749 = _1748.x;
            float _1757 = abs((((_1749 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1749 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1406);
            bool _1758 = _1757 < _1742;
            bool2 _1759 = _1758.xx;
            float2 _1760 = float2(_1759.x ? _1744.x : _1741.x, _1759.y ? _1744.y : _1741.y);
            float2 _1764 = _1663 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _1768 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1675, _1676 - 1, 0).xy, 0));
            float _1769 = _1768.x;
            bool2 _1779 = (abs((((_1769 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1769 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1406) < (_1758 ? _1757 : _1742)).xx;
            _1781 = float2(_1779.x ? _1764.x : _1760.x, _1779.y ? _1764.y : _1760.y);
        }
        else
        {
            _1781 = _1663;
        }
        _1782 = _1781;
    }
    else
    {
        _1782 = _1663;
    }
    uint _1788_dummy_parameter;
    uint2 _1788 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _1788_dummy_parameter);
    float _1806 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_1782 * float2(float(_1788.x), float(_1788.y)))), 0).xy, 0)).x, ((uint(((2.0f * float((_1397 & 128u) != 0u)) + float((_1397 & 256u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _1816 = _1341.xxx;
    uint _1844 = 0u;
    float3 _1845 = 0.0f.xxx;
    int3 _1846 = int3(0, 0, 0);
    [branch]
    if (_364)
    {
        _1844 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift;
        _1845 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams;
        _1846 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _1844 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
        _1845 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridZParams;
        _1846 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint2 _1862 = uint2(_453 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (_1844.xx & uint2(31u, 31u));
    int3 _1872 = int3(0, 0, 0);
    [branch]
    if (_364)
    {
        _1872 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _1872 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint _1880 = (((min(uint(max(0.0f, log2((_361 * _1845.x) + _1845.y) * _1845.z)), uint(_1846.z - 1)) * uint(_1872.y)) + _1862.y) * uint(_1872.x)) + _1862.x;
    float4 _1898 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _1898 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_1782 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _1898 = 1.0f.xxxx;
    }
    float4 _1899 = _1898 * _1898;
    uint _1902 = asuint(asfloat(View_PrimitiveSceneData.Load4(_1342 * 16 + 0)).x);
    uint _1915 = (uint((_1902 & 1024u) != 0u) | (uint((_1902 & 2048u) != 0u) << 1u)) | (uint((_1902 & 4096u) != 0u) << 2u);
    uint _1939 = 0u;
    uint _1940 = 0u;
    float2 _1941 = 0.0f.xx;
    float3 _1942 = 0.0f.xxx;
    float3 _1943 = 0.0f.xxx;
    [branch]
    if (_364)
    {
        _1939 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight;
        _1940 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
        _1941 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
        _1942 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor;
        _1943 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection;
    }
    else
    {
        _1939 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_HasDirectionalLight;
        _1940 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
        _1941 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
        _1942 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightColor;
        _1943 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDirection;
    }
    float4 _2083 = 0.0f.xxxx;
    float4 _2084 = 0.0f.xxxx;
    [branch]
    if (_1939 != 0u)
    {
        float4 _1962 = float4(float((_1940 & 1u) != 0u), float((_1940 & 2u) != 0u), float((_1940 & 4u) != 0u), float((_1940 & 8u) != 0u));
        uint _1963 = _1940 >> 4u;
        float _1977 = dot(float4(float((_1963 & 1u) != 0u), float((_1963 & 2u) != 0u), float((_1963 & 4u) != 0u), float((_1963 & 8u) != 0u)), _1899);
        bool _1979 = _1941.y < 0.0f;
        float _1980 = _1979 ? 1.0f : _1977;
        float _1997 = 0.0f;
        float _1998 = 0.0f;
        [branch]
        if (uint((_1940 & 255u) != 0u) != 0u)
        {
            float _1991 = clamp((_1406 * _1941.x) + _1941.y, 0.0f, 1.0f);
            float _1993 = lerp(_1979 ? _1977 : 1.0f, lerp(1.0f, dot(_1472, _1962), dot(_1962, 1.0f.xxxx)), _1991 * _1991);
            _1997 = min(_1993, _1980) * _1980;
            _1998 = _1993 * _1980;
        }
        else
        {
            _1997 = 1.0f;
            _1998 = 1.0f;
        }
        float3 _2067 = 0.0f.xxx;
        float3 _2068 = 0.0f.xxx;
        [branch]
        if ((_1998 + _1997) > 0.0f)
        {
            float _2005 = max(_1390, View_View_MinRoughness);
            float3 _2008 = _1943 * rsqrt(dot(_1943, _1943));
            float _2009 = dot(_1394, _2008);
            float _2010 = clamp(_2009, 0.0f, 1.0f);
            float _2011 = dot(_1394, _481);
            float _2012 = dot(_481, _2008);
            float _2015 = rsqrt(2.0f + (2.0f * _2012));
            float _2018 = clamp((_2009 + _2011) * _2015, 0.0f, 1.0f);
            float _2024 = clamp(abs(_2011) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float3 _2026 = 1.0f.xxx * _2010;
            float _2028 = _2005 * _2005;
            float _2029 = _2028 * _2028;
            float _2033 = (((_2018 * _2029) - _2018) * _2018) + 1.0f;
            float _2037 = sqrt(_2029);
            float _2038 = 1.0f - _2037;
            float _2047 = 1.0f - clamp(_2015 + (_2015 * _2012), 0.0f, 1.0f);
            float _2048 = _2047 * _2047;
            float _2050 = (_2048 * _2048) * _2047;
            float3 _2064 = (_1942 * 1.0f) * _1998;
            _2067 = ((_1500 * 0.3183098733425140380859375f) * _2026) * _2064;
            _2068 = ((_2026 * (((clamp(50.0f * _1502.y, 0.0f, 1.0f) * _2050).xxx + (_1502 * (1.0f - _2050))) * ((_2029 / ((3.1415927410125732421875f * _2033) * _2033)) * (0.5f / ((_2010 * ((_2024 * _2038) + _2037)) + (_2024 * ((_2010 * _2038) + _2037))))))) * 1.0f) * _2064;
        }
        else
        {
            _2067 = 0.0f.xxx;
            _2068 = 0.0f.xxx;
        }
        float4 _2072 = float4(_2067, 0.0f);
        float4 _2076 = float4(_2068, 0.0f);
        bool4 _2080 = (((_1940 >> 8u) & _1915) != 0u).xxxx;
        _2083 = float4(_2080.x ? _2072.x : 0.0f.xxxx.x, _2080.y ? _2072.y : 0.0f.xxxx.y, _2080.z ? _2072.z : 0.0f.xxxx.z, _2080.w ? _2072.w : 0.0f.xxxx.w);
        _2084 = float4(_2080.x ? _2076.x : 0.0f.xxxx.x, _2080.y ? _2076.y : 0.0f.xxxx.y, _2080.z ? _2076.z : 0.0f.xxxx.z, _2080.w ? _2076.w : 0.0f.xxxx.w);
    }
    else
    {
        _2083 = 0.0f.xxxx;
        _2084 = 0.0f.xxxx;
    }
    uint _2108 = 0u;
    uint _2109 = 0u;
    [branch]
    if (_364)
    {
        uint _2098 = _1880 * 2u;
        _2108 = min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_2098).x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
        _2109 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_2098 + 1u).x;
    }
    else
    {
        uint _2088 = _1880 * 2u;
        _2108 = min(OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_2088).x, OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights);
        _2109 = OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_2088 + 1u).x;
    }
    uint _2115 = min(_2108, (_364 ? OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights : OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights));
    float4 _2117 = 0.0f.xxxx;
    float4 _2120 = 0.0f.xxxx;
    _2117 = _2083;
    _2120 = _2084;
    float4 _2118 = 0.0f.xxxx;
    float4 _2121 = 0.0f.xxxx;
    [loop]
    for (uint _2122 = 0u; _2122 < _2115; _2117 = _2118, _2120 = _2121, _2122++)
    {
        uint _2127 = _2109 + _2122;
        float4 _2159 = 0.0f.xxxx;
        float4 _2160 = 0.0f.xxxx;
        float4 _2161 = 0.0f.xxxx;
        float4 _2162 = 0.0f.xxxx;
        float4 _2163 = 0.0f.xxxx;
        [branch]
        if (_364)
        {
            uint _2148 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid.Load(_2127).x * 6u;
            _2159 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2148);
            _2160 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2148 + 1u);
            _2161 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2148 + 3u);
            _2162 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2148 + 2u);
            _2163 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2148 + 4u);
        }
        else
        {
            uint _2134 = OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid.Load(_2127).x * 6u;
            _2159 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2134);
            _2160 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2134 + 1u);
            _2161 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2134 + 3u);
            _2162 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2134 + 2u);
            _2163 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2134 + 4u);
        }
        float2 _2172 = spvUnpackHalf2x16(asuint(_2161.w));
        float _2173 = _2172.x;
        bool _2176 = _2160.w == 0.0f;
        uint _2180 = asuint(_2162.w);
        float4 _2196 = float4(float((_2180 & 1u) != 0u), float((_2180 & 2u) != 0u), float((_2180 & 4u) != 0u), float((_2180 & 8u) != 0u));
        uint _2197 = _2180 >> 4u;
        float3 _2212 = _2159.xyz - _470;
        float _2213 = dot(_2212, _2212);
        float _2230 = 0.0f;
        if (_2176)
        {
            float _2225 = _2213 * (_2159.w * _2159.w);
            float _2228 = clamp(1.0f - (_2225 * _2225), 0.0f, 1.0f);
            _2230 = _2228 * _2228;
        }
        else
        {
            float3 _2219 = _2212 * _2159.w;
            _2230 = pow(1.0f - clamp(dot(_2219, _2219), 0.0f, 1.0f), _2160.w);
        }
        float _2240 = 0.0f;
        if (_2161.x > (-2.0f))
        {
            float _2237 = clamp((dot(_2212 * rsqrt(_2213), _2162.xyz) - _2161.x) * _2161.y, 0.0f, 1.0f);
            _2240 = _2230 * (_2237 * _2237);
        }
        else
        {
            _2240 = _2230;
        }
        float3 _2560 = 0.0f.xxx;
        float3 _2561 = 0.0f.xxx;
        [branch]
        if (_2240 > 0.0f)
        {
            float _2251 = 0.0f;
            [branch]
            if (uint((_2180 & 255u) != 0u) != 0u)
            {
                _2251 = dot(float4(float((_2197 & 1u) != 0u), float((_2197 & 2u) != 0u), float((_2197 & 4u) != 0u), float((_2197 & 8u) != 0u)), _1899) * lerp(1.0f, dot(_1472, _2196), dot(_2196, 1.0f.xxxx));
            }
            else
            {
                _2251 = 1.0f;
            }
            float3 _2558 = 0.0f.xxx;
            float3 _2559 = 0.0f.xxx;
            [branch]
            if ((_2251 + _2251) > 0.0f)
            {
                float3 _2257 = _2163.xyz * (0.5f * _2173);
                float3 _2258 = _2212 - _2257;
                float3 _2259 = _2212 + _2257;
                float _2262 = max(_1390, View_View_MinRoughness);
                bool _2263 = _2173 > 0.0f;
                float _2290 = 0.0f;
                float _2291 = 0.0f;
                float _2292 = 0.0f;
                [branch]
                if (_2263)
                {
                    float _2275 = rsqrt(dot(_2258, _2258));
                    float _2276 = rsqrt(dot(_2259, _2259));
                    float _2277 = _2275 * _2276;
                    float _2279 = dot(_2258, _2259) * _2277;
                    _2290 = _2279;
                    _2291 = 0.5f * ((dot(_1394, _2258) * _2275) + (dot(_1394, _2259) * _2276));
                    _2292 = _2277 / (((_2279 * 0.5f) + 0.5f) + _2277);
                }
                else
                {
                    float _2267 = dot(_2258, _2258);
                    _2290 = 1.0f;
                    _2291 = dot(_1394, _2258 * rsqrt(_2267));
                    _2292 = 1.0f / (_2267 + 1.0f);
                }
                float _2310 = 0.0f;
                if (_2161.z > 0.0f)
                {
                    float _2299 = sqrt(clamp((_2161.z * _2161.z) * _2292, 0.0f, 1.0f));
                    float _2309 = 0.0f;
                    if (_2291 < _2299)
                    {
                        float _2305 = _2299 + max(_2291, -_2299);
                        _2309 = (_2305 * _2305) / (4.0f * _2299);
                    }
                    else
                    {
                        _2309 = _2291;
                    }
                    _2310 = _2309;
                }
                else
                {
                    _2310 = _2291;
                }
                float _2311 = clamp(_2310, 0.0f, 1.0f);
                float3 _2329 = 0.0f.xxx;
                if (_2263)
                {
                    float3 _2316 = reflect(-_481, _1394);
                    float3 _2317 = _2259 - _2258;
                    float _2319 = dot(_2316, _2317);
                    _2329 = _2258 + (_2317 * clamp(dot(_2258, (_2316 * _2319) - _2317) / ((_2173 * _2173) - (_2319 * _2319)), 0.0f, 1.0f));
                }
                else
                {
                    _2329 = _2258;
                }
                float _2331 = rsqrt(dot(_2329, _2329));
                float3 _2332 = _2329 * _2331;
                float _2333 = max(_2262, View_View_MinRoughness);
                float _2338 = clamp((_2161.z * _2331) * (1.0f - (_2333 * _2333)), 0.0f, 1.0f);
                float _2340 = clamp(_2163.w * _2331, 0.0f, 1.0f);
                float _2348 = dot(_1394, _2332);
                float _2349 = dot(_1394, _481);
                float _2350 = dot(_481, _2332);
                float _2353 = rsqrt(2.0f + (2.0f * _2350));
                bool _2360 = _2338 > 0.0f;
                float _2455 = 0.0f;
                float _2456 = 0.0f;
                if (_2360)
                {
                    float _2365 = sqrt(1.0f - (_2338 * _2338));
                    float _2367 = (2.0f * _2348) * _2349;
                    float _2368 = _2367 - _2350;
                    float _2453 = 0.0f;
                    float _2454 = 0.0f;
                    if (_2368 >= _2365)
                    {
                        _2453 = 1.0f;
                        _2454 = abs(_2349);
                    }
                    else
                    {
                        float _2376 = _2338 * rsqrt(1.0f - (_2368 * _2368));
                        float _2379 = _2376 * (_2349 - (_2368 * _2348));
                        float _2385 = _2376 * ((((2.0f * _2349) * _2349) - 1.0f) - (_2368 * _2350));
                        float _2396 = _2376 * sqrt(clamp((((1.0f - (_2348 * _2348)) - (_2349 * _2349)) - (_2350 * _2350)) + (_2367 * _2350), 0.0f, 1.0f));
                        float _2398 = (_2396 * 2.0f) * _2349;
                        float _2399 = _2348 * _2365;
                        float _2400 = _2399 + _2349;
                        float _2401 = _2400 + _2379;
                        float _2402 = _2350 * _2365;
                        float _2404 = (_2402 + 1.0f) + _2385;
                        float _2405 = _2396 * _2404;
                        float _2406 = _2401 * _2404;
                        float _2407 = _2398 * _2401;
                        float _2412 = _2406 * (((-0.5f) * _2405) + ((0.25f * _2398) * _2401));
                        float _2426 = ((_2405 * _2405) + (_2407 * (_2407 - (2.0f * _2405)))) + (_2401 * ((_2400 * (_2404 * _2404)) + (_2406 * (((-0.5f) * (_2404 + _2402)) - 0.5f))));
                        float _2431 = (2.0f * _2412) / ((_2426 * _2426) + (_2412 * _2412));
                        float _2432 = _2431 * _2426;
                        float _2434 = 1.0f - (_2431 * _2412);
                        float _2442 = _2402 + ((_2434 * _2385) + (_2432 * _2398));
                        float _2445 = rsqrt(2.0f + (2.0f * _2442));
                        _2453 = clamp(((_2399 + ((_2434 * _2379) + (_2432 * _2396))) + _2349) * _2445, 0.0f, 1.0f);
                        _2454 = clamp(_2445 + (_2445 * _2442), 0.0f, 1.0f);
                    }
                    _2455 = _2453;
                    _2456 = _2454;
                }
                else
                {
                    _2455 = clamp((_2348 + _2349) * _2353, 0.0f, 1.0f);
                    _2456 = clamp(_2353 + (_2353 * _2350), 0.0f, 1.0f);
                }
                float _2459 = clamp(abs(_2349) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _2462 = 1.0f.xxx * ((_2176 ? _2292 : 1.0f) * _2311);
                float3 _2552 = 0.0f.xxx;
                if (((0u | (asuint(clamp(1.0f - (max(_2173, _2161.z) * 0.0500000007450580596923828125f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _2552 = 0.0f.xxx;
                }
                else
                {
                    float _2469 = _2262 * _2262;
                    float _2470 = _2469 * _2469;
                    float _2480 = 0.0f;
                    if (_2340 > 0.0f)
                    {
                        _2480 = clamp(_2470 + ((_2340 * _2340) / ((_2456 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _2480 = _2470;
                    }
                    float _2495 = 0.0f;
                    float _2496 = 0.0f;
                    if (_2360)
                    {
                        float _2493 = _2480 + (((0.25f * _2338) * ((3.0f * asfloat(532487669 + (asint(_2480) >> 1))) + _2338)) / (_2456 + 0.001000000047497451305389404296875f));
                        _2495 = _2480 / _2493;
                        _2496 = _2493;
                    }
                    else
                    {
                        _2495 = 1.0f;
                        _2496 = _2480;
                    }
                    float _2518 = 0.0f;
                    if (_2290 < 1.0f)
                    {
                        float _2503 = sqrt((1.00010001659393310546875f - _2290) / (1.0f + _2290));
                        _2518 = _2495 * sqrt(_2496 / (_2496 + (((0.25f * _2503) * ((3.0f * asfloat(532487669 + (asint(_2496) >> 1))) + _2503)) / (_2456 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _2518 = _2495;
                    }
                    float _2522 = (((_2455 * _2480) - _2455) * _2455) + 1.0f;
                    float _2527 = sqrt(_2480);
                    float _2528 = 1.0f - _2527;
                    float _2537 = 1.0f - _2456;
                    float _2538 = _2537 * _2537;
                    float _2540 = (_2538 * _2538) * _2537;
                    _2552 = _2462 * (((clamp(50.0f * _1502.y, 0.0f, 1.0f) * _2540).xxx + (_1502 * (1.0f - _2540))) * (((_2480 / ((3.1415927410125732421875f * _2522) * _2522)) * _2518) * (0.5f / ((_2311 * ((_2459 * _2528) + _2527)) + (_2459 * ((_2311 * _2528) + _2527))))));
                }
                float3 _2555 = (_2160.xyz * _2240) * _2251;
                _2558 = ((_1500 * 0.3183098733425140380859375f) * _2462) * _2555;
                _2559 = (_2552 * 1.0f) * _2555;
            }
            else
            {
                _2558 = 0.0f.xxx;
                _2559 = 0.0f.xxx;
            }
            _2560 = _2558;
            _2561 = _2559;
        }
        else
        {
            _2560 = 0.0f.xxx;
            _2561 = 0.0f.xxx;
        }
        [flatten]
        if (((_2180 >> 8u) & _1915) != 0u)
        {
            _2118 = _2117 + float4(_2560, 0.0f);
            _2121 = _2120 + float4(_2561, 0.0f);
        }
        else
        {
            _2118 = _2117;
            _2121 = _2120;
        }
    }
    bool4 _2580 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _2589 = int(asuint(asfloat(View_PrimitiveSceneData.Load4(_1342 * 16 + 0)).w));
    float3 _2593 = (_1394 * (2.0f * dot(_481, _1394))) - _481;
    float _2601 = 1.0f - (1.2000000476837158203125f * log2(max(_1390, 0.001000000047497451305389404296875f)));
    float4 _2617 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_2593, ReflectionCapture_ReflectionCapture_CaptureProperties[_2589].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _2601);
    float _2621 = 1.0f - _2617.w;
    float4 _2625 = float4(_2617.xyz * ReflectionCapture_ReflectionCapture_CaptureProperties[_2589].x, _2621);
    float3 _2630 = _2625.xyz * View_View_PrecomputedIndirectSpecularColorScale;
    float4 _2631 = float4(_2630.x, _2630.y, _2630.z, _2625.w);
    float4 _2668 = 0.0f.xxxx;
    float3 _2669 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        float3 _2652 = OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _2593, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _2601).xyz * View_View_SkyLightColor.xyz;
        float4 _2666 = 0.0f.xxxx;
        float3 _2667 = 0.0f.xxx;
        [flatten]
        if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.z < 1.0f) && true)
        {
            float3 _2664 = _2630.xyz + ((_2652 * _2621) * 1.0f);
            _2666 = float4(_2664.x, _2664.y, _2664.z, _2625.w);
            _2667 = 0.0f.xxx;
        }
        else
        {
            _2666 = _2631;
            _2667 = _2652 * 1.0f;
        }
        _2668 = _2666;
        _2669 = _2667;
    }
    else
    {
        _2668 = _2631;
        _2669 = 0.0f.xxx;
    }
    float4 _2692 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _1390) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _2693 = _2692.x;
    float2 _2703 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_2693 * _2693, exp2((-9.27999973297119140625f) * clamp(dot(_1394, _481), 0.0f, 1.0f))) * _2693) + _2692.y)) + _2692.zw;
    bool _2731 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2799 = 0.0f.xxxx;
    if (_2731)
    {
        float4 _2749 = mul(((float4(_471, 0.0f) + float4(_439, 0.0f)) * 2097152.0f) + float4(_472, 1.0f), _438);
        float _2750 = _2749.w;
        float3 _2772 = float3(((_2749.xy / _2750.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_2750 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _2787 = 0.0f.xxxx;
        if (_2731)
        {
            float4 _2786 = 0.0f.xxxx;
            if (_364)
            {
                _2786 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _2772, 0.0f);
            }
            else
            {
                _2786 = OpaqueBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _2772, 0.0f);
            }
            _2787 = _2786;
        }
        else
        {
            _2787 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _2799 = float4(_2787.xyz + (in_var_TEXCOORD7.xyz * _2787.w), _2787.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _2799 = in_var_TEXCOORD7;
    }
    float3 _2806 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[32].xyz, Material_Material_PreshaderBuffer[31].w.xxx), 0.0f.xxx);
    float3 _2863 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _2837 = abs(((_471 - asfloat(View_PrimitiveSceneData.Load4((_1342 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_472 - asfloat(View_PrimitiveSceneData.Load4((_1342 + 19u) * 16 + 0)).xyz));
        float3 _2838 = float3(asfloat(View_PrimitiveSceneData.Load4((_1342 + 18u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_1342 + 25u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_1342 + 26u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _2862 = 0.0f.xxx;
        if (any(bool3(_2837.x > _2838.x, _2837.y > _2838.y, _2837.z > _2838.z)))
        {
            float3 _2858 = frac(frac(((_471.x + _471.y) + _471.z) * 2420.113525390625f) + (((_472.x + _472.y) + _472.z) * 0.001154000055976212024688720703125f)).xxx;
            _2862 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2858.x > 0.5f.xxx.x, _2858.y > 0.5f.xxx.y, _2858.z > 0.5f.xxx.z)));
        }
        else
        {
            _2862 = _2806;
        }
        _2863 = _2862;
    }
    else
    {
        _2863 = _2806;
    }
    float4 _2874 = float4((((lerp((float4(_2580.x ? 0.0f.xxxx.x : _2117.x, _2580.y ? 0.0f.xxxx.y : _2117.y, _2580.z ? 0.0f.xxxx.z : _2117.z, _2580.w ? 0.0f.xxxx.w : _2117.w).xyz + float4(_2580.x ? 0.0f.xxxx.x : _2120.x, _2580.y ? 0.0f.xxxx.y : _2120.y, _2580.z ? 0.0f.xxxx.z : _2120.z, _2580.w ? 0.0f.xxxx.w : _2120.w).xyz) + (((((_2668.xyz * lerp(1.0f, min((dot(_1655, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * _1806) / max(ReflectionCapture_ReflectionCapture_CaptureOffsetAndAverageBrightness[_2589].w * dot(View_View_PrecomputedIndirectSpecularColorScale, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)), 9.9999997473787516355514526367188e-05f), View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp((_1390 * View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x) + View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y, 0.0f, 1.0f)))).xyz + (_2669 * _2668.w)).xyz * ((_1502 * _2703.x) + (clamp(50.0f * _1502.y, 0.0f, 1.0f) * _2703.y).xxx)) * _1806) * max(_1816, ((((((_1502 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1341) + ((_1502 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1341) + ((_1502 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1341)), _1500 + (_1502 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + (((_1655 * _1806) * _1500) * max(_1816, ((((((_1393 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1341) + ((_1393 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1341) + ((_1393 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1341))) + _2863) * _2799.w) + _2799.xyz, 0.0f);
    _2874.w = 0.0f;
    out_var_SV_Target0 = _2874 * View_View_PreExposure;
    gl_SampleMask = int(_1332);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD10_centroid = stage_input.in_var_TEXCOORD10_centroid;
    in_var_TEXCOORD11_centroid = stage_input.in_var_TEXCOORD11_centroid;
    in_var_COLOR0 = stage_input.in_var_COLOR0;
    in_var_COLOR1 = stage_input.in_var_COLOR1;
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
