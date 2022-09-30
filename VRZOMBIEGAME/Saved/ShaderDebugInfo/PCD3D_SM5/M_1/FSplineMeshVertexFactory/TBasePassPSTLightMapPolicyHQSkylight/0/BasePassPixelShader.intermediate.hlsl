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
    float View_View_MinRoughness : packoffset(c238.z);
};

ByteAddressBuffer View_PrimitiveSceneData;
ByteAddressBuffer View_LightmapSceneData;
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

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[57] : packoffset(c0);
};

SamplerState View_MaterialTextureBilinearWrapedSampler;
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
Texture2D<float4> LightmapResourceCluster_LightMapTexture;
Texture2D<float4> LightmapResourceCluster_SkyOcclusionTexture;
SamplerState LightmapResourceCluster_LightMapSampler;
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
static float4 in_var_TEXCOORD4;
static uint in_var_PACKED_EYE_INDEX;
static uint in_var_PRIMITIVE_ID;
static uint in_var_LIGHTMAP_ID;
static float4 in_var_TEXCOORD7;
static float4 out_var_SV_Target0;

struct SPIRV_Cross_Input
{
    float4 in_var_TEXCOORD10_centroid : TEXCOORD10_centroid;
    float4 in_var_TEXCOORD11_centroid : TEXCOORD11_centroid;
    float4 in_var_COLOR0 : COLOR0;
    float4 in_var_TEXCOORD0[1] : TEXCOORD0;
    float4 in_var_TEXCOORD4 : TEXCOORD4;
    nointerpolation uint in_var_PACKED_EYE_INDEX : PACKED_EYE_INDEX;
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
    nointerpolation uint in_var_LIGHTMAP_ID : LIGHTMAP_ID;
    float4 in_var_TEXCOORD7 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
    uint gl_SampleMask : SV_Coverage;
};

