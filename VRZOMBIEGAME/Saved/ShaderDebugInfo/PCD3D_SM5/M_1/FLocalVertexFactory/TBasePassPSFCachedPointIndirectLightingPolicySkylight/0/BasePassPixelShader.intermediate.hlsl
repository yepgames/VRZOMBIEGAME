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

static float _312 = 0.0f;
static float4 _313 = 0.0f.xxxx;
static float3 _314 = 0.0f.xxx;
static float _318 = 0.0f;
static float4 _319 = 0.0f.xxxx;

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
    bool _358 = false;
    float _355 = 1.0f / gl_FragCoord.w;
    float4x4 _422 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _423 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _424 = 0.0f.xxx;
    float4 _425 = 0.0f.xxxx;
    float4 _426 = 0.0f.xxxx;
    float4 _427 = 0.0f.xxxx;
    int _428 = 0;
    float4 _429 = 0.0f.xxxx;
    float2 _430 = 0.0f.xx;
    float4 _431 = 0.0f.xxxx;
    float4x4 _432 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _433 = 0.0f.xxx;
    float3 _434 = 0.0f.xxx;
    float3 _435 = 0.0f.xxx;
    do
    {
        _358 = in_var_PACKED_EYE_INDEX == 0u;
        if (_358)
        {
            _422 = View_View_ViewToClip;
            _423 = View_View_SVPositionToTranslatedWorld;
            _424 = View_View_ViewForward;
            _425 = View_View_ScreenPositionScaleBias;
            _426 = View_View_ViewRectMin;
            _427 = View_View_ViewSizeAndInvSize;
            _428 = View_View_NumSceneColorMSAASamples;
            _429 = View_View_NormalOverrideParameter;
            _430 = View_View_RoughnessOverrideParameter;
            _431 = View_View_SkyLightColor;
            _432 = View_View_RelativeWorldToClip;
            _433 = -View_View_MatrixTilePosition;
            _434 = -View_View_ViewTilePosition;
            _435 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _422 = InstancedView_InstancedView_ViewToClip;
            _423 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _424 = InstancedView_InstancedView_ViewForward;
            _425 = InstancedView_InstancedView_ScreenPositionScaleBias;
            _426 = InstancedView_InstancedView_ViewRectMin;
            _427 = InstancedView_InstancedView_ViewSizeAndInvSize;
            _428 = InstancedView_InstancedView_NumSceneColorMSAASamples;
            _429 = InstancedView_InstancedView_NormalOverrideParameter;
            _430 = InstancedView_InstancedView_RoughnessOverrideParameter;
            _431 = InstancedView_InstancedView_SkyLightColor;
            _432 = InstancedView_InstancedView_RelativeWorldToClip;
            _433 = -InstancedView_InstancedView_MatrixTilePosition;
            _434 = -InstancedView_InstancedView_ViewTilePosition;
            _435 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float3x3 _444 = float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz);
    float2 _447 = gl_FragCoord.xy - _426.xy;
    float4 _455 = float4(((_447 * _427.zw) - 0.5f.xx) * float2(2.0f, -2.0f), _318, 1.0f) * _355;
    float4 _460 = mul(float4(gl_FragCoord.xyz, 1.0f), _423);
    float3 _464 = _460.xyz / _460.w.xxx;
    float3 _465 = -_434;
    float3 _466 = _464 - _435;
    float3 _475 = 0.0f.xxx;
    if (_422[3].w >= 1.0f)
    {
        _475 = -_424;
    }
    else
    {
        _475 = normalize(-_464);
    }
    float2 _476 = (-0.5f).xx + float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y);
    float2 _480 = float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[1].x.xx;
    float2 _481 = ddy(_480);
    float2 _482 = ddx(_480);
    float3 _483 = mul(_444, _475);
    float2 _492 = Material_Material_PreshaderBuffer[1].y.xx * ((_483.xy * (-1.0f).xx) / _483.z.xx);
    float2 _497 = _480 + (_492 * Material_Material_PreshaderBuffer[2].x.xx);
    float2 _501 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float2 _505 = _501 + View_View_TemporalAAParams.x.xx;
    float4 _520 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _501 * 0.015625f.xx, View_View_MaterialTextureMipBias);
    float _528 = lerp(Material_Material_PreshaderBuffer[2].z, Material_Material_PreshaderBuffer[2].y, (float((uint(_505.x) + (2u * uint(_505.y))) % 5u) + _520.x) * 0.16666667163372039794921875f);
    float _538 = lerp(Material_Material_PreshaderBuffer[2].w * _528, Material_Material_PreshaderBuffer[3].x * _528, clamp(abs(dot(_475, in_var_TEXCOORD11_centroid.xyz)), 0.0f, 1.0f));
    float _539 = floor(_538);
    float _540 = 1.0f / _538;
    float2 _542 = _492 * _540.xx;
    float2 _543 = ddx(_497);
    float2 _544 = ddy(_497);
    float _550_copy;
    float2 _553 = 0.0f.xx;
    _553 = 0.0f.xx;
    float _551 = 0.0f;
    float2 _554 = 0.0f.xx;
    int _556 = 0;
    float _558 = 0.0f;
    float2 _577 = 0.0f.xx;
    float _550 = 1.0f;
    int _555 = 0;
    float _557 = 1.0f;
    float _559 = 1.0f;
    for (;;)
    {
        if (float(_555) < (_539 + 2.0f))
        {
            _558 = dot(Material_Material_PreshaderBuffer[6], Material_Texture2D_1.SampleGrad(Material_Texture2D_1Sampler, _497 + _553, _543, _544));
            if (_550 < _558)
            {
                float _572 = _558 - _550;
                _577 = _553 - (_542 * (_572 / ((_559 - _557) + _572)));
                break;
            }
            _551 = _550 - _540;
            _554 = _553 + _542;
            _556 = _555 + 1;
            _550_copy = _550;
            _550 = _551;
            _553 = _554;
            _555 = _556;
            _557 = _558;
            _559 = _550_copy;
            continue;
        }
        else
        {
            _577 = _553;
            break;
        }
    }
    float2 _579 = _497 + _577.xy;
    float2 _582 = View_View_MaterialTextureDerivativeMultiply.xx;
    float2 _591 = (Material_Texture2D_2.SampleGrad(Material_Texture2D_2Sampler, _579, _482 * _582, _481 * _582).xy * 2.0f.xx) - 1.0f.xx;
    float4 _613 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, Material_Material_PreshaderBuffer[7].w.xx * float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _630 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[8].z, Material_Material_PreshaderBuffer[8].y, ((in_var_COLOR0.y * Material_Material_PreshaderBuffer[7].z).xxx * (in_var_COLOR0.y.xxx + (_613.xyz * Material_Material_PreshaderBuffer[8].x.xxx))).x), 0.0f, 1.0f), 0.0f, 1.0f);
    float2 _631 = (-0.5f).xx + in_var_TEXCOORD0[0].zw;
    float2 _647 = ((0.5f.xx + float2(dot(_631, Material_Material_PreshaderBuffer[10].xy), dot(_631, Material_Material_PreshaderBuffer[10].zw))) + Material_Material_PreshaderBuffer[11].zw) * Material_Material_PreshaderBuffer[13].yz;
    float2 _648 = ddy(_647);
    float2 _649 = ddx(_647);
    float2 _658 = (Material_Texture2D_4.SampleGrad(Material_Texture2D_4Sampler, _647, _649 * _582, _648 * _582).xy * 2.0f.xx) - 1.0f.xx;
    float2 _686 = ((0.5f.xx + float2(dot(_631, Material_Material_PreshaderBuffer[15].yz), dot(_631, Material_Material_PreshaderBuffer[16].xy))) + Material_Material_PreshaderBuffer[17].xy) * Material_Material_PreshaderBuffer[19].xy;
    float2 _687 = ddy(_686);
    float2 _688 = ddx(_686);
    float2 _692 = _686 * Material_Material_PreshaderBuffer[19].z.xx;
    float2 _693 = _688 * _582;
    float2 _694 = _687 * _582;
    float2 _701 = (Material_Texture2D_5.SampleGrad(Material_Texture2D_5Sampler, _692, _693, _694).xy * 2.0f.xx) - 1.0f.xx;
    float4 _715 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _716 = _715.x;
    float4 _727 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, Material_Material_PreshaderBuffer[20].z.xx * float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _744 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[21].y, Material_Material_PreshaderBuffer[21].x, ((_716 * Material_Material_PreshaderBuffer[20].y).xxx * (_716.xxx + (_727.xyz * Material_Material_PreshaderBuffer[20].w.xxx))).x), 0.0f, 1.0f), 0.0f, 1.0f);
    float3 _747 = _744.xxx;
    float2 _752 = _686 * Material_Material_PreshaderBuffer[21].z.xx;
    float2 _759 = (Material_Texture2D_8.SampleGrad(Material_Texture2D_8Sampler, _752, _693, _694).xy * 2.0f.xx) - 1.0f.xx;
    float _780 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[22].z, Material_Material_PreshaderBuffer[22].y, _715.y), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[22].w, 0.0f, 1.0f);
    float3 _782 = _780.xxx;
    float2 _787 = _686 * Material_Material_PreshaderBuffer[23].x.xx;
    float2 _794 = (Material_Texture2D_9.SampleGrad(Material_Texture2D_9Sampler, _787, _693, _694).xy * 2.0f.xx) - 1.0f.xx;
    float _815 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[24].x, Material_Material_PreshaderBuffer[23].w, _715.z), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[24].y, 0.0f, 1.0f);
    float3 _817 = _815.xxx;
    float2 _822 = _686 * Material_Material_PreshaderBuffer[24].z.xx;
    float2 _829 = (Material_Texture2D_10.SampleGrad(Material_Texture2D_10Sampler, _822, _693, _694).xy * 2.0f.xx) - 1.0f.xx;
    float _850 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[25].z, Material_Material_PreshaderBuffer[25].y, _715.w), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[25].w, 0.0f, 1.0f);
    float3 _852 = _850.xxx;
    float3 _853 = lerp(lerp(lerp(lerp(float3(_658.x * Material_Material_PreshaderBuffer[13].w, _658.y * Material_Material_PreshaderBuffer[13].w, sqrt(clamp(1.0f - dot(_658, _658), 0.0f, 1.0f))), float3(_701.x * Material_Material_PreshaderBuffer[19].w, _701.y * Material_Material_PreshaderBuffer[19].w, sqrt(clamp(1.0f - dot(_701, _701), 0.0f, 1.0f))), _747), float3(_759.x * Material_Material_PreshaderBuffer[21].w, _759.y * Material_Material_PreshaderBuffer[21].w, sqrt(clamp(1.0f - dot(_759, _759), 0.0f, 1.0f))), _782), float3(_794.x * Material_Material_PreshaderBuffer[23].y, _794.y * Material_Material_PreshaderBuffer[23].y, sqrt(clamp(1.0f - dot(_794, _794), 0.0f, 1.0f))), _817), float3(_829.x * Material_Material_PreshaderBuffer[24].w, _829.y * Material_Material_PreshaderBuffer[24].w, sqrt(clamp(1.0f - dot(_829, _829), 0.0f, 1.0f))), _852);
    float _855 = _853.z + 1.0f;
    float2 _873 = ((0.5f.xx + float2(dot(_476, Material_Material_PreshaderBuffer[27].yz), dot(_476, Material_Material_PreshaderBuffer[28].xy))) + Material_Material_PreshaderBuffer[29].xy) * Material_Material_PreshaderBuffer[31].xy;
    float2 _874 = ddy(_873);
    float2 _875 = ddx(_873);
    float2 _884 = (Material_Texture2D_11.SampleGrad(Material_Texture2D_11Sampler, _873, _875 * _582, _874 * _582).xy * 2.0f.xx) - 1.0f.xx;
    float3 _900 = float3(_853.xy, _855);
    float3 _903 = float3(float3(_884.x * Material_Material_PreshaderBuffer[31].z, _884.y * Material_Material_PreshaderBuffer[31].z, _312).xy * (-1.0f).xx, sqrt(clamp(1.0f - dot(_884, _884), 0.0f, 1.0f)));
    float3 _909 = (_900 * dot(_900, _903).xxx) - (_855.xxx * _903);
    float3 _910 = _630.xxx;
    float3 _922 = normalize(mul(normalize((lerp(lerp(float3(_591.x * Material_Material_PreshaderBuffer[7].x, _591.y * Material_Material_PreshaderBuffer[7].x, sqrt(clamp(1.0f - dot(_591, _591), 0.0f, 1.0f))), _910 * _909, _910), _909, _910) * _429.w) + _429.xyz), _444)) * 1.0f;
    float4 _933 = Material_Texture2D_12.Sample(View_MaterialTextureBilinearWrapedSampler, _579);
    float3 _938 = _933.xyz * Material_Material_PreshaderBuffer[34].z.xxx;
    float3 _944 = lerp(_938, dot(_938, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[34].w.xxx);
    float3 _945 = normalize(1.0f.xxx);
    float _948 = _945.x;
    float3 _952 = float4(_948, _945.yz, Material_Material_PreshaderBuffer[34].y).xyz;
    float3 _954 = _952 * dot(_952, _944);
    float3 _955 = _944 - _954;
    float4 _969 = Material_Texture2D_13.Sample(View_MaterialTextureBilinearWrapedSampler, _647);
    float3 _974 = _969.xyz * Material_Material_PreshaderBuffer[37].z.xxx;
    float3 _980 = lerp(_974, dot(_974, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[37].w.xxx);
    float3 _984 = float4(_948, _945.yz, Material_Material_PreshaderBuffer[37].y).xyz;
    float3 _986 = _984 * dot(_984, _980);
    float3 _987 = _980 - _986;
    float4 _1001 = Material_Texture2D_14.Sample(View_MaterialTextureBilinearWrapedSampler, _692);
    float3 _1006 = _1001.xyz * Material_Material_PreshaderBuffer[40].z.xxx;
    float3 _1012 = lerp(_1006, dot(_1006, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[40].w.xxx);
    float3 _1016 = float4(_948, _945.yz, Material_Material_PreshaderBuffer[40].y).xyz;
    float3 _1018 = _1016 * dot(_1016, _1012);
    float3 _1019 = _1012 - _1018;
    float4 _1034 = Material_Texture2D_15.Sample(View_MaterialTextureBilinearWrapedSampler, _752);
    float3 _1039 = _1034.xyz * Material_Material_PreshaderBuffer[43].z.xxx;
    float3 _1045 = lerp(_1039, dot(_1039, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[43].w.xxx);
    float3 _1049 = float4(_948, _945.yz, Material_Material_PreshaderBuffer[43].y).xyz;
    float3 _1051 = _1049 * dot(_1049, _1045);
    float3 _1052 = _1045 - _1051;
    float4 _1067 = Material_Texture2D_16.Sample(View_MaterialTextureBilinearWrapedSampler, _787);
    float3 _1072 = _1067.xyz * Material_Material_PreshaderBuffer[46].z.xxx;
    float3 _1078 = lerp(_1072, dot(_1072, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[46].w.xxx);
    float3 _1082 = float4(_948, _945.yz, Material_Material_PreshaderBuffer[46].y).xyz;
    float3 _1084 = _1082 * dot(_1082, _1078);
    float3 _1085 = _1078 - _1084;
    float4 _1100 = Material_Texture2D_17.Sample(View_MaterialTextureBilinearWrapedSampler, _822);
    float3 _1105 = _1100.xyz * Material_Material_PreshaderBuffer[49].z.xxx;
    float3 _1111 = lerp(_1105, dot(_1105, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[49].w.xxx);
    float3 _1115 = float4(_948, _945.yz, Material_Material_PreshaderBuffer[49].y).xyz;
    float3 _1117 = _1115 * dot(_1115, _1111);
    float3 _1118 = _1111 - _1117;
    float3 _1130 = lerp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[38].xyz * (_986 + ((_987 * cos(Material_Material_PreshaderBuffer[37].y)) + (cross(_984, _987) * sin(Material_Material_PreshaderBuffer[37].y)))), Material_Material_PreshaderBuffer[41].xyz * (_1018 + ((_1019 * cos(Material_Material_PreshaderBuffer[40].y)) + (cross(_1016, _1019) * sin(Material_Material_PreshaderBuffer[40].y)))), _747), Material_Material_PreshaderBuffer[44].xyz * (_1051 + ((_1052 * cos(Material_Material_PreshaderBuffer[43].y)) + (cross(_1049, _1052) * sin(Material_Material_PreshaderBuffer[43].y)))), _782), Material_Material_PreshaderBuffer[47].xyz * (_1084 + ((_1085 * cos(Material_Material_PreshaderBuffer[46].y)) + (cross(_1082, _1085) * sin(Material_Material_PreshaderBuffer[46].y)))), _817), Material_Material_PreshaderBuffer[50].xyz * (_1117 + ((_1118 * cos(Material_Material_PreshaderBuffer[49].y)) + (cross(_1115, _1118) * sin(Material_Material_PreshaderBuffer[49].y)))), _852);
    float4 _1136 = Material_Texture2D_18.Sample(View_MaterialTextureBilinearWrapedSampler, _647);
    float _1137 = _1136.z;
    float4 _1145 = Material_Texture2D_19.Sample(View_MaterialTextureBilinearWrapedSampler, _692);
    float _1146 = _1145.z;
    float4 _1155 = Material_Texture2D_20.Sample(View_MaterialTextureBilinearWrapedSampler, _752);
    float _1156 = _1155.z;
    float4 _1165 = Material_Texture2D_21.Sample(View_MaterialTextureBilinearWrapedSampler, _787);
    float _1166 = _1165.z;
    float4 _1175 = Material_Texture2D_22.Sample(View_MaterialTextureBilinearWrapedSampler, _822);
    float _1176 = _1175.z;
    float _1182 = lerp(lerp(lerp(lerp((_1137 <= 0.0f) ? 0.0f : pow(_1137, Material_Material_PreshaderBuffer[50].w), (_1146 <= 0.0f) ? 0.0f : pow(_1146, Material_Material_PreshaderBuffer[51].x), _744), (_1156 <= 0.0f) ? 0.0f : pow(_1156, Material_Material_PreshaderBuffer[51].y), _780), (_1166 <= 0.0f) ? 0.0f : pow(_1166, Material_Material_PreshaderBuffer[51].z), _815), (_1176 <= 0.0f) ? 0.0f : pow(_1176, Material_Material_PreshaderBuffer[51].w), _850);
    float4 _1188 = Material_Texture2D_23.Sample(View_MaterialTextureBilinearWrapedSampler, _579);
    float _1228 = lerp(lerp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[53].x, Material_Material_PreshaderBuffer[52].w, _1136.y), lerp(Material_Material_PreshaderBuffer[53].z, Material_Material_PreshaderBuffer[53].y, _1145.y), _744), lerp(Material_Material_PreshaderBuffer[54].x, Material_Material_PreshaderBuffer[53].w, _1155.y), _780), lerp(Material_Material_PreshaderBuffer[54].z, Material_Material_PreshaderBuffer[54].y, _1165.y), _815), lerp(Material_Material_PreshaderBuffer[55].x, Material_Material_PreshaderBuffer[54].w, _1175.y), _850);
    float _1236 = lerp(_969.w, 1.0f, 0.5f) * Material_Material_PreshaderBuffer[55].y;
    float _1237 = _1188.x;
    float _1243 = _1136.x;
    float _1249 = _1145.x;
    float _1256 = _1155.x;
    float _1263 = _1165.x;
    float _1270 = _1175.x;
    float _1276 = lerp(lerp(lerp(lerp((_1243 <= 0.0f) ? 0.0f : pow(_1243, Material_Material_PreshaderBuffer[55].w), (_1249 <= 0.0f) ? 0.0f : pow(_1249, Material_Material_PreshaderBuffer[56].x), _744), (_1256 <= 0.0f) ? 0.0f : pow(_1256, Material_Material_PreshaderBuffer[56].y), _780), (_1263 <= 0.0f) ? 0.0f : pow(_1263, Material_Material_PreshaderBuffer[56].z), _815), (_1270 <= 0.0f) ? 0.0f : pow(_1270, Material_Material_PreshaderBuffer[56].w), _850);
    uint _1306 = 0u;
    do
    {
        if (_428 > 1)
        {
            float _1288 = (_1236 - 0.33329999446868896484375f) * 1.49992501735687255859375f;
            uint _1296 = (_1288 > 0.75f) ? 15u : ((_1288 > 0.5f) ? 13u : ((_1288 > 0.25f) ? 9u : ((_1288 > 0.00999999977648258209228515625f) ? 8u : 0u)));
            if ((float(_1296) - 0.5f) < 0.0f)
            {
                discard;
            }
            _1306 = _1296;
            break;
        }
        if ((_1236 - 0.33329999446868896484375f) < 0.0f)
        {
            discard;
        }
        _1306 = 15u;
        break;
    } while(false);
    float3 _1307 = clamp(lerp(lerp(Material_Material_PreshaderBuffer[35].xyz * (_954 + ((_955 * cos(Material_Material_PreshaderBuffer[34].y)) + (cross(_952, _955) * sin(Material_Material_PreshaderBuffer[34].y)))), _910 * _1130, _910), _1130, _910), 0.0f.xxx, 1.0f.xxx);
    float _1308 = clamp(lerp(lerp(0.0f, _630 * _1182, _630), _1182, _630), 0.0f, 1.0f);
    float _1309 = clamp(Material_Material_PreshaderBuffer[52].x, 0.0f, 1.0f);
    float _1314 = (clamp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[52].z, Material_Material_PreshaderBuffer[52].y, _1188.y), _630 * _1228, _630), _1228, _630), 0.0f, 1.0f) * _430.y) + _430.x;
    float _1315 = clamp(lerp(lerp((_1237 <= 0.0f) ? 0.0f : pow(_1237, Material_Material_PreshaderBuffer[55].z), _630 * _1276, _630), _1276, _630), 0.0f, 1.0f);
    uint _1316 = in_var_PRIMITIVE_ID * 40u;
    float _1364 = 0.0f;
    float _1365 = 0.0f;
    float _1366 = 0.0f;
    float3 _1367 = 0.0f.xxx;
    float3 _1368 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_1316 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _1332 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _1336 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1332, 0.0f);
        float4 _1339 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1332, 0.0f);
        float4 _1342 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1332, 0.0f);
        float _1352 = _1342.w;
        _1364 = (_1314 * _1352) + _1342.z;
        _1365 = (_1309 * _1352) + _1342.y;
        _1366 = (_1308 * _1352) + _1342.x;
        _1367 = (_1307 * _1336.w) + _1336.xyz;
        _1368 = normalize((_922 * _1339.w) + ((_1339.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _1364 = _1314;
        _1365 = _1309;
        _1366 = _1308;
        _1367 = _1307;
        _1368 = _922;
    }
    uint _1371 = asuint(asfloat(View_PrimitiveSceneData.Load4(_1316 * 16 + 0)).x);
    float _1380 = _455.w;
    bool _1388 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _1394 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_1316 * 16 + 0)).x) & 2u) != 0u) && _1388)
    {
        _1394 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _1394 = 1.0f;
    }
    float _1445 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_1316 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _1413 = clamp((((_465 * 2097152.0f) + _466) * View_View_VolumetricLightmapWorldToUVScale) + View_View_VolumetricLightmapWorldToUVAdd, 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _1424 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_1413.x), int(_1413.y), int(_1413.z), 0).xyz, 0)));
        _1445 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_1424.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_1413 / _1424.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _1445 = _1394;
    }
    float4 _1446 = float4(_1445, 1.0f, 1.0f, 1.0f);
    float3 _1459 = ((_1367 - (_1367 * _1366)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _1466 = (lerp((0.07999999821186065673828125f * _1365).xxx, _1367, _1366.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _1469 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _1474 = 0.0f.xxx;
    if (_1469)
    {
        _1474 = _1459 + (_1466 * 0.449999988079071044921875f);
    }
    else
    {
        _1474 = _1459;
    }
    bool3 _1475 = _1469.xxx;
    float3 _1476 = float3(_1475.x ? 0.0f.xxx.x : _1466.x, _1475.y ? 0.0f.xxx.y : _1466.y, _1475.z ? 0.0f.xxx.z : _1466.z);
    float3 _1549 = 0.0f.xxx;
    if (_1388)
    {
        float4 _1499 = _319;
        _1499.y = (-0.48860299587249755859375f) * _1368.y;
        float4 _1502 = _1499;
        _1502.z = 0.48860299587249755859375f * _1368.z;
        float4 _1505 = _1502;
        _1505.w = (-0.48860299587249755859375f) * _1368.x;
        float3 _1506 = _1368 * _1368;
        float4 _1509 = _313;
        _1509.x = (1.09254801273345947265625f * _1368.x) * _1368.y;
        float4 _1512 = _1509;
        _1512.y = ((-1.09254801273345947265625f) * _1368.y) * _1368.z;
        float4 _1517 = _1512;
        _1517.z = 0.3153919875621795654296875f * ((3.0f * _1506.z) - 1.0f);
        float4 _1520 = _1517;
        _1520.w = ((-1.09254801273345947265625f) * _1368.x) * _1368.z;
        float4 _1524 = _1505;
        _1524.x = 0.886227548122406005859375f;
        float3 _1526 = _1524.yzw * 2.094395160675048828125f;
        float4 _1527 = float4(_1524.x, _1526.x, _1526.y, _1526.z);
        float4 _1528 = _1520 * 0.785398185253143310546875f;
        float _1529 = (_1506.x - _1506.y) * 0.4290426075458526611328125f;
        float3 _1535 = 0.0f.xxx;
        _1535.x = (dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[0], _1527) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[0], _1528)) + (IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.x * _1529);
        float3 _1541 = _1535;
        _1541.y = (dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[1], _1527) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[1], _1528)) + (IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.y * _1529);
        float3 _1547 = _1541;
        _1547.z = (dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[2], _1527) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[2], _1528)) + (IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.z * _1529);
        _1549 = max(0.0f.xxx, _1547);
    }
    else
    {
        _1549 = 0.0f.xxx;
    }
    float3 _1628 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _1580 = 0.0f;
        float _1581 = 0.0f;
        float3 _1582 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _1570 = 0.0f.xxx;
            float _1571 = 0.0f;
            if (_1388)
            {
                _1570 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _1571 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _1570 = _1368;
                _1571 = 1.0f;
            }
            float _1572 = 1.0f - _1571;
            float _1574 = 1.0f - (_1572 * _1572);
            _1580 = lerp(clamp(dot(_1570, _1368), 0.0f, 1.0f), 1.0f, _1574);
            _1581 = _1571;
            _1582 = lerp(_1570, _1368, _1574.xxx);
        }
        else
        {
            _1580 = 1.0f;
            _1581 = 1.0f;
            _1582 = _1368;
        }
        float4 _1586 = float4(_1582, 1.0f);
        float3 _1590 = _314;
        _1590.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _1586);
        float3 _1594 = _1590;
        _1594.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _1586);
        float3 _1598 = _1594;
        _1598.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _1586);
        float4 _1601 = _1586.xyzz * _1586.yzzx;
        float3 _1605 = _314;
        _1605.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _1601);
        float3 _1609 = _1605;
        _1609.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _1601);
        float3 _1613 = _1609;
        _1613.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _1601);
        _1628 = (max(0.0f.xxx, (_1598 + _1613) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * ((_1582.x * _1582.x) - (_1582.y * _1582.y)))) * _431.xyz) * (_1581 * _1580);
    }
    else
    {
        _1628 = 0.0f.xxx;
    }
    float3 _1629 = (_1549 * View_View_PrecomputedIndirectLightingColorScale) + _1628;
    float2 _1637 = ((_455.xy / _1380.xx) * _425.xy) + _425.wz;
    float2 _1756 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _1648 = int2(trunc(_1637 * View_View_BufferSizeAndInvSize.xy));
        int _1649 = _1648.x;
        int _1650 = _1648.y;
        float4 _1654 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1649, _1650, 0).xy, 0));
        float _1655 = _1654.x;
        float2 _1755 = 0.0f.xx;
        if ((abs((((_1655 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1655 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1380) / _1380) > 0.00999999977648258209228515625f)
        {
            float2 _1679 = _1637 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _1683 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1649 - 1, _1650, 0).xy, 0));
            float _1684 = _1683.x;
            float _1692 = abs((((_1684 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1684 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1380);
            bool _1693 = _1692 < 100000000.0f;
            bool2 _1694 = _1693.xx;
            float2 _1695 = float2(_1694.x ? _1679.x : _1637.x, _1694.y ? _1679.y : _1637.y);
            float _1696 = _1693 ? _1692 : 100000000.0f;
            float2 _1699 = _1637 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _1703 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1649, _1650 + 1, 0).xy, 0));
            float _1704 = _1703.x;
            float _1712 = abs((((_1704 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1704 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1380);
            bool _1713 = _1712 < _1696;
            bool2 _1714 = _1713.xx;
            float2 _1715 = float2(_1714.x ? _1699.x : _1695.x, _1714.y ? _1699.y : _1695.y);
            float _1716 = _1713 ? _1712 : _1696;
            float2 _1718 = _1637 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _1722 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1649 + 1, _1650, 0).xy, 0));
            float _1723 = _1722.x;
            float _1731 = abs((((_1723 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1723 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1380);
            bool _1732 = _1731 < _1716;
            bool2 _1733 = _1732.xx;
            float2 _1734 = float2(_1733.x ? _1718.x : _1715.x, _1733.y ? _1718.y : _1715.y);
            float2 _1738 = _1637 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _1742 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1649, _1650 - 1, 0).xy, 0));
            float _1743 = _1742.x;
            bool2 _1753 = (abs((((_1743 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1743 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1380) < (_1732 ? _1731 : _1716)).xx;
            _1755 = float2(_1753.x ? _1738.x : _1734.x, _1753.y ? _1738.y : _1734.y);
        }
        else
        {
            _1755 = _1637;
        }
        _1756 = _1755;
    }
    else
    {
        _1756 = _1637;
    }
    uint _1762_dummy_parameter;
    uint2 _1762 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _1762_dummy_parameter);
    float _1780 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_1756 * float2(float(_1762.x), float(_1762.y)))), 0).xy, 0)).x, ((uint(((2.0f * float((_1371 & 128u) != 0u)) + float((_1371 & 256u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _1790 = _1315.xxx;
    uint _1818 = 0u;
    float3 _1819 = 0.0f.xxx;
    int3 _1820 = int3(0, 0, 0);
    [branch]
    if (_358)
    {
        _1818 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift;
        _1819 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams;
        _1820 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _1818 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
        _1819 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridZParams;
        _1820 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint2 _1836 = uint2(_447 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (_1818.xx & uint2(31u, 31u));
    int3 _1846 = int3(0, 0, 0);
    [branch]
    if (_358)
    {
        _1846 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _1846 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint _1854 = (((min(uint(max(0.0f, log2((_355 * _1819.x) + _1819.y) * _1819.z)), uint(_1820.z - 1)) * uint(_1846.y)) + _1836.y) * uint(_1846.x)) + _1836.x;
    float4 _1872 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _1872 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_1756 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _1872 = 1.0f.xxxx;
    }
    float4 _1873 = _1872 * _1872;
    uint _1876 = asuint(asfloat(View_PrimitiveSceneData.Load4(_1316 * 16 + 0)).x);
    uint _1889 = (uint((_1876 & 1024u) != 0u) | (uint((_1876 & 2048u) != 0u) << 1u)) | (uint((_1876 & 4096u) != 0u) << 2u);
    uint _1913 = 0u;
    uint _1914 = 0u;
    float2 _1915 = 0.0f.xx;
    float3 _1916 = 0.0f.xxx;
    float3 _1917 = 0.0f.xxx;
    [branch]
    if (_358)
    {
        _1913 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight;
        _1914 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
        _1915 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
        _1916 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor;
        _1917 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection;
    }
    else
    {
        _1913 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_HasDirectionalLight;
        _1914 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
        _1915 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
        _1916 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightColor;
        _1917 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDirection;
    }
    float4 _2057 = 0.0f.xxxx;
    float4 _2058 = 0.0f.xxxx;
    [branch]
    if (_1913 != 0u)
    {
        float4 _1936 = float4(float((_1914 & 1u) != 0u), float((_1914 & 2u) != 0u), float((_1914 & 4u) != 0u), float((_1914 & 8u) != 0u));
        uint _1937 = _1914 >> 4u;
        float _1951 = dot(float4(float((_1937 & 1u) != 0u), float((_1937 & 2u) != 0u), float((_1937 & 4u) != 0u), float((_1937 & 8u) != 0u)), _1873);
        bool _1953 = _1915.y < 0.0f;
        float _1954 = _1953 ? 1.0f : _1951;
        float _1971 = 0.0f;
        float _1972 = 0.0f;
        [branch]
        if (uint((_1914 & 255u) != 0u) != 0u)
        {
            float _1965 = clamp((_1380 * _1915.x) + _1915.y, 0.0f, 1.0f);
            float _1967 = lerp(_1953 ? _1951 : 1.0f, lerp(1.0f, dot(_1446, _1936), dot(_1936, 1.0f.xxxx)), _1965 * _1965);
            _1971 = min(_1967, _1954) * _1954;
            _1972 = _1967 * _1954;
        }
        else
        {
            _1971 = 1.0f;
            _1972 = 1.0f;
        }
        float3 _2041 = 0.0f.xxx;
        float3 _2042 = 0.0f.xxx;
        [branch]
        if ((_1972 + _1971) > 0.0f)
        {
            float _1979 = max(_1364, View_View_MinRoughness);
            float3 _1982 = _1917 * rsqrt(dot(_1917, _1917));
            float _1983 = dot(_1368, _1982);
            float _1984 = clamp(_1983, 0.0f, 1.0f);
            float _1985 = dot(_1368, _475);
            float _1986 = dot(_475, _1982);
            float _1989 = rsqrt(2.0f + (2.0f * _1986));
            float _1992 = clamp((_1983 + _1985) * _1989, 0.0f, 1.0f);
            float _1998 = clamp(abs(_1985) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float3 _2000 = 1.0f.xxx * _1984;
            float _2002 = _1979 * _1979;
            float _2003 = _2002 * _2002;
            float _2007 = (((_1992 * _2003) - _1992) * _1992) + 1.0f;
            float _2011 = sqrt(_2003);
            float _2012 = 1.0f - _2011;
            float _2021 = 1.0f - clamp(_1989 + (_1989 * _1986), 0.0f, 1.0f);
            float _2022 = _2021 * _2021;
            float _2024 = (_2022 * _2022) * _2021;
            float3 _2038 = (_1916 * 1.0f) * _1972;
            _2041 = ((_1474 * 0.3183098733425140380859375f) * _2000) * _2038;
            _2042 = ((_2000 * (((clamp(50.0f * _1476.y, 0.0f, 1.0f) * _2024).xxx + (_1476 * (1.0f - _2024))) * ((_2003 / ((3.1415927410125732421875f * _2007) * _2007)) * (0.5f / ((_1984 * ((_1998 * _2012) + _2011)) + (_1998 * ((_1984 * _2012) + _2011))))))) * 1.0f) * _2038;
        }
        else
        {
            _2041 = 0.0f.xxx;
            _2042 = 0.0f.xxx;
        }
        float4 _2046 = float4(_2041, 0.0f);
        float4 _2050 = float4(_2042, 0.0f);
        bool4 _2054 = (((_1914 >> 8u) & _1889) != 0u).xxxx;
        _2057 = float4(_2054.x ? _2046.x : 0.0f.xxxx.x, _2054.y ? _2046.y : 0.0f.xxxx.y, _2054.z ? _2046.z : 0.0f.xxxx.z, _2054.w ? _2046.w : 0.0f.xxxx.w);
        _2058 = float4(_2054.x ? _2050.x : 0.0f.xxxx.x, _2054.y ? _2050.y : 0.0f.xxxx.y, _2054.z ? _2050.z : 0.0f.xxxx.z, _2054.w ? _2050.w : 0.0f.xxxx.w);
    }
    else
    {
        _2057 = 0.0f.xxxx;
        _2058 = 0.0f.xxxx;
    }
    uint _2082 = 0u;
    uint _2083 = 0u;
    [branch]
    if (_358)
    {
        uint _2072 = _1854 * 2u;
        _2082 = min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_2072).x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
        _2083 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_2072 + 1u).x;
    }
    else
    {
        uint _2062 = _1854 * 2u;
        _2082 = min(OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_2062).x, OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights);
        _2083 = OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_2062 + 1u).x;
    }
    uint _2089 = min(_2082, (_358 ? OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights : OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights));
    float4 _2091 = 0.0f.xxxx;
    float4 _2094 = 0.0f.xxxx;
    _2091 = _2057;
    _2094 = _2058;
    float4 _2092 = 0.0f.xxxx;
    float4 _2095 = 0.0f.xxxx;
    [loop]
    for (uint _2096 = 0u; _2096 < _2089; _2091 = _2092, _2094 = _2095, _2096++)
    {
        uint _2101 = _2083 + _2096;
        float4 _2133 = 0.0f.xxxx;
        float4 _2134 = 0.0f.xxxx;
        float4 _2135 = 0.0f.xxxx;
        float4 _2136 = 0.0f.xxxx;
        float4 _2137 = 0.0f.xxxx;
        [branch]
        if (_358)
        {
            uint _2122 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid.Load(_2101).x * 6u;
            _2133 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2122);
            _2134 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2122 + 1u);
            _2135 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2122 + 3u);
            _2136 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2122 + 2u);
            _2137 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_2122 + 4u);
        }
        else
        {
            uint _2108 = OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid.Load(_2101).x * 6u;
            _2133 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2108);
            _2134 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2108 + 1u);
            _2135 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2108 + 3u);
            _2136 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2108 + 2u);
            _2137 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_2108 + 4u);
        }
        float2 _2146 = spvUnpackHalf2x16(asuint(_2135.w));
        float _2147 = _2146.x;
        bool _2150 = _2134.w == 0.0f;
        uint _2154 = asuint(_2136.w);
        float4 _2170 = float4(float((_2154 & 1u) != 0u), float((_2154 & 2u) != 0u), float((_2154 & 4u) != 0u), float((_2154 & 8u) != 0u));
        uint _2171 = _2154 >> 4u;
        float3 _2186 = _2133.xyz - _464;
        float _2187 = dot(_2186, _2186);
        float _2204 = 0.0f;
        if (_2150)
        {
            float _2199 = _2187 * (_2133.w * _2133.w);
            float _2202 = clamp(1.0f - (_2199 * _2199), 0.0f, 1.0f);
            _2204 = _2202 * _2202;
        }
        else
        {
            float3 _2193 = _2186 * _2133.w;
            _2204 = pow(1.0f - clamp(dot(_2193, _2193), 0.0f, 1.0f), _2134.w);
        }
        float _2214 = 0.0f;
        if (_2135.x > (-2.0f))
        {
            float _2211 = clamp((dot(_2186 * rsqrt(_2187), _2136.xyz) - _2135.x) * _2135.y, 0.0f, 1.0f);
            _2214 = _2204 * (_2211 * _2211);
        }
        else
        {
            _2214 = _2204;
        }
        float3 _2534 = 0.0f.xxx;
        float3 _2535 = 0.0f.xxx;
        [branch]
        if (_2214 > 0.0f)
        {
            float _2225 = 0.0f;
            [branch]
            if (uint((_2154 & 255u) != 0u) != 0u)
            {
                _2225 = dot(float4(float((_2171 & 1u) != 0u), float((_2171 & 2u) != 0u), float((_2171 & 4u) != 0u), float((_2171 & 8u) != 0u)), _1873) * lerp(1.0f, dot(_1446, _2170), dot(_2170, 1.0f.xxxx));
            }
            else
            {
                _2225 = 1.0f;
            }
            float3 _2532 = 0.0f.xxx;
            float3 _2533 = 0.0f.xxx;
            [branch]
            if ((_2225 + _2225) > 0.0f)
            {
                float3 _2231 = _2137.xyz * (0.5f * _2147);
                float3 _2232 = _2186 - _2231;
                float3 _2233 = _2186 + _2231;
                float _2236 = max(_1364, View_View_MinRoughness);
                bool _2237 = _2147 > 0.0f;
                float _2264 = 0.0f;
                float _2265 = 0.0f;
                float _2266 = 0.0f;
                [branch]
                if (_2237)
                {
                    float _2249 = rsqrt(dot(_2232, _2232));
                    float _2250 = rsqrt(dot(_2233, _2233));
                    float _2251 = _2249 * _2250;
                    float _2253 = dot(_2232, _2233) * _2251;
                    _2264 = _2253;
                    _2265 = 0.5f * ((dot(_1368, _2232) * _2249) + (dot(_1368, _2233) * _2250));
                    _2266 = _2251 / (((_2253 * 0.5f) + 0.5f) + _2251);
                }
                else
                {
                    float _2241 = dot(_2232, _2232);
                    _2264 = 1.0f;
                    _2265 = dot(_1368, _2232 * rsqrt(_2241));
                    _2266 = 1.0f / (_2241 + 1.0f);
                }
                float _2284 = 0.0f;
                if (_2135.z > 0.0f)
                {
                    float _2273 = sqrt(clamp((_2135.z * _2135.z) * _2266, 0.0f, 1.0f));
                    float _2283 = 0.0f;
                    if (_2265 < _2273)
                    {
                        float _2279 = _2273 + max(_2265, -_2273);
                        _2283 = (_2279 * _2279) / (4.0f * _2273);
                    }
                    else
                    {
                        _2283 = _2265;
                    }
                    _2284 = _2283;
                }
                else
                {
                    _2284 = _2265;
                }
                float _2285 = clamp(_2284, 0.0f, 1.0f);
                float3 _2303 = 0.0f.xxx;
                if (_2237)
                {
                    float3 _2290 = reflect(-_475, _1368);
                    float3 _2291 = _2233 - _2232;
                    float _2293 = dot(_2290, _2291);
                    _2303 = _2232 + (_2291 * clamp(dot(_2232, (_2290 * _2293) - _2291) / ((_2147 * _2147) - (_2293 * _2293)), 0.0f, 1.0f));
                }
                else
                {
                    _2303 = _2232;
                }
                float _2305 = rsqrt(dot(_2303, _2303));
                float3 _2306 = _2303 * _2305;
                float _2307 = max(_2236, View_View_MinRoughness);
                float _2312 = clamp((_2135.z * _2305) * (1.0f - (_2307 * _2307)), 0.0f, 1.0f);
                float _2314 = clamp(_2137.w * _2305, 0.0f, 1.0f);
                float _2322 = dot(_1368, _2306);
                float _2323 = dot(_1368, _475);
                float _2324 = dot(_475, _2306);
                float _2327 = rsqrt(2.0f + (2.0f * _2324));
                bool _2334 = _2312 > 0.0f;
                float _2429 = 0.0f;
                float _2430 = 0.0f;
                if (_2334)
                {
                    float _2339 = sqrt(1.0f - (_2312 * _2312));
                    float _2341 = (2.0f * _2322) * _2323;
                    float _2342 = _2341 - _2324;
                    float _2427 = 0.0f;
                    float _2428 = 0.0f;
                    if (_2342 >= _2339)
                    {
                        _2427 = 1.0f;
                        _2428 = abs(_2323);
                    }
                    else
                    {
                        float _2350 = _2312 * rsqrt(1.0f - (_2342 * _2342));
                        float _2353 = _2350 * (_2323 - (_2342 * _2322));
                        float _2359 = _2350 * ((((2.0f * _2323) * _2323) - 1.0f) - (_2342 * _2324));
                        float _2370 = _2350 * sqrt(clamp((((1.0f - (_2322 * _2322)) - (_2323 * _2323)) - (_2324 * _2324)) + (_2341 * _2324), 0.0f, 1.0f));
                        float _2372 = (_2370 * 2.0f) * _2323;
                        float _2373 = _2322 * _2339;
                        float _2374 = _2373 + _2323;
                        float _2375 = _2374 + _2353;
                        float _2376 = _2324 * _2339;
                        float _2378 = (_2376 + 1.0f) + _2359;
                        float _2379 = _2370 * _2378;
                        float _2380 = _2375 * _2378;
                        float _2381 = _2372 * _2375;
                        float _2386 = _2380 * (((-0.5f) * _2379) + ((0.25f * _2372) * _2375));
                        float _2400 = ((_2379 * _2379) + (_2381 * (_2381 - (2.0f * _2379)))) + (_2375 * ((_2374 * (_2378 * _2378)) + (_2380 * (((-0.5f) * (_2378 + _2376)) - 0.5f))));
                        float _2405 = (2.0f * _2386) / ((_2400 * _2400) + (_2386 * _2386));
                        float _2406 = _2405 * _2400;
                        float _2408 = 1.0f - (_2405 * _2386);
                        float _2416 = _2376 + ((_2408 * _2359) + (_2406 * _2372));
                        float _2419 = rsqrt(2.0f + (2.0f * _2416));
                        _2427 = clamp(((_2373 + ((_2408 * _2353) + (_2406 * _2370))) + _2323) * _2419, 0.0f, 1.0f);
                        _2428 = clamp(_2419 + (_2419 * _2416), 0.0f, 1.0f);
                    }
                    _2429 = _2427;
                    _2430 = _2428;
                }
                else
                {
                    _2429 = clamp((_2322 + _2323) * _2327, 0.0f, 1.0f);
                    _2430 = clamp(_2327 + (_2327 * _2324), 0.0f, 1.0f);
                }
                float _2433 = clamp(abs(_2323) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _2436 = 1.0f.xxx * ((_2150 ? _2266 : 1.0f) * _2285);
                float3 _2526 = 0.0f.xxx;
                if (((0u | (asuint(clamp(1.0f - (max(_2147, _2135.z) * 0.0500000007450580596923828125f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _2526 = 0.0f.xxx;
                }
                else
                {
                    float _2443 = _2236 * _2236;
                    float _2444 = _2443 * _2443;
                    float _2454 = 0.0f;
                    if (_2314 > 0.0f)
                    {
                        _2454 = clamp(_2444 + ((_2314 * _2314) / ((_2430 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _2454 = _2444;
                    }
                    float _2469 = 0.0f;
                    float _2470 = 0.0f;
                    if (_2334)
                    {
                        float _2467 = _2454 + (((0.25f * _2312) * ((3.0f * asfloat(532487669 + (asint(_2454) >> 1))) + _2312)) / (_2430 + 0.001000000047497451305389404296875f));
                        _2469 = _2454 / _2467;
                        _2470 = _2467;
                    }
                    else
                    {
                        _2469 = 1.0f;
                        _2470 = _2454;
                    }
                    float _2492 = 0.0f;
                    if (_2264 < 1.0f)
                    {
                        float _2477 = sqrt((1.00010001659393310546875f - _2264) / (1.0f + _2264));
                        _2492 = _2469 * sqrt(_2470 / (_2470 + (((0.25f * _2477) * ((3.0f * asfloat(532487669 + (asint(_2470) >> 1))) + _2477)) / (_2430 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _2492 = _2469;
                    }
                    float _2496 = (((_2429 * _2454) - _2429) * _2429) + 1.0f;
                    float _2501 = sqrt(_2454);
                    float _2502 = 1.0f - _2501;
                    float _2511 = 1.0f - _2430;
                    float _2512 = _2511 * _2511;
                    float _2514 = (_2512 * _2512) * _2511;
                    _2526 = _2436 * (((clamp(50.0f * _1476.y, 0.0f, 1.0f) * _2514).xxx + (_1476 * (1.0f - _2514))) * (((_2454 / ((3.1415927410125732421875f * _2496) * _2496)) * _2492) * (0.5f / ((_2285 * ((_2433 * _2502) + _2501)) + (_2433 * ((_2285 * _2502) + _2501))))));
                }
                float3 _2529 = (_2134.xyz * _2214) * _2225;
                _2532 = ((_1474 * 0.3183098733425140380859375f) * _2436) * _2529;
                _2533 = (_2526 * 1.0f) * _2529;
            }
            else
            {
                _2532 = 0.0f.xxx;
                _2533 = 0.0f.xxx;
            }
            _2534 = _2532;
            _2535 = _2533;
        }
        else
        {
            _2534 = 0.0f.xxx;
            _2535 = 0.0f.xxx;
        }
        [flatten]
        if (((_2154 >> 8u) & _1889) != 0u)
        {
            _2092 = _2091 + float4(_2534, 0.0f);
            _2095 = _2094 + float4(_2535, 0.0f);
        }
        else
        {
            _2092 = _2091;
            _2095 = _2094;
        }
    }
    bool4 _2554 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _2563 = int(asuint(asfloat(View_PrimitiveSceneData.Load4(_1316 * 16 + 0)).w));
    float3 _2567 = (_1368 * (2.0f * dot(_475, _1368))) - _475;
    float _2575 = 1.0f - (1.2000000476837158203125f * log2(max(_1364, 0.001000000047497451305389404296875f)));
    float4 _2591 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_2567, ReflectionCapture_ReflectionCapture_CaptureProperties[_2563].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _2575);
    float _2595 = 1.0f - _2591.w;
    float4 _2599 = float4(_2591.xyz * ReflectionCapture_ReflectionCapture_CaptureProperties[_2563].x, _2595);
    float3 _2604 = _2599.xyz * View_View_PrecomputedIndirectSpecularColorScale;
    float4 _2605 = float4(_2604.x, _2604.y, _2604.z, _2599.w);
    float4 _2642 = 0.0f.xxxx;
    float3 _2643 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        float3 _2626 = OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _2567, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _2575).xyz * View_View_SkyLightColor.xyz;
        float4 _2640 = 0.0f.xxxx;
        float3 _2641 = 0.0f.xxx;
        [flatten]
        if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.z < 1.0f) && true)
        {
            float3 _2638 = _2604.xyz + ((_2626 * _2595) * 1.0f);
            _2640 = float4(_2638.x, _2638.y, _2638.z, _2599.w);
            _2641 = 0.0f.xxx;
        }
        else
        {
            _2640 = _2605;
            _2641 = _2626 * 1.0f;
        }
        _2642 = _2640;
        _2643 = _2641;
    }
    else
    {
        _2642 = _2605;
        _2643 = 0.0f.xxx;
    }
    float4 _2666 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _1364) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _2667 = _2666.x;
    float2 _2677 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_2667 * _2667, exp2((-9.27999973297119140625f) * clamp(dot(_1368, _475), 0.0f, 1.0f))) * _2667) + _2666.y)) + _2666.zw;
    bool _2705 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2773 = 0.0f.xxxx;
    if (_2705)
    {
        float4 _2723 = mul(((float4(_465, 0.0f) + float4(_433, 0.0f)) * 2097152.0f) + float4(_466, 1.0f), _432);
        float _2724 = _2723.w;
        float3 _2746 = float3(((_2723.xy / _2724.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_2724 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _2761 = 0.0f.xxxx;
        if (_2705)
        {
            float4 _2760 = 0.0f.xxxx;
            if (_358)
            {
                _2760 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _2746, 0.0f);
            }
            else
            {
                _2760 = OpaqueBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _2746, 0.0f);
            }
            _2761 = _2760;
        }
        else
        {
            _2761 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _2773 = float4(_2761.xyz + (in_var_TEXCOORD7.xyz * _2761.w), _2761.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _2773 = in_var_TEXCOORD7;
    }
    float3 _2780 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[32].xyz, Material_Material_PreshaderBuffer[31].w.xxx), 0.0f.xxx);
    float3 _2837 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _2811 = abs(((_465 - asfloat(View_PrimitiveSceneData.Load4((_1316 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_466 - asfloat(View_PrimitiveSceneData.Load4((_1316 + 19u) * 16 + 0)).xyz));
        float3 _2812 = float3(asfloat(View_PrimitiveSceneData.Load4((_1316 + 18u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_1316 + 25u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_1316 + 26u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _2836 = 0.0f.xxx;
        if (any(bool3(_2811.x > _2812.x, _2811.y > _2812.y, _2811.z > _2812.z)))
        {
            float3 _2832 = frac(frac(((_465.x + _465.y) + _465.z) * 2420.113525390625f) + (((_466.x + _466.y) + _466.z) * 0.001154000055976212024688720703125f)).xxx;
            _2836 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2832.x > 0.5f.xxx.x, _2832.y > 0.5f.xxx.y, _2832.z > 0.5f.xxx.z)));
        }
        else
        {
            _2836 = _2780;
        }
        _2837 = _2836;
    }
    else
    {
        _2837 = _2780;
    }
    float4 _2848 = float4((((lerp((float4(_2554.x ? 0.0f.xxxx.x : _2091.x, _2554.y ? 0.0f.xxxx.y : _2091.y, _2554.z ? 0.0f.xxxx.z : _2091.z, _2554.w ? 0.0f.xxxx.w : _2091.w).xyz + float4(_2554.x ? 0.0f.xxxx.x : _2094.x, _2554.y ? 0.0f.xxxx.y : _2094.y, _2554.z ? 0.0f.xxxx.z : _2094.z, _2554.w ? 0.0f.xxxx.w : _2094.w).xyz) + (((((_2642.xyz * lerp(1.0f, min((dot(_1629, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * _1780) / max(ReflectionCapture_ReflectionCapture_CaptureOffsetAndAverageBrightness[_2563].w * dot(View_View_PrecomputedIndirectSpecularColorScale, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)), 9.9999997473787516355514526367188e-05f), View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp((_1364 * View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x) + View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y, 0.0f, 1.0f)))).xyz + (_2643 * _2642.w)).xyz * ((_1476 * _2677.x) + (clamp(50.0f * _1476.y, 0.0f, 1.0f) * _2677.y).xxx)) * _1780) * max(_1790, ((((((_1476 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1315) + ((_1476 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1315) + ((_1476 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1315)), _1474 + (_1476 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + (((_1629 * _1780) * _1474) * max(_1790, ((((((_1367 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1315) + ((_1367 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1315) + ((_1367 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1315))) + _2837) * _2773.w) + _2773.xyz, 0.0f);
    _2848.w = 0.0f;
    out_var_SV_Target0 = _2848 * View_View_PreExposure;
    gl_SampleMask = int(_1306);
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