static float _304 = 0.0f;
static float3 _305 = 0.0f.xxx;
static float _308 = 0.0f;

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
    bool _344 = false;
    float _341 = 1.0f / gl_FragCoord.w;
    float4x4 _408 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _409 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _410 = 0.0f.xxx;
    float4 _411 = 0.0f.xxxx;
    float4 _412 = 0.0f.xxxx;
    float4 _413 = 0.0f.xxxx;
    int _414 = 0;
    float4 _415 = 0.0f.xxxx;
    float2 _416 = 0.0f.xx;
    float4 _417 = 0.0f.xxxx;
    float4x4 _418 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _419 = 0.0f.xxx;
    float3 _420 = 0.0f.xxx;
    float3 _421 = 0.0f.xxx;
    do
    {
        _344 = in_var_PACKED_EYE_INDEX == 0u;
        if (_344)
        {
            _408 = View_View_ViewToClip;
            _409 = View_View_SVPositionToTranslatedWorld;
            _410 = View_View_ViewForward;
            _411 = View_View_ScreenPositionScaleBias;
            _412 = View_View_ViewRectMin;
            _413 = View_View_ViewSizeAndInvSize;
            _414 = View_View_NumSceneColorMSAASamples;
            _415 = View_View_NormalOverrideParameter;
            _416 = View_View_RoughnessOverrideParameter;
            _417 = View_View_SkyLightColor;
            _418 = View_View_RelativeWorldToClip;
            _419 = -View_View_MatrixTilePosition;
            _420 = -View_View_ViewTilePosition;
            _421 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _408 = InstancedView_InstancedView_ViewToClip;
            _409 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _410 = InstancedView_InstancedView_ViewForward;
            _411 = InstancedView_InstancedView_ScreenPositionScaleBias;
            _412 = InstancedView_InstancedView_ViewRectMin;
            _413 = InstancedView_InstancedView_ViewSizeAndInvSize;
            _414 = InstancedView_InstancedView_NumSceneColorMSAASamples;
            _415 = InstancedView_InstancedView_NormalOverrideParameter;
            _416 = InstancedView_InstancedView_RoughnessOverrideParameter;
            _417 = InstancedView_InstancedView_SkyLightColor;
            _418 = InstancedView_InstancedView_RelativeWorldToClip;
            _419 = -InstancedView_InstancedView_MatrixTilePosition;
            _420 = -InstancedView_InstancedView_ViewTilePosition;
            _421 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float3x3 _430 = float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz);
    float2 _433 = gl_FragCoord.xy - _412.xy;
    float4 _441 = float4(((_433 * _413.zw) - 0.5f.xx) * float2(2.0f, -2.0f), _308, 1.0f) * _341;
    float4 _446 = mul(float4(gl_FragCoord.xyz, 1.0f), _409);
    float3 _450 = _446.xyz / _446.w.xxx;
    float3 _451 = -_420;
    float3 _452 = _450 - _421;
    float3 _461 = 0.0f.xxx;
    if (_408[3].w >= 1.0f)
    {
        _461 = -_410;
    }
    else
    {
        _461 = normalize(-_450);
    }
    float2 _462 = (-0.5f).xx + float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y);
    float2 _466 = float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[1].x.xx;
    float2 _467 = ddy(_466);
    float2 _468 = ddx(_466);
    float3 _469 = mul(_430, _461);
    float2 _478 = Material_Material_PreshaderBuffer[1].y.xx * ((_469.xy * (-1.0f).xx) / _469.z.xx);
    float2 _483 = _466 + (_478 * Material_Material_PreshaderBuffer[2].x.xx);
    float2 _487 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float2 _491 = _487 + View_View_TemporalAAParams.x.xx;
    float4 _506 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _487 * 0.015625f.xx, View_View_MaterialTextureMipBias);
    float _514 = lerp(Material_Material_PreshaderBuffer[2].z, Material_Material_PreshaderBuffer[2].y, (float((uint(_491.x) + (2u * uint(_491.y))) % 5u) + _506.x) * 0.16666667163372039794921875f);
    float _524 = lerp(Material_Material_PreshaderBuffer[2].w * _514, Material_Material_PreshaderBuffer[3].x * _514, clamp(abs(dot(_461, in_var_TEXCOORD11_centroid.xyz)), 0.0f, 1.0f));
    float _525 = floor(_524);
    float _526 = 1.0f / _524;
    float2 _528 = _478 * _526.xx;
    float2 _529 = ddx(_483);
    float2 _530 = ddy(_483);
    float _536_copy;
    float2 _539 = 0.0f.xx;
    _539 = 0.0f.xx;
    float _537 = 0.0f;
    float2 _540 = 0.0f.xx;
    int _542 = 0;
    float _544 = 0.0f;
    float2 _563 = 0.0f.xx;
    float _536 = 1.0f;
    int _541 = 0;
    float _543 = 1.0f;
    float _545 = 1.0f;
    for (;;)
    {
        if (float(_541) < (_525 + 2.0f))
        {
            _544 = dot(Material_Material_PreshaderBuffer[6], Material_Texture2D_1.SampleGrad(Material_Texture2D_1Sampler, _483 + _539, _529, _530));
            if (_536 < _544)
            {
                float _558 = _544 - _536;
                _563 = _539 - (_528 * (_558 / ((_545 - _543) + _558)));
                break;
            }
            _537 = _536 - _526;
            _540 = _539 + _528;
            _542 = _541 + 1;
            _536_copy = _536;
            _536 = _537;
            _539 = _540;
            _541 = _542;
            _543 = _544;
            _545 = _536_copy;
            continue;
        }
        else
        {
            _563 = _539;
            break;
        }
    }
    float2 _565 = _483 + _563.xy;
    float2 _568 = View_View_MaterialTextureDerivativeMultiply.xx;
    float2 _577 = (Material_Texture2D_2.SampleGrad(Material_Texture2D_2Sampler, _565, _468 * _568, _467 * _568).xy * 2.0f.xx) - 1.0f.xx;
    float4 _599 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, Material_Material_PreshaderBuffer[7].w.xx * float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _616 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[8].z, Material_Material_PreshaderBuffer[8].y, ((in_var_COLOR0.y * Material_Material_PreshaderBuffer[7].z).xxx * (in_var_COLOR0.y.xxx + (_599.xyz * Material_Material_PreshaderBuffer[8].x.xxx))).x), 0.0f, 1.0f), 0.0f, 1.0f);
    float2 _617 = (-0.5f).xx + in_var_TEXCOORD0[0].zw;
    float2 _633 = ((0.5f.xx + float2(dot(_617, Material_Material_PreshaderBuffer[10].xy), dot(_617, Material_Material_PreshaderBuffer[10].zw))) + Material_Material_PreshaderBuffer[11].zw) * Material_Material_PreshaderBuffer[13].yz;
    float2 _634 = ddy(_633);
    float2 _635 = ddx(_633);
    float2 _644 = (Material_Texture2D_4.SampleGrad(Material_Texture2D_4Sampler, _633, _635 * _568, _634 * _568).xy * 2.0f.xx) - 1.0f.xx;
    float2 _672 = ((0.5f.xx + float2(dot(_617, Material_Material_PreshaderBuffer[15].yz), dot(_617, Material_Material_PreshaderBuffer[16].xy))) + Material_Material_PreshaderBuffer[17].xy) * Material_Material_PreshaderBuffer[19].xy;
    float2 _673 = ddy(_672);
    float2 _674 = ddx(_672);
    float2 _678 = _672 * Material_Material_PreshaderBuffer[19].z.xx;
    float2 _679 = _674 * _568;
    float2 _680 = _673 * _568;
    float2 _687 = (Material_Texture2D_5.SampleGrad(Material_Texture2D_5Sampler, _678, _679, _680).xy * 2.0f.xx) - 1.0f.xx;
    float4 _701 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _702 = _701.x;
    float4 _713 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, Material_Material_PreshaderBuffer[20].z.xx * float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _730 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[21].y, Material_Material_PreshaderBuffer[21].x, ((_702 * Material_Material_PreshaderBuffer[20].y).xxx * (_702.xxx + (_713.xyz * Material_Material_PreshaderBuffer[20].w.xxx))).x), 0.0f, 1.0f), 0.0f, 1.0f);
    float3 _733 = _730.xxx;
    float2 _738 = _672 * Material_Material_PreshaderBuffer[21].z.xx;
    float2 _745 = (Material_Texture2D_8.SampleGrad(Material_Texture2D_8Sampler, _738, _679, _680).xy * 2.0f.xx) - 1.0f.xx;
    float _766 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[22].z, Material_Material_PreshaderBuffer[22].y, _701.y), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[22].w, 0.0f, 1.0f);
    float3 _768 = _766.xxx;
    float2 _773 = _672 * Material_Material_PreshaderBuffer[23].x.xx;
    float2 _780 = (Material_Texture2D_9.SampleGrad(Material_Texture2D_9Sampler, _773, _679, _680).xy * 2.0f.xx) - 1.0f.xx;
    float _801 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[24].x, Material_Material_PreshaderBuffer[23].w, _701.z), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[24].y, 0.0f, 1.0f);
    float3 _803 = _801.xxx;
    float2 _808 = _672 * Material_Material_PreshaderBuffer[24].z.xx;
    float2 _815 = (Material_Texture2D_10.SampleGrad(Material_Texture2D_10Sampler, _808, _679, _680).xy * 2.0f.xx) - 1.0f.xx;
    float _836 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[25].z, Material_Material_PreshaderBuffer[25].y, _701.w), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[25].w, 0.0f, 1.0f);
    float3 _838 = _836.xxx;
    float3 _839 = lerp(lerp(lerp(lerp(float3(_644.x * Material_Material_PreshaderBuffer[13].w, _644.y * Material_Material_PreshaderBuffer[13].w, sqrt(clamp(1.0f - dot(_644, _644), 0.0f, 1.0f))), float3(_687.x * Material_Material_PreshaderBuffer[19].w, _687.y * Material_Material_PreshaderBuffer[19].w, sqrt(clamp(1.0f - dot(_687, _687), 0.0f, 1.0f))), _733), float3(_745.x * Material_Material_PreshaderBuffer[21].w, _745.y * Material_Material_PreshaderBuffer[21].w, sqrt(clamp(1.0f - dot(_745, _745), 0.0f, 1.0f))), _768), float3(_780.x * Material_Material_PreshaderBuffer[23].y, _780.y * Material_Material_PreshaderBuffer[23].y, sqrt(clamp(1.0f - dot(_780, _780), 0.0f, 1.0f))), _803), float3(_815.x * Material_Material_PreshaderBuffer[24].w, _815.y * Material_Material_PreshaderBuffer[24].w, sqrt(clamp(1.0f - dot(_815, _815), 0.0f, 1.0f))), _838);
    float _841 = _839.z + 1.0f;
    float2 _859 = ((0.5f.xx + float2(dot(_462, Material_Material_PreshaderBuffer[27].yz), dot(_462, Material_Material_PreshaderBuffer[28].xy))) + Material_Material_PreshaderBuffer[29].xy) * Material_Material_PreshaderBuffer[31].xy;
    float2 _860 = ddy(_859);
    float2 _861 = ddx(_859);
    float2 _870 = (Material_Texture2D_11.SampleGrad(Material_Texture2D_11Sampler, _859, _861 * _568, _860 * _568).xy * 2.0f.xx) - 1.0f.xx;
    float3 _886 = float3(_839.xy, _841);
    float3 _889 = float3(float3(_870.x * Material_Material_PreshaderBuffer[31].z, _870.y * Material_Material_PreshaderBuffer[31].z, _304).xy * (-1.0f).xx, sqrt(clamp(1.0f - dot(_870, _870), 0.0f, 1.0f)));
    float3 _895 = (_886 * dot(_886, _889).xxx) - (_841.xxx * _889);
    float3 _896 = _616.xxx;
    float3 _908 = normalize(mul(normalize((lerp(lerp(float3(_577.x * Material_Material_PreshaderBuffer[7].x, _577.y * Material_Material_PreshaderBuffer[7].x, sqrt(clamp(1.0f - dot(_577, _577), 0.0f, 1.0f))), _896 * _895, _896), _895, _896) * _415.w) + _415.xyz), _430)) * 1.0f;
    float4 _919 = Material_Texture2D_12.Sample(View_MaterialTextureBilinearWrapedSampler, _565);
    float3 _924 = _919.xyz * Material_Material_PreshaderBuffer[34].z.xxx;
    float3 _930 = lerp(_924, dot(_924, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[34].w.xxx);
    float3 _931 = normalize(1.0f.xxx);
    float _934 = _931.x;
    float3 _938 = float4(_934, _931.yz, Material_Material_PreshaderBuffer[34].y).xyz;
    float3 _940 = _938 * dot(_938, _930);
    float3 _941 = _930 - _940;
    float4 _955 = Material_Texture2D_13.Sample(View_MaterialTextureBilinearWrapedSampler, _633);
    float3 _960 = _955.xyz * Material_Material_PreshaderBuffer[37].z.xxx;
    float3 _966 = lerp(_960, dot(_960, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[37].w.xxx);
    float3 _970 = float4(_934, _931.yz, Material_Material_PreshaderBuffer[37].y).xyz;
    float3 _972 = _970 * dot(_970, _966);
    float3 _973 = _966 - _972;
    float4 _987 = Material_Texture2D_14.Sample(View_MaterialTextureBilinearWrapedSampler, _678);
    float3 _992 = _987.xyz * Material_Material_PreshaderBuffer[40].z.xxx;
    float3 _998 = lerp(_992, dot(_992, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[40].w.xxx);
    float3 _1002 = float4(_934, _931.yz, Material_Material_PreshaderBuffer[40].y).xyz;
    float3 _1004 = _1002 * dot(_1002, _998);
    float3 _1005 = _998 - _1004;
    float4 _1020 = Material_Texture2D_15.Sample(View_MaterialTextureBilinearWrapedSampler, _738);
    float3 _1025 = _1020.xyz * Material_Material_PreshaderBuffer[43].z.xxx;
    float3 _1031 = lerp(_1025, dot(_1025, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[43].w.xxx);
    float3 _1035 = float4(_934, _931.yz, Material_Material_PreshaderBuffer[43].y).xyz;
    float3 _1037 = _1035 * dot(_1035, _1031);
    float3 _1038 = _1031 - _1037;
    float4 _1053 = Material_Texture2D_16.Sample(View_MaterialTextureBilinearWrapedSampler, _773);
    float3 _1058 = _1053.xyz * Material_Material_PreshaderBuffer[46].z.xxx;
    float3 _1064 = lerp(_1058, dot(_1058, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[46].w.xxx);
    float3 _1068 = float4(_934, _931.yz, Material_Material_PreshaderBuffer[46].y).xyz;
    float3 _1070 = _1068 * dot(_1068, _1064);
    float3 _1071 = _1064 - _1070;
    float4 _1086 = Material_Texture2D_17.Sample(View_MaterialTextureBilinearWrapedSampler, _808);
    float3 _1091 = _1086.xyz * Material_Material_PreshaderBuffer[49].z.xxx;
    float3 _1097 = lerp(_1091, dot(_1091, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[49].w.xxx);
    float3 _1101 = float4(_934, _931.yz, Material_Material_PreshaderBuffer[49].y).xyz;
    float3 _1103 = _1101 * dot(_1101, _1097);
    float3 _1104 = _1097 - _1103;
    float3 _1116 = lerp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[38].xyz * (_972 + ((_973 * cos(Material_Material_PreshaderBuffer[37].y)) + (cross(_970, _973) * sin(Material_Material_PreshaderBuffer[37].y)))), Material_Material_PreshaderBuffer[41].xyz * (_1004 + ((_1005 * cos(Material_Material_PreshaderBuffer[40].y)) + (cross(_1002, _1005) * sin(Material_Material_PreshaderBuffer[40].y)))), _733), Material_Material_PreshaderBuffer[44].xyz * (_1037 + ((_1038 * cos(Material_Material_PreshaderBuffer[43].y)) + (cross(_1035, _1038) * sin(Material_Material_PreshaderBuffer[43].y)))), _768), Material_Material_PreshaderBuffer[47].xyz * (_1070 + ((_1071 * cos(Material_Material_PreshaderBuffer[46].y)) + (cross(_1068, _1071) * sin(Material_Material_PreshaderBuffer[46].y)))), _803), Material_Material_PreshaderBuffer[50].xyz * (_1103 + ((_1104 * cos(Material_Material_PreshaderBuffer[49].y)) + (cross(_1101, _1104) * sin(Material_Material_PreshaderBuffer[49].y)))), _838);
    float4 _1122 = Material_Texture2D_18.Sample(View_MaterialTextureBilinearWrapedSampler, _633);
    float _1123 = _1122.z;
    float4 _1131 = Material_Texture2D_19.Sample(View_MaterialTextureBilinearWrapedSampler, _678);
    float _1132 = _1131.z;
    float4 _1141 = Material_Texture2D_20.Sample(View_MaterialTextureBilinearWrapedSampler, _738);
    float _1142 = _1141.z;
    float4 _1151 = Material_Texture2D_21.Sample(View_MaterialTextureBilinearWrapedSampler, _773);
    float _1152 = _1151.z;
    float4 _1161 = Material_Texture2D_22.Sample(View_MaterialTextureBilinearWrapedSampler, _808);
    float _1162 = _1161.z;
    float _1168 = lerp(lerp(lerp(lerp((_1123 <= 0.0f) ? 0.0f : pow(_1123, Material_Material_PreshaderBuffer[50].w), (_1132 <= 0.0f) ? 0.0f : pow(_1132, Material_Material_PreshaderBuffer[51].x), _730), (_1142 <= 0.0f) ? 0.0f : pow(_1142, Material_Material_PreshaderBuffer[51].y), _766), (_1152 <= 0.0f) ? 0.0f : pow(_1152, Material_Material_PreshaderBuffer[51].z), _801), (_1162 <= 0.0f) ? 0.0f : pow(_1162, Material_Material_PreshaderBuffer[51].w), _836);
    float4 _1174 = Material_Texture2D_23.Sample(View_MaterialTextureBilinearWrapedSampler, _565);
    float _1214 = lerp(lerp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[53].x, Material_Material_PreshaderBuffer[52].w, _1122.y), lerp(Material_Material_PreshaderBuffer[53].z, Material_Material_PreshaderBuffer[53].y, _1131.y), _730), lerp(Material_Material_PreshaderBuffer[54].x, Material_Material_PreshaderBuffer[53].w, _1141.y), _766), lerp(Material_Material_PreshaderBuffer[54].z, Material_Material_PreshaderBuffer[54].y, _1151.y), _801), lerp(Material_Material_PreshaderBuffer[55].x, Material_Material_PreshaderBuffer[54].w, _1161.y), _836);
    float _1222 = lerp(_955.w, 1.0f, 0.5f) * Material_Material_PreshaderBuffer[55].y;
    float _1223 = _1174.x;
    float _1229 = _1122.x;
    float _1235 = _1131.x;
    float _1242 = _1141.x;
    float _1249 = _1151.x;
    float _1256 = _1161.x;
    float _1262 = lerp(lerp(lerp(lerp((_1229 <= 0.0f) ? 0.0f : pow(_1229, Material_Material_PreshaderBuffer[55].w), (_1235 <= 0.0f) ? 0.0f : pow(_1235, Material_Material_PreshaderBuffer[56].x), _730), (_1242 <= 0.0f) ? 0.0f : pow(_1242, Material_Material_PreshaderBuffer[56].y), _766), (_1249 <= 0.0f) ? 0.0f : pow(_1249, Material_Material_PreshaderBuffer[56].z), _801), (_1256 <= 0.0f) ? 0.0f : pow(_1256, Material_Material_PreshaderBuffer[56].w), _836);
    uint _1292 = 0u;
    do
    {
        if (_414 > 1)
        {
            float _1274 = (_1222 - 0.33329999446868896484375f) * 1.49992501735687255859375f;
            uint _1282 = (_1274 > 0.75f) ? 15u : ((_1274 > 0.5f) ? 13u : ((_1274 > 0.25f) ? 9u : ((_1274 > 0.00999999977648258209228515625f) ? 8u : 0u)));
            if ((float(_1282) - 0.5f) < 0.0f)
            {
                discard;
            }
            _1292 = _1282;
            break;
        }
        if ((_1222 - 0.33329999446868896484375f) < 0.0f)
        {
            discard;
        }
        _1292 = 15u;
        break;
    } while(false);
    float3 _1293 = clamp(lerp(lerp(Material_Material_PreshaderBuffer[35].xyz * (_940 + ((_941 * cos(Material_Material_PreshaderBuffer[34].y)) + (cross(_938, _941) * sin(Material_Material_PreshaderBuffer[34].y)))), _896 * _1116, _896), _1116, _896), 0.0f.xxx, 1.0f.xxx);
    float _1294 = clamp(lerp(lerp(0.0f, _616 * _1168, _616), _1168, _616), 0.0f, 1.0f);
    float _1295 = clamp(Material_Material_PreshaderBuffer[52].x, 0.0f, 1.0f);
    float _1300 = (clamp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[52].z, Material_Material_PreshaderBuffer[52].y, _1174.y), _616 * _1214, _616), _1214, _616), 0.0f, 1.0f) * _416.y) + _416.x;
    float _1301 = clamp(lerp(lerp((_1223 <= 0.0f) ? 0.0f : pow(_1223, Material_Material_PreshaderBuffer[55].z), _616 * _1262, _616), _1262, _616), 0.0f, 1.0f);
    uint _1302 = in_var_PRIMITIVE_ID * 40u;
    float3 _1350 = 0.0f.xxx;
    float _1351 = 0.0f;
    float _1352 = 0.0f;
    float _1353 = 0.0f;
    float3 _1354 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_1302 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _1318 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _1322 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1318, 0.0f);
        float4 _1325 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1318, 0.0f);
        float4 _1328 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1318, 0.0f);
        float _1338 = _1328.w;
        _1350 = normalize((_908 * _1325.w) + ((_1325.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _1351 = (_1300 * _1338) + _1328.z;
        _1352 = (_1295 * _1338) + _1328.y;
        _1353 = (_1294 * _1338) + _1328.x;
        _1354 = (_1293 * _1322.w) + _1322.xyz;
    }
    else
    {
        _1350 = _908;
        _1351 = _1300;
        _1352 = _1295;
        _1353 = _1294;
        _1354 = _1293;
    }
    uint _1357 = asuint(asfloat(View_PrimitiveSceneData.Load4(_1302 * 16 + 0)).x);
    float _1366 = _441.w;
    float3 _1379 = ((_1354 - (_1354 * _1353)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _1386 = (lerp((0.07999999821186065673828125f * _1352).xxx, _1354, _1353.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _1389 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _1394 = 0.0f.xxx;
    if (_1389)
    {
        _1394 = _1379 + (_1386 * 0.449999988079071044921875f);
    }
    else
    {
        _1394 = _1379;
    }
    bool3 _1395 = _1389.xxx;
    float3 _1396 = float3(_1395.x ? 0.0f.xxx.x : _1386.x, _1395.y ? 0.0f.xxx.y : _1386.y, _1395.z ? 0.0f.xxx.z : _1386.z);
    float2 _1398 = in_var_TEXCOORD4.xy * float2(1.0f, 0.5f);
    float4 _1403 = LightmapResourceCluster_LightMapTexture.Sample(LightmapResourceCluster_LightMapSampler, _1398);
    float4 _1405 = LightmapResourceCluster_LightMapTexture.Sample(LightmapResourceCluster_LightMapSampler, _1398 + float2(0.0f, 0.5f));
    uint _1411 = in_var_LIGHTMAP_ID * 15u;
    uint _1412 = _1411 + 4u;
    uint _1417 = _1411 + 6u;
    float3 _1422 = _1403.xyz;
    float3 _1527 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _1479 = 0.0f;
        float _1480 = 0.0f;
        float3 _1481 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float4 _1463 = LightmapResourceCluster_SkyOcclusionTexture.Sample(LightmapResourceCluster_LightMapSampler, in_var_TEXCOORD4.xy);
            float _1467 = _1463.w;
            float _1468 = _1467 * _1467;
            float3 _1470 = normalize(((_1463.xyz * 2.0f) - 1.0f.xxx).xyz);
            float _1471 = 1.0f - _1468;
            float _1473 = 1.0f - (_1471 * _1471);
            _1479 = lerp(clamp(dot(_1470, _1350), 0.0f, 1.0f), 1.0f, _1473);
            _1480 = _1468;
            _1481 = lerp(_1470, _1350, _1473.xxx);
        }
        else
        {
            _1479 = 1.0f;
            _1480 = 1.0f;
            _1481 = _1350;
        }
        float4 _1485 = float4(_1481, 1.0f);
        float3 _1489 = _305;
        _1489.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _1485);
        float3 _1493 = _1489;
        _1493.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _1485);
        float3 _1497 = _1493;
        _1497.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _1485);
        float4 _1500 = _1485.xyzz * _1485.yzzx;
        float3 _1504 = _305;
        _1504.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _1500);
        float3 _1508 = _1504;
        _1508.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _1500);
        float3 _1512 = _1508;
        _1512.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _1500);
        _1527 = (max(0.0f.xxx, (_1497 + _1512) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * ((_1481.x * _1481.x) - (_1481.y * _1481.y)))) * _417.xyz) * (_1480 * _1479);
    }
    else
    {
        _1527 = 0.0f.xxx;
    }
    float3 _1528 = (((((_1422 * _1422) * asfloat(View_LightmapSceneData.Load4(_1412 * 16 + 0)).xyz) + asfloat(View_LightmapSceneData.Load4(_1417 * 16 + 0)).xyz) * ((exp2(((_1403.w + ((_1405.w * 0.0039215688593685626983642578125f) - 0.00196078442968428134918212890625f)) * asfloat(View_LightmapSceneData.Load4(_1412 * 16 + 0)).w) + asfloat(View_LightmapSceneData.Load4(_1417 * 16 + 0)).w) - 0.0185813605785369873046875f) * max(0.0f, dot((_1405 * asfloat(View_LightmapSceneData.Load4((_1411 + 5u) * 16 + 0))) + asfloat(View_LightmapSceneData.Load4((_1411 + 7u) * 16 + 0)), float4(_1350.yzx, 1.0f))))) * View_View_PrecomputedIndirectLightingColorScale) + _1527;
    float2 _1536 = ((_441.xy / _1366.xx) * _411.xy) + _411.wz;
    float2 _1655 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _1547 = int2(trunc(_1536 * View_View_BufferSizeAndInvSize.xy));
        int _1548 = _1547.x;
        int _1549 = _1547.y;
        float4 _1553 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1548, _1549, 0).xy, 0));
        float _1554 = _1553.x;
        float2 _1654 = 0.0f.xx;
        if ((abs((((_1554 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1554 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1366) / _1366) > 0.00999999977648258209228515625f)
        {
            float2 _1578 = _1536 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _1582 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1548 - 1, _1549, 0).xy, 0));
            float _1583 = _1582.x;
            float _1591 = abs((((_1583 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1583 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1366);
            bool _1592 = _1591 < 100000000.0f;
            bool2 _1593 = _1592.xx;
            float2 _1594 = float2(_1593.x ? _1578.x : _1536.x, _1593.y ? _1578.y : _1536.y);
            float _1595 = _1592 ? _1591 : 100000000.0f;
            float2 _1598 = _1536 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _1602 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1548, _1549 + 1, 0).xy, 0));
            float _1603 = _1602.x;
            float _1611 = abs((((_1603 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1603 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1366);
            bool _1612 = _1611 < _1595;
            bool2 _1613 = _1612.xx;
            float2 _1614 = float2(_1613.x ? _1598.x : _1594.x, _1613.y ? _1598.y : _1594.y);
            float _1615 = _1612 ? _1611 : _1595;
            float2 _1617 = _1536 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _1621 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1548 + 1, _1549, 0).xy, 0));
            float _1622 = _1621.x;
            float _1630 = abs((((_1622 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1622 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1366);
            bool _1631 = _1630 < _1615;
            bool2 _1632 = _1631.xx;
            float2 _1633 = float2(_1632.x ? _1617.x : _1614.x, _1632.y ? _1617.y : _1614.y);
            float2 _1637 = _1536 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _1641 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1548, _1549 - 1, 0).xy, 0));
            float _1642 = _1641.x;
            bool2 _1652 = (abs((((_1642 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1642 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1366) < (_1631 ? _1630 : _1615)).xx;
            _1654 = float2(_1652.x ? _1637.x : _1633.x, _1652.y ? _1637.y : _1633.y);
        }
        else
        {
            _1654 = _1536;
        }
        _1655 = _1654;
    }
    else
    {
        _1655 = _1536;
    }
    uint _1661_dummy_parameter;
    uint2 _1661 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _1661_dummy_parameter);
    float _1679 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_1655 * float2(float(_1661.x), float(_1661.y)))), 0).xy, 0)).x, ((uint(((2.0f * float((_1357 & 128u) != 0u)) + float((_1357 & 256u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _1689 = _1301.xxx;
    uint _1717 = 0u;
    float3 _1718 = 0.0f.xxx;
    int3 _1719 = int3(0, 0, 0);
    [branch]
    if (_344)
    {
        _1717 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift;
        _1718 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams;
        _1719 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _1717 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
        _1718 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridZParams;
        _1719 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint2 _1735 = uint2(_433 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (_1717.xx & uint2(31u, 31u));
    int3 _1745 = int3(0, 0, 0);
    [branch]
    if (_344)
    {
        _1745 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _1745 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint _1753 = (((min(uint(max(0.0f, log2((_341 * _1718.x) + _1718.y) * _1718.z)), uint(_1719.z - 1)) * uint(_1745.y)) + _1735.y) * uint(_1745.x)) + _1735.x;
    float4 _1771 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _1771 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_1655 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _1771 = 1.0f.xxxx;
    }
    float4 _1772 = _1771 * _1771;
    uint _1775 = asuint(asfloat(View_PrimitiveSceneData.Load4(_1302 * 16 + 0)).x);
    uint _1788 = (uint((_1775 & 1024u) != 0u) | (uint((_1775 & 2048u) != 0u) << 1u)) | (uint((_1775 & 4096u) != 0u) << 2u);
    uint _1812 = 0u;
    uint _1813 = 0u;
    float2 _1814 = 0.0f.xx;
    float3 _1815 = 0.0f.xxx;
    float3 _1816 = 0.0f.xxx;
    [branch]
    if (_344)
    {
        _1812 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight;
        _1813 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
        _1814 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
        _1815 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor;
        _1816 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection;
    }
    else
    {
        _1812 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_HasDirectionalLight;
        _1813 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
        _1814 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
        _1815 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightColor;
        _1816 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDirection;
    }
    float4 _1955 = 0.0f.xxxx;
    float4 _1956 = 0.0f.xxxx;
    [branch]
    if (_1812 != 0u)
    {
        uint _1836 = _1813 >> 4u;
        float _1850 = dot(float4(float((_1836 & 1u) != 0u), float((_1836 & 2u) != 0u), float((_1836 & 4u) != 0u), float((_1836 & 8u) != 0u)), _1772);
        bool _1852 = _1814.y < 0.0f;
        float _1853 = _1852 ? 1.0f : _1850;
        float _1869 = 0.0f;
        float _1870 = 0.0f;
        [branch]
        if (uint((_1813 & 255u) != 0u) != 0u)
        {
            float _1863 = clamp((_1366 * _1814.x) + _1814.y, 0.0f, 1.0f);
            float _1865 = lerp(_1852 ? _1850 : 1.0f, lerp(1.0f, 0.0f, dot(float4(float((_1813 & 1u) != 0u), float((_1813 & 2u) != 0u), float((_1813 & 4u) != 0u), float((_1813 & 8u) != 0u)), 1.0f.xxxx)), _1863 * _1863);
            _1869 = min(_1865, _1853) * _1853;
            _1870 = _1865 * _1853;
        }
        else
        {
            _1869 = 1.0f;
            _1870 = 1.0f;
        }
        float3 _1939 = 0.0f.xxx;
        float3 _1940 = 0.0f.xxx;
        [branch]
        if ((_1870 + _1869) > 0.0f)
        {
            float _1877 = max(_1351, View_View_MinRoughness);
            float3 _1880 = _1816 * rsqrt(dot(_1816, _1816));
            float _1881 = dot(_1350, _1880);
            float _1882 = clamp(_1881, 0.0f, 1.0f);
            float _1883 = dot(_1350, _461);
            float _1884 = dot(_461, _1880);
            float _1887 = rsqrt(2.0f + (2.0f * _1884));
            float _1890 = clamp((_1881 + _1883) * _1887, 0.0f, 1.0f);
            float _1896 = clamp(abs(_1883) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float3 _1898 = 1.0f.xxx * _1882;
            float _1900 = _1877 * _1877;
            float _1901 = _1900 * _1900;
            float _1905 = (((_1890 * _1901) - _1890) * _1890) + 1.0f;
            float _1909 = sqrt(_1901);
            float _1910 = 1.0f - _1909;
            float _1919 = 1.0f - clamp(_1887 + (_1887 * _1884), 0.0f, 1.0f);
            float _1920 = _1919 * _1919;
            float _1922 = (_1920 * _1920) * _1919;
            float3 _1936 = (_1815 * 1.0f) * _1870;
            _1939 = ((_1394 * 0.3183098733425140380859375f) * _1898) * _1936;
            _1940 = ((_1898 * (((clamp(50.0f * _1396.y, 0.0f, 1.0f) * _1922).xxx + (_1396 * (1.0f - _1922))) * ((_1901 / ((3.1415927410125732421875f * _1905) * _1905)) * (0.5f / ((_1882 * ((_1896 * _1910) + _1909)) + (_1896 * ((_1882 * _1910) + _1909))))))) * 1.0f) * _1936;
        }
        else
        {
            _1939 = 0.0f.xxx;
            _1940 = 0.0f.xxx;
        }
        float4 _1944 = float4(_1939, 0.0f);
        float4 _1948 = float4(_1940, 0.0f);
        bool4 _1952 = (((_1813 >> 8u) & _1788) != 0u).xxxx;
        _1955 = float4(_1952.x ? _1944.x : 0.0f.xxxx.x, _1952.y ? _1944.y : 0.0f.xxxx.y, _1952.z ? _1944.z : 0.0f.xxxx.z, _1952.w ? _1944.w : 0.0f.xxxx.w);
        _1956 = float4(_1952.x ? _1948.x : 0.0f.xxxx.x, _1952.y ? _1948.y : 0.0f.xxxx.y, _1952.z ? _1948.z : 0.0f.xxxx.z, _1952.w ? _1948.w : 0.0f.xxxx.w);
    }
    else
    {
        _1955 = 0.0f.xxxx;
        _1956 = 0.0f.xxxx;
    }
    uint _1980 = 0u;
    uint _1981 = 0u;
    [branch]
    if (_344)
    {
        uint _1970 = _1753 * 2u;
        _1980 = min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1970).x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
        _1981 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1970 + 1u).x;
    }
    else
    {
        uint _1960 = _1753 * 2u;
        _1980 = min(OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1960).x, OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights);
        _1981 = OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1960 + 1u).x;
    }
    uint _1987 = min(_1980, (_344 ? OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights : OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights));
    float4 _1989 = 0.0f.xxxx;
    float4 _1992 = 0.0f.xxxx;
    _1989 = _1955;
    _1992 = _1956;
    float4 _1990 = 0.0f.xxxx;
    float4 _1993 = 0.0f.xxxx;
    [loop]
    for (uint _1994 = 0u; _1994 < _1987; _1989 = _1990, _1992 = _1993, _1994++)
    {
        uint _1999 = _1981 + _1994;
        float4 _2031 = 0.0f.xxxx;
        float4 _2032 = 0.0f.xxxx;
        float4 _2033 = 0.0f.xxxx;
        float4 _2034 = 0.0f.xxxx;
        float4 _2035 = 0.0f.xxxx;
        [branch]
        if (_344)
        {
            uint _2020 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid.Load(_1999).x * 6u;
            _2031 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2020);
            _2032 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2020 + 1u);
            _2033 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2020 + 3u);
            _2034 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2020 + 2u);
            _2035 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2020 + 4u);
        }
        else
        {
            uint _2006 = OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid.Load(_1999).x * 6u;
            _2031 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2006);
            _2032 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2006 + 1u);
            _2033 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2006 + 3u);
            _2034 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2006 + 2u);
            _2035 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2006 + 4u);
        }
        float2 _2044 = spvUnpackHalf2x16(asuint(_2033.w));
        float _2045 = _2044.x;
        bool _2048 = _2032.w == 0.0f;
        uint _2052 = asuint(_2034.w);
        uint _2069 = _2052 >> 4u;
        float3 _2084 = _2031.xyz - _450;
        float _2085 = dot(_2084, _2084);
        float _2102 = 0.0f;
        if (_2048)
        {
            float _2097 = _2085 * (_2031.w * _2031.w);
            float _2100 = clamp(1.0f - (_2097 * _2097), 0.0f, 1.0f);
            _2102 = _2100 * _2100;
        }
        else
        {
            float3 _2091 = _2084 * _2031.w;
            _2102 = pow(1.0f - clamp(dot(_2091, _2091), 0.0f, 1.0f), _2032.w);
        }
        float _2112 = 0.0f;
        if (_2033.x > (-2.0f))
        {
            float _2109 = clamp((dot(_2084 * rsqrt(_2085), _2034.xyz) - _2033.x) * _2033.y, 0.0f, 1.0f);
            _2112 = _2102 * (_2109 * _2109);
        }
        else
        {
            _2112 = _2102;
        }
        float3 _2431 = 0.0f.xxx;
        float3 _2432 = 0.0f.xxx;
        [branch]
        if (_2112 > 0.0f)
        {
            float _2122 = 0.0f;
            [branch]
            if (uint((_2052 & 255u) != 0u) != 0u)
            {
                _2122 = dot(float4(float((_2069 & 1u) != 0u), float((_2069 & 2u) != 0u), float((_2069 & 4u) != 0u), float((_2069 & 8u) != 0u)), _1772) * lerp(1.0f, 0.0f, dot(float4(float((_2052 & 1u) != 0u), float((_2052 & 2u) != 0u), float((_2052 & 4u) != 0u), float((_2052 & 8u) != 0u)), 1.0f.xxxx));
            }
            else
            {
                _2122 = 1.0f;
            }
            float3 _2429 = 0.0f.xxx;
            float3 _2430 = 0.0f.xxx;
            [branch]
            if ((_2122 + _2122) > 0.0f)
            {
                float3 _2128 = _2035.xyz * (0.5f * _2045);
                float3 _2129 = _2084 - _2128;
                float3 _2130 = _2084 + _2128;
                float _2133 = max(_1351, View_View_MinRoughness);
                bool _2134 = _2045 > 0.0f;
                float _2161 = 0.0f;
                float _2162 = 0.0f;
                float _2163 = 0.0f;
                [branch]
                if (_2134)
                {
                    float _2146 = rsqrt(dot(_2129, _2129));
                    float _2147 = rsqrt(dot(_2130, _2130));
                    float _2148 = _2146 * _2147;
                    float _2150 = dot(_2129, _2130) * _2148;
                    _2161 = _2150;
                    _2162 = 0.5f * ((dot(_1350, _2129) * _2146) + (dot(_1350, _2130) * _2147));
                    _2163 = _2148 / (((_2150 * 0.5f) + 0.5f) + _2148);
                }
                else
                {
                    float _2138 = dot(_2129, _2129);
                    _2161 = 1.0f;
                    _2162 = dot(_1350, _2129 * rsqrt(_2138));
                    _2163 = 1.0f / (_2138 + 1.0f);
                }
                float _2181 = 0.0f;
                if (_2033.z > 0.0f)
                {
                    float _2170 = sqrt(clamp((_2033.z * _2033.z) * _2163, 0.0f, 1.0f));
                    float _2180 = 0.0f;
                    if (_2162 < _2170)
                    {
                        float _2176 = _2170 + max(_2162, -_2170);
                        _2180 = (_2176 * _2176) / (4.0f * _2170);
                    }
                    else
                    {
                        _2180 = _2162;
                    }
                    _2181 = _2180;
                }
                else
                {
                    _2181 = _2162;
                }
                float _2182 = clamp(_2181, 0.0f, 1.0f);
                float3 _2200 = 0.0f.xxx;
                if (_2134)
                {
                    float3 _2187 = reflect(-_461, _1350);
                    float3 _2188 = _2130 - _2129;
                    float _2190 = dot(_2187, _2188);
                    _2200 = _2129 + (_2188 * clamp(dot(_2129, (_2187 * _2190) - _2188) / ((_2045 * _2045) - (_2190 * _2190)), 0.0f, 1.0f));
                }
                else
                {
                    _2200 = _2129;
                }
                float _2202 = rsqrt(dot(_2200, _2200));
                float3 _2203 = _2200 * _2202;
                float _2204 = max(_2133, View_View_MinRoughness);
                float _2209 = clamp((_2033.z * _2202) * (1.0f - (_2204 * _2204)), 0.0f, 1.0f);
                float _2211 = clamp(_2035.w * _2202, 0.0f, 1.0f);
                float _2219 = dot(_1350, _2203);
                float _2220 = dot(_1350, _461);
                float _2221 = dot(_461, _2203);
                float _2224 = rsqrt(2.0f + (2.0f * _2221));
                bool _2231 = _2209 > 0.0f;
                float _2326 = 0.0f;
                float _2327 = 0.0f;
                if (_2231)
                {
                    float _2236 = sqrt(1.0f - (_2209 * _2209));
                    float _2238 = (2.0f * _2219) * _2220;
                    float _2239 = _2238 - _2221;
                    float _2324 = 0.0f;
                    float _2325 = 0.0f;
                    if (_2239 >= _2236)
                    {
                        _2324 = 1.0f;
                        _2325 = abs(_2220);
                    }
                    else
                    {
                        float _2247 = _2209 * rsqrt(1.0f - (_2239 * _2239));
                        float _2250 = _2247 * (_2220 - (_2239 * _2219));
                        float _2256 = _2247 * ((((2.0f * _2220) * _2220) - 1.0f) - (_2239 * _2221));
                        float _2267 = _2247 * sqrt(clamp((((1.0f - (_2219 * _2219)) - (_2220 * _2220)) - (_2221 * _2221)) + (_2238 * _2221), 0.0f, 1.0f));
                        float _2269 = (_2267 * 2.0f) * _2220;
                        float _2270 = _2219 * _2236;
                        float _2271 = _2270 + _2220;
                        float _2272 = _2271 + _2250;
                        float _2273 = _2221 * _2236;
                        float _2275 = (_2273 + 1.0f) + _2256;
                        float _2276 = _2267 * _2275;
                        float _2277 = _2272 * _2275;
                        float _2278 = _2269 * _2272;
                        float _2283 = _2277 * (((-0.5f) * _2276) + ((0.25f * _2269) * _2272));
                        float _2297 = ((_2276 * _2276) + (_2278 * (_2278 - (2.0f * _2276)))) + (_2272 * ((_2271 * (_2275 * _2275)) + (_2277 * (((-0.5f) * (_2275 + _2273)) - 0.5f))));
                        float _2302 = (2.0f * _2283) / ((_2297 * _2297) + (_2283 * _2283));
                        float _2303 = _2302 * _2297;
                        float _2305 = 1.0f - (_2302 * _2283);
                        float _2313 = _2273 + ((_2305 * _2256) + (_2303 * _2269));
                        float _2316 = rsqrt(2.0f + (2.0f * _2313));
                        _2324 = clamp(((_2270 + ((_2305 * _2250) + (_2303 * _2267))) + _2220) * _2316, 0.0f, 1.0f);
                        _2325 = clamp(_2316 + (_2316 * _2313), 0.0f, 1.0f);
                    }
                    _2326 = _2324;
                    _2327 = _2325;
                }
                else
                {
                    _2326 = clamp((_2219 + _2220) * _2224, 0.0f, 1.0f);
                    _2327 = clamp(_2224 + (_2224 * _2221), 0.0f, 1.0f);
                }
                float _2330 = clamp(abs(_2220) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _2333 = 1.0f.xxx * ((_2048 ? _2163 : 1.0f) * _2182);
                float3 _2423 = 0.0f.xxx;
                if (((0u | (asuint(clamp(1.0f - (max(_2045, _2033.z) * 0.0500000007450580596923828125f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _2423 = 0.0f.xxx;
                }
                else
                {
                    float _2340 = _2133 * _2133;
                    float _2341 = _2340 * _2340;
                    float _2351 = 0.0f;
                    if (_2211 > 0.0f)
                    {
                        _2351 = clamp(_2341 + ((_2211 * _2211) / ((_2327 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _2351 = _2341;
                    }
                    float _2366 = 0.0f;
                    float _2367 = 0.0f;
                    if (_2231)
                    {
                        float _2364 = _2351 + (((0.25f * _2209) * ((3.0f * asfloat(532487669 + (asint(_2351) >> 1))) + _2209)) / (_2327 + 0.001000000047497451305389404296875f));
                        _2366 = _2351 / _2364;
                        _2367 = _2364;
                    }
                    else
                    {
                        _2366 = 1.0f;
                        _2367 = _2351;
                    }
                    float _2389 = 0.0f;
                    if (_2161 < 1.0f)
                    {
                        float _2374 = sqrt((1.00010001659393310546875f - _2161) / (1.0f + _2161));
                        _2389 = _2366 * sqrt(_2367 / (_2367 + (((0.25f * _2374) * ((3.0f * asfloat(532487669 + (asint(_2367) >> 1))) + _2374)) / (_2327 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _2389 = _2366;
                    }
                    float _2393 = (((_2326 * _2351) - _2326) * _2326) + 1.0f;
                    float _2398 = sqrt(_2351);
                    float _2399 = 1.0f - _2398;
                    float _2408 = 1.0f - _2327;
                    float _2409 = _2408 * _2408;
                    float _2411 = (_2409 * _2409) * _2408;
                    _2423 = _2333 * (((clamp(50.0f * _1396.y, 0.0f, 1.0f) * _2411).xxx + (_1396 * (1.0f - _2411))) * (((_2351 / ((3.1415927410125732421875f * _2393) * _2393)) * _2389) * (0.5f / ((_2182 * ((_2330 * _2399) + _2398)) + (_2330 * ((_2182 * _2399) + _2398))))));
                }
                float3 _2426 = (_2032.xyz * _2112) * _2122;
                _2429 = ((_1394 * 0.3183098733425140380859375f) * _2333) * _2426;
                _2430 = (_2423 * 1.0f) * _2426;
            }
            else
            {
                _2429 = 0.0f.xxx;
                _2430 = 0.0f.xxx;
            }
            _2431 = _2429;
            _2432 = _2430;
        }
        else
        {
            _2431 = 0.0f.xxx;
            _2432 = 0.0f.xxx;
        }
        [flatten]
        if (((_2052 >> 8u) & _1788) != 0u)
        {
            _1990 = _1989 + float4(_2431, 0.0f);
            _1993 = _1992 + float4(_2432, 0.0f);
        }
        else
        {
            _1990 = _1989;
            _1993 = _1992;
        }
    }
    bool4 _2451 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _2460 = int(asuint(asfloat(View_PrimitiveSceneData.Load4(_1302 * 16 + 0)).w));
    float3 _2464 = (_1350 * (2.0f * dot(_461, _1350))) - _461;
    float _2472 = 1.0f - (1.2000000476837158203125f * log2(max(_1351, 0.001000000047497451305389404296875f)));
    float4 _2488 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_2464, ReflectionCapture_ReflectionCapture_CaptureProperties[_2460].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _2472);
    float _2492 = 1.0f - _2488.w;
    float4 _2496 = float4(_2488.xyz * ReflectionCapture_ReflectionCapture_CaptureProperties[_2460].x, _2492);
    float3 _2501 = _2496.xyz * View_View_PrecomputedIndirectSpecularColorScale;
    float4 _2502 = float4(_2501.x, _2501.y, _2501.z, _2496.w);
    float4 _2539 = 0.0f.xxxx;
    float3 _2540 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        float3 _2523 = OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _2464, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _2472).xyz * View_View_SkyLightColor.xyz;
        float4 _2537 = 0.0f.xxxx;
        float3 _2538 = 0.0f.xxx;
        [flatten]
        if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.z < 1.0f) && true)
        {
            float3 _2535 = _2501.xyz + ((_2523 * _2492) * 1.0f);
            _2537 = float4(_2535.x, _2535.y, _2535.z, _2496.w);
            _2538 = 0.0f.xxx;
        }
        else
        {
            _2537 = _2502;
            _2538 = _2523 * 1.0f;
        }
        _2539 = _2537;
        _2540 = _2538;
    }
    else
    {
        _2539 = _2502;
        _2540 = 0.0f.xxx;
    }
    float4 _2563 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _1351) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _2564 = _2563.x;
    float2 _2574 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_2564 * _2564, exp2((-9.27999973297119140625f) * clamp(dot(_1350, _461), 0.0f, 1.0f))) * _2564) + _2563.y)) + _2563.zw;
    bool _2602 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2670 = 0.0f.xxxx;
    if (_2602)
    {
        float4 _2620 = mul(((float4(_451, 0.0f) + float4(_419, 0.0f)) * 2097152.0f) + float4(_452, 1.0f), _418);
        float _2621 = _2620.w;
        float3 _2643 = float3(((_2620.xy / _2621.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_2621 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _2658 = 0.0f.xxxx;
        if (_2602)
        {
            float4 _2657 = 0.0f.xxxx;
            if (_344)
            {
                _2657 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _2643, 0.0f);
            }
            else
            {
                _2657 = OpaqueBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _2643, 0.0f);
            }
            _2658 = _2657;
        }
        else
        {
            _2658 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _2670 = float4(_2658.xyz + (in_var_TEXCOORD7.xyz * _2658.w), _2658.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _2670 = in_var_TEXCOORD7;
    }
    float3 _2677 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[32].xyz, Material_Material_PreshaderBuffer[31].w.xxx), 0.0f.xxx);
    float3 _2734 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _2708 = abs(((_451 - asfloat(View_PrimitiveSceneData.Load4((_1302 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_452 - asfloat(View_PrimitiveSceneData.Load4((_1302 + 19u) * 16 + 0)).xyz));
        float3 _2709 = float3(asfloat(View_PrimitiveSceneData.Load4((_1302 + 18u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_1302 + 25u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_1302 + 26u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _2733 = 0.0f.xxx;
        if (any(bool3(_2708.x > _2709.x, _2708.y > _2709.y, _2708.z > _2709.z)))
        {
            float3 _2729 = frac(frac(((_451.x + _451.y) + _451.z) * 2420.113525390625f) + (((_452.x + _452.y) + _452.z) * 0.001154000055976212024688720703125f)).xxx;
            _2733 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2729.x > 0.5f.xxx.x, _2729.y > 0.5f.xxx.y, _2729.z > 0.5f.xxx.z)));
        }
        else
        {
            _2733 = _2677;
        }
        _2734 = _2733;
    }
    else
    {
        _2734 = _2677;
    }
    float4 _2745 = float4((((lerp((float4(_2451.x ? 0.0f.xxxx.x : _1989.x, _2451.y ? 0.0f.xxxx.y : _1989.y, _2451.z ? 0.0f.xxxx.z : _1989.z, _2451.w ? 0.0f.xxxx.w : _1989.w).xyz + float4(_2451.x ? 0.0f.xxxx.x : _1992.x, _2451.y ? 0.0f.xxxx.y : _1992.y, _2451.z ? 0.0f.xxxx.z : _1992.z, _2451.w ? 0.0f.xxxx.w : _1992.w).xyz) + (((((_2539.xyz * lerp(1.0f, min((dot(_1528, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * _1679) / max(ReflectionCapture_ReflectionCapture_CaptureOffsetAndAverageBrightness[_2460].w * dot(View_View_PrecomputedIndirectSpecularColorScale, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)), 9.9999997473787516355514526367188e-05f), View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp((_1351 * View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x) + View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y, 0.0f, 1.0f)))).xyz + (_2540 * _2539.w)).xyz * ((_1396 * _2574.x) + (clamp(50.0f * _1396.y, 0.0f, 1.0f) * _2574.y).xxx)) * _1679) * max(_1689, ((((((_1396 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1301) + ((_1396 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1301) + ((_1396 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1301)), _1394 + (_1396 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + (((_1528 * _1679) * _1394) * max(_1689, ((((((_1354 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1301) + ((_1354 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1301) + ((_1354 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1301))) + _2734) * _2670.w) + _2670.xyz, 0.0f);
    _2745.w = 0.0f;
    out_var_SV_Target0 = _2745 * View_View_PreExposure;
    gl_SampleMask = int(_1292);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD10_centroid = stage_input.in_var_TEXCOORD10_centroid;
    in_var_TEXCOORD11_centroid = stage_input.in_var_TEXCOORD11_centroid;
    in_var_COLOR0 = stage_input.in_var_COLOR0;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD4 = stage_input.in_var_TEXCOORD4;
    in_var_PACKED_EYE_INDEX = stage_input.in_var_PACKED_EYE_INDEX;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
    in_var_LIGHTMAP_ID = stage_input.in_var_LIGHTMAP_ID;
    in_var_TEXCOORD7 = stage_input.in_var_TEXCOORD7;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_SampleMask = gl_SampleMask;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    return stage_output;
}
