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
    float4 Material_Material_PreshaderBuffer[52] : packoffset(c0);
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
Texture2D<float4> Material_Texture2D_12;
Texture2D<float4> Material_Texture2D_13;
Texture2D<float4> Material_Texture2D_14;
Texture2D<float4> Material_Texture2D_15;
Texture2D<float4> Material_Texture2D_16;
Texture2D<float4> Material_Texture2D_17;
Texture2D<float4> Material_Texture2D_18;
Texture2D<float4> Material_Texture2D_19;
Texture2D<float4> Material_Texture2D_20;

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

static float _296 = 0.0f;
static float3 _297 = 0.0f.xxx;
static float _300 = 0.0f;

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
    bool _336 = false;
    float _333 = 1.0f / gl_FragCoord.w;
    float4x4 _400 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _401 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _402 = 0.0f.xxx;
    float4 _403 = 0.0f.xxxx;
    float4 _404 = 0.0f.xxxx;
    float4 _405 = 0.0f.xxxx;
    int _406 = 0;
    float4 _407 = 0.0f.xxxx;
    float2 _408 = 0.0f.xx;
    float4 _409 = 0.0f.xxxx;
    float4x4 _410 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _411 = 0.0f.xxx;
    float3 _412 = 0.0f.xxx;
    float3 _413 = 0.0f.xxx;
    do
    {
        _336 = in_var_PACKED_EYE_INDEX == 0u;
        if (_336)
        {
            _400 = View_View_ViewToClip;
            _401 = View_View_SVPositionToTranslatedWorld;
            _402 = View_View_ViewForward;
            _403 = View_View_ScreenPositionScaleBias;
            _404 = View_View_ViewRectMin;
            _405 = View_View_ViewSizeAndInvSize;
            _406 = View_View_NumSceneColorMSAASamples;
            _407 = View_View_NormalOverrideParameter;
            _408 = View_View_RoughnessOverrideParameter;
            _409 = View_View_SkyLightColor;
            _410 = View_View_RelativeWorldToClip;
            _411 = -View_View_MatrixTilePosition;
            _412 = -View_View_ViewTilePosition;
            _413 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _400 = InstancedView_InstancedView_ViewToClip;
            _401 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _402 = InstancedView_InstancedView_ViewForward;
            _403 = InstancedView_InstancedView_ScreenPositionScaleBias;
            _404 = InstancedView_InstancedView_ViewRectMin;
            _405 = InstancedView_InstancedView_ViewSizeAndInvSize;
            _406 = InstancedView_InstancedView_NumSceneColorMSAASamples;
            _407 = InstancedView_InstancedView_NormalOverrideParameter;
            _408 = InstancedView_InstancedView_RoughnessOverrideParameter;
            _409 = InstancedView_InstancedView_SkyLightColor;
            _410 = InstancedView_InstancedView_RelativeWorldToClip;
            _411 = -InstancedView_InstancedView_MatrixTilePosition;
            _412 = -InstancedView_InstancedView_ViewTilePosition;
            _413 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float3x3 _421 = float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz);
    float2 _424 = gl_FragCoord.xy - _404.xy;
    float4 _432 = float4(((_424 * _405.zw) - 0.5f.xx) * float2(2.0f, -2.0f), _300, 1.0f) * _333;
    float4 _437 = mul(float4(gl_FragCoord.xyz, 1.0f), _401);
    float3 _441 = _437.xyz / _437.w.xxx;
    float3 _442 = -_412;
    float3 _443 = _441 - _413;
    float3 _452 = 0.0f.xxx;
    if (_400[3].w >= 1.0f)
    {
        _452 = -_402;
    }
    else
    {
        _452 = normalize(-_441);
    }
    float2 _453 = (-0.5f).xx + float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y);
    float2 _457 = float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[1].x.xx;
    float2 _458 = ddy(_457);
    float2 _459 = ddx(_457);
    float3 _460 = mul(_421, _452);
    float2 _469 = Material_Material_PreshaderBuffer[1].y.xx * ((_460.xy * (-1.0f).xx) / _460.z.xx);
    float2 _474 = _457 + (_469 * Material_Material_PreshaderBuffer[2].x.xx);
    float2 _478 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float2 _482 = _478 + View_View_TemporalAAParams.x.xx;
    float4 _497 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _478 * 0.015625f.xx, View_View_MaterialTextureMipBias);
    float _505 = lerp(Material_Material_PreshaderBuffer[2].z, Material_Material_PreshaderBuffer[2].y, (float((uint(_482.x) + (2u * uint(_482.y))) % 5u) + _497.x) * 0.16666667163372039794921875f);
    float _515 = lerp(Material_Material_PreshaderBuffer[2].w * _505, Material_Material_PreshaderBuffer[3].x * _505, clamp(abs(dot(_452, in_var_TEXCOORD11_centroid.xyz)), 0.0f, 1.0f));
    float _516 = floor(_515);
    float _517 = 1.0f / _515;
    float2 _519 = _469 * _517.xx;
    float2 _520 = ddx(_474);
    float2 _521 = ddy(_474);
    float _527_copy;
    float2 _530 = 0.0f.xx;
    _530 = 0.0f.xx;
    float _528 = 0.0f;
    float2 _531 = 0.0f.xx;
    int _533 = 0;
    float _535 = 0.0f;
    float2 _554 = 0.0f.xx;
    float _527 = 1.0f;
    int _532 = 0;
    float _534 = 1.0f;
    float _536 = 1.0f;
    for (;;)
    {
        if (float(_532) < (_516 + 2.0f))
        {
            _535 = dot(Material_Material_PreshaderBuffer[6], Material_Texture2D_1.SampleGrad(Material_Texture2D_1Sampler, _474 + _530, _520, _521));
            if (_527 < _535)
            {
                float _549 = _535 - _527;
                _554 = _530 - (_519 * (_549 / ((_536 - _534) + _549)));
                break;
            }
            _528 = _527 - _517;
            _531 = _530 + _519;
            _533 = _532 + 1;
            _527_copy = _527;
            _527 = _528;
            _530 = _531;
            _532 = _533;
            _534 = _535;
            _536 = _527_copy;
            continue;
        }
        else
        {
            _554 = _530;
            break;
        }
    }
    float2 _556 = _474 + _554.xy;
    float2 _559 = View_View_MaterialTextureDerivativeMultiply.xx;
    float2 _568 = (Material_Texture2D_2.SampleGrad(Material_Texture2D_2Sampler, _556, _459 * _559, _458 * _559).xy * 2.0f.xx) - 1.0f.xx;
    float4 _590 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, Material_Material_PreshaderBuffer[7].w.xx * float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _607 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[8].z, Material_Material_PreshaderBuffer[8].y, ((in_var_COLOR0.y * Material_Material_PreshaderBuffer[7].z).xxx * (in_var_COLOR0.y.xxx + (_590.xyz * Material_Material_PreshaderBuffer[8].x.xxx))).x), 0.0f, 1.0f), 0.0f, 1.0f);
    float2 _623 = ((0.5f.xx + float2(dot(_453, Material_Material_PreshaderBuffer[10].xy), dot(_453, Material_Material_PreshaderBuffer[10].zw))) + Material_Material_PreshaderBuffer[11].zw) * Material_Material_PreshaderBuffer[13].yz;
    float2 _624 = ddy(_623);
    float2 _625 = ddx(_623);
    float2 _634 = (Material_Texture2D_4.SampleGrad(Material_Texture2D_4Sampler, _623, _625 * _559, _624 * _559).xy * 2.0f.xx) - 1.0f.xx;
    float2 _662 = ((0.5f.xx + float2(dot(_453, Material_Material_PreshaderBuffer[15].yz), dot(_453, Material_Material_PreshaderBuffer[16].xy))) + Material_Material_PreshaderBuffer[17].xy) * Material_Material_PreshaderBuffer[19].xy;
    float2 _663 = ddy(_662);
    float2 _664 = ddx(_662);
    float2 _668 = _662 * Material_Material_PreshaderBuffer[19].z.xx;
    float2 _669 = _664 * _559;
    float2 _670 = _663 * _559;
    float2 _677 = (Material_Texture2D_5.SampleGrad(Material_Texture2D_5Sampler, _668, _669, _670).xy * 2.0f.xx) - 1.0f.xx;
    float4 _691 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _692 = _691.x;
    float4 _703 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, Material_Material_PreshaderBuffer[20].z.xx * float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _720 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[21].y, Material_Material_PreshaderBuffer[21].x, ((_692 * Material_Material_PreshaderBuffer[20].y).xxx * (_692.xxx + (_703.xyz * Material_Material_PreshaderBuffer[20].w.xxx))).x), 0.0f, 1.0f), 0.0f, 1.0f);
    float3 _723 = _720.xxx;
    float _735 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[22].x, Material_Material_PreshaderBuffer[21].w, _691.y), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[22].y, 0.0f, 1.0f);
    float3 _736 = _735.xxx;
    float2 _741 = _662 * Material_Material_PreshaderBuffer[22].z.xx;
    float2 _748 = (Material_Texture2D_8.SampleGrad(Material_Texture2D_8Sampler, _741, _669, _670).xy * 2.0f.xx) - 1.0f.xx;
    float _769 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[23].z, Material_Material_PreshaderBuffer[23].y, _691.z), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[23].w, 0.0f, 1.0f);
    float3 _771 = _769.xxx;
    float2 _776 = _662 * Material_Material_PreshaderBuffer[24].x.xx;
    float2 _783 = (Material_Texture2D_9.SampleGrad(Material_Texture2D_9Sampler, _776, _669, _670).xy * 2.0f.xx) - 1.0f.xx;
    float _804 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[25].x, Material_Material_PreshaderBuffer[24].w, _691.w), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[25].y, 0.0f, 1.0f);
    float3 _806 = _804.xxx;
    float3 _807 = lerp(lerp(lerp(lerp(float3(_634.x * Material_Material_PreshaderBuffer[13].w, _634.y * Material_Material_PreshaderBuffer[13].w, sqrt(clamp(1.0f - dot(_634, _634), 0.0f, 1.0f))), float3(_677.x * Material_Material_PreshaderBuffer[19].w, _677.y * Material_Material_PreshaderBuffer[19].w, sqrt(clamp(1.0f - dot(_677, _677), 0.0f, 1.0f))), _723), 1.0f.xxx, _736), float3(_748.x * Material_Material_PreshaderBuffer[22].w, _748.y * Material_Material_PreshaderBuffer[22].w, sqrt(clamp(1.0f - dot(_748, _748), 0.0f, 1.0f))), _771), float3(_783.x * Material_Material_PreshaderBuffer[24].y, _783.y * Material_Material_PreshaderBuffer[24].y, sqrt(clamp(1.0f - dot(_783, _783), 0.0f, 1.0f))), _806);
    float _809 = _807.z + 1.0f;
    float2 _825 = ((0.5f.xx + float2(dot(_453, Material_Material_PreshaderBuffer[27].xy), dot(_453, Material_Material_PreshaderBuffer[27].zw))) + Material_Material_PreshaderBuffer[28].zw) * Material_Material_PreshaderBuffer[30].yz;
    float2 _826 = ddy(_825);
    float2 _827 = ddx(_825);
    float2 _836 = (Material_Texture2D_10.SampleGrad(Material_Texture2D_10Sampler, _825, _827 * _559, _826 * _559).xy * 2.0f.xx) - 1.0f.xx;
    float3 _852 = float3(_807.xy, _809);
    float3 _855 = float3(float3(_836.x * Material_Material_PreshaderBuffer[30].w, _836.y * Material_Material_PreshaderBuffer[30].w, _296).xy * (-1.0f).xx, sqrt(clamp(1.0f - dot(_836, _836), 0.0f, 1.0f)));
    float3 _861 = (_852 * dot(_852, _855).xxx) - (_809.xxx * _855);
    float3 _862 = _607.xxx;
    float3 _874 = normalize(mul(normalize((lerp(lerp(float3(_568.x * Material_Material_PreshaderBuffer[7].x, _568.y * Material_Material_PreshaderBuffer[7].x, sqrt(clamp(1.0f - dot(_568, _568), 0.0f, 1.0f))), _862 * _861, _862), _861, _862) * _407.w) + _407.xyz), _421)) * 1.0f;
    float4 _885 = Material_Texture2D_11.Sample(View_MaterialTextureBilinearWrapedSampler, _556);
    float3 _890 = _885.xyz * Material_Material_PreshaderBuffer[33].z.xxx;
    float3 _896 = lerp(_890, dot(_890, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[33].w.xxx);
    float3 _897 = normalize(1.0f.xxx);
    float _900 = _897.x;
    float3 _904 = float4(_900, _897.yz, Material_Material_PreshaderBuffer[33].y).xyz;
    float3 _906 = _904 * dot(_904, _896);
    float3 _907 = _896 - _906;
    float4 _921 = Material_Texture2D_12.Sample(View_MaterialTextureBilinearWrapedSampler, _623);
    float3 _926 = _921.xyz * Material_Material_PreshaderBuffer[36].z.xxx;
    float3 _932 = lerp(_926, dot(_926, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[36].w.xxx);
    float3 _936 = float4(_900, _897.yz, Material_Material_PreshaderBuffer[36].y).xyz;
    float3 _938 = _936 * dot(_936, _932);
    float3 _939 = _932 - _938;
    float4 _953 = Material_Texture2D_13.Sample(View_MaterialTextureBilinearWrapedSampler, _668);
    float3 _958 = _953.xyz * Material_Material_PreshaderBuffer[39].z.xxx;
    float3 _964 = lerp(_958, dot(_958, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[39].w.xxx);
    float3 _968 = float4(_900, _897.yz, Material_Material_PreshaderBuffer[39].y).xyz;
    float3 _970 = _968 * dot(_968, _964);
    float3 _971 = _964 - _970;
    float4 _987 = Material_Texture2D_14.Sample(View_MaterialTextureBilinearWrapedSampler, _741);
    float3 _992 = _987.xyz * Material_Material_PreshaderBuffer[42].z.xxx;
    float3 _998 = lerp(_992, dot(_992, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[42].w.xxx);
    float3 _1002 = float4(_900, _897.yz, Material_Material_PreshaderBuffer[42].y).xyz;
    float3 _1004 = _1002 * dot(_1002, _998);
    float3 _1005 = _998 - _1004;
    float4 _1020 = Material_Texture2D_15.Sample(View_MaterialTextureBilinearWrapedSampler, _776);
    float3 _1025 = _1020.xyz * Material_Material_PreshaderBuffer[45].z.xxx;
    float3 _1031 = lerp(_1025, dot(_1025, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[45].w.xxx);
    float3 _1035 = float4(_900, _897.yz, Material_Material_PreshaderBuffer[45].y).xyz;
    float3 _1037 = _1035 * dot(_1035, _1031);
    float3 _1038 = _1031 - _1037;
    float3 _1050 = lerp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[37].xyz * (_938 + ((_939 * cos(Material_Material_PreshaderBuffer[36].y)) + (cross(_936, _939) * sin(Material_Material_PreshaderBuffer[36].y)))), Material_Material_PreshaderBuffer[40].xyz * (_970 + ((_971 * cos(Material_Material_PreshaderBuffer[39].y)) + (cross(_968, _971) * sin(Material_Material_PreshaderBuffer[39].y)))), _723), 1.0f.xxx, _736), Material_Material_PreshaderBuffer[43].xyz * (_1004 + ((_1005 * cos(Material_Material_PreshaderBuffer[42].y)) + (cross(_1002, _1005) * sin(Material_Material_PreshaderBuffer[42].y)))), _771), Material_Material_PreshaderBuffer[46].xyz * (_1037 + ((_1038 * cos(Material_Material_PreshaderBuffer[45].y)) + (cross(_1035, _1038) * sin(Material_Material_PreshaderBuffer[45].y)))), _806);
    float4 _1056 = Material_Texture2D_16.Sample(View_MaterialTextureBilinearWrapedSampler, _623);
    float _1057 = _1056.z;
    float4 _1065 = Material_Texture2D_17.Sample(View_MaterialTextureBilinearWrapedSampler, _668);
    float _1066 = _1065.z;
    float4 _1076 = Material_Texture2D_18.Sample(View_MaterialTextureBilinearWrapedSampler, _741);
    float _1077 = _1076.z;
    float4 _1086 = Material_Texture2D_19.Sample(View_MaterialTextureBilinearWrapedSampler, _776);
    float _1087 = _1086.z;
    float _1093 = lerp(lerp(lerp(lerp((_1057 <= 0.0f) ? 0.0f : pow(_1057, Material_Material_PreshaderBuffer[46].w), (_1066 <= 0.0f) ? 0.0f : pow(_1066, Material_Material_PreshaderBuffer[47].x), _720), 1.0f, _735), (_1077 <= 0.0f) ? 0.0f : pow(_1077, Material_Material_PreshaderBuffer[47].y), _769), (_1087 <= 0.0f) ? 0.0f : pow(_1087, Material_Material_PreshaderBuffer[47].z), _804);
    float4 _1099 = Material_Texture2D_20.Sample(View_MaterialTextureBilinearWrapedSampler, _556);
    float _1133 = lerp(lerp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[48].w, Material_Material_PreshaderBuffer[48].z, _1056.y), lerp(Material_Material_PreshaderBuffer[49].y, Material_Material_PreshaderBuffer[49].x, _1065.y), _720), 1.0f, _735), lerp(Material_Material_PreshaderBuffer[49].w, Material_Material_PreshaderBuffer[49].z, _1076.y), _769), lerp(Material_Material_PreshaderBuffer[50].y, Material_Material_PreshaderBuffer[50].x, _1086.y), _804);
    float _1141 = lerp(_921.w, 1.0f, 0.5f) * Material_Material_PreshaderBuffer[50].z;
    float _1142 = _1099.x;
    float _1148 = _1056.x;
    float _1154 = _1065.x;
    float _1162 = _1076.x;
    float _1169 = _1086.x;
    float _1175 = lerp(lerp(lerp(lerp((_1148 <= 0.0f) ? 0.0f : pow(_1148, Material_Material_PreshaderBuffer[51].x), (_1154 <= 0.0f) ? 0.0f : pow(_1154, Material_Material_PreshaderBuffer[51].y), _720), 1.0f, _735), (_1162 <= 0.0f) ? 0.0f : pow(_1162, Material_Material_PreshaderBuffer[51].z), _769), (_1169 <= 0.0f) ? 0.0f : pow(_1169, Material_Material_PreshaderBuffer[51].w), _804);
    uint _1205 = 0u;
    do
    {
        if (_406 > 1)
        {
            float _1187 = (_1141 - 0.33329999446868896484375f) * 1.49992501735687255859375f;
            uint _1195 = (_1187 > 0.75f) ? 15u : ((_1187 > 0.5f) ? 13u : ((_1187 > 0.25f) ? 9u : ((_1187 > 0.00999999977648258209228515625f) ? 8u : 0u)));
            if ((float(_1195) - 0.5f) < 0.0f)
            {
                discard;
            }
            _1205 = _1195;
            break;
        }
        if ((_1141 - 0.33329999446868896484375f) < 0.0f)
        {
            discard;
        }
        _1205 = 15u;
        break;
    } while(false);
    float3 _1206 = clamp(lerp(lerp(Material_Material_PreshaderBuffer[34].xyz * (_906 + ((_907 * cos(Material_Material_PreshaderBuffer[33].y)) + (cross(_904, _907) * sin(Material_Material_PreshaderBuffer[33].y)))), _862 * _1050, _862), _1050, _862), 0.0f.xxx, 1.0f.xxx);
    float _1207 = clamp(lerp(lerp(0.0f, _607 * _1093, _607), _1093, _607), 0.0f, 1.0f);
    float _1208 = clamp(Material_Material_PreshaderBuffer[47].w, 0.0f, 1.0f);
    float _1213 = (clamp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[48].y, Material_Material_PreshaderBuffer[48].x, _1099.y), _607 * _1133, _607), _1133, _607), 0.0f, 1.0f) * _408.y) + _408.x;
    float _1214 = clamp(lerp(lerp((_1142 <= 0.0f) ? 0.0f : pow(_1142, Material_Material_PreshaderBuffer[50].w), _607 * _1175, _607), _1175, _607), 0.0f, 1.0f);
    uint _1215 = in_var_PRIMITIVE_ID * 40u;
    float3 _1263 = 0.0f.xxx;
    float _1264 = 0.0f;
    float _1265 = 0.0f;
    float _1266 = 0.0f;
    float3 _1267 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_1215 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _1231 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _1235 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1231, 0.0f);
        float4 _1238 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1231, 0.0f);
        float4 _1241 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1231, 0.0f);
        float _1251 = _1241.w;
        _1263 = normalize((_874 * _1238.w) + ((_1238.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _1264 = (_1213 * _1251) + _1241.z;
        _1265 = (_1208 * _1251) + _1241.y;
        _1266 = (_1207 * _1251) + _1241.x;
        _1267 = (_1206 * _1235.w) + _1235.xyz;
    }
    else
    {
        _1263 = _874;
        _1264 = _1213;
        _1265 = _1208;
        _1266 = _1207;
        _1267 = _1206;
    }
    uint _1270 = asuint(asfloat(View_PrimitiveSceneData.Load4(_1215 * 16 + 0)).x);
    float _1279 = _432.w;
    float3 _1292 = ((_1267 - (_1267 * _1266)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _1299 = (lerp((0.07999999821186065673828125f * _1265).xxx, _1267, _1266.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _1302 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _1307 = 0.0f.xxx;
    if (_1302)
    {
        _1307 = _1292 + (_1299 * 0.449999988079071044921875f);
    }
    else
    {
        _1307 = _1292;
    }
    bool3 _1308 = _1302.xxx;
    float3 _1309 = float3(_1308.x ? 0.0f.xxx.x : _1299.x, _1308.y ? 0.0f.xxx.y : _1299.y, _1308.z ? 0.0f.xxx.z : _1299.z);
    float2 _1311 = in_var_TEXCOORD4.xy * float2(1.0f, 0.5f);
    float4 _1316 = LightmapResourceCluster_LightMapTexture.Sample(LightmapResourceCluster_LightMapSampler, _1311);
    float4 _1318 = LightmapResourceCluster_LightMapTexture.Sample(LightmapResourceCluster_LightMapSampler, _1311 + float2(0.0f, 0.5f));
    uint _1324 = in_var_LIGHTMAP_ID * 15u;
    uint _1325 = _1324 + 4u;
    uint _1330 = _1324 + 6u;
    float3 _1335 = _1316.xyz;
    float3 _1440 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _1392 = 0.0f;
        float _1393 = 0.0f;
        float3 _1394 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float4 _1376 = LightmapResourceCluster_SkyOcclusionTexture.Sample(LightmapResourceCluster_LightMapSampler, in_var_TEXCOORD4.xy);
            float _1380 = _1376.w;
            float _1381 = _1380 * _1380;
            float3 _1383 = normalize(((_1376.xyz * 2.0f) - 1.0f.xxx).xyz);
            float _1384 = 1.0f - _1381;
            float _1386 = 1.0f - (_1384 * _1384);
            _1392 = lerp(clamp(dot(_1383, _1263), 0.0f, 1.0f), 1.0f, _1386);
            _1393 = _1381;
            _1394 = lerp(_1383, _1263, _1386.xxx);
        }
        else
        {
            _1392 = 1.0f;
            _1393 = 1.0f;
            _1394 = _1263;
        }
        float4 _1398 = float4(_1394, 1.0f);
        float3 _1402 = _297;
        _1402.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _1398);
        float3 _1406 = _1402;
        _1406.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _1398);
        float3 _1410 = _1406;
        _1410.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _1398);
        float4 _1413 = _1398.xyzz * _1398.yzzx;
        float3 _1417 = _297;
        _1417.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _1413);
        float3 _1421 = _1417;
        _1421.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _1413);
        float3 _1425 = _1421;
        _1425.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _1413);
        _1440 = (max(0.0f.xxx, (_1410 + _1425) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * ((_1394.x * _1394.x) - (_1394.y * _1394.y)))) * _409.xyz) * (_1393 * _1392);
    }
    else
    {
        _1440 = 0.0f.xxx;
    }
    float3 _1441 = (((((_1335 * _1335) * asfloat(View_LightmapSceneData.Load4(_1325 * 16 + 0)).xyz) + asfloat(View_LightmapSceneData.Load4(_1330 * 16 + 0)).xyz) * ((exp2(((_1316.w + ((_1318.w * 0.0039215688593685626983642578125f) - 0.00196078442968428134918212890625f)) * asfloat(View_LightmapSceneData.Load4(_1325 * 16 + 0)).w) + asfloat(View_LightmapSceneData.Load4(_1330 * 16 + 0)).w) - 0.0185813605785369873046875f) * max(0.0f, dot((_1318 * asfloat(View_LightmapSceneData.Load4((_1324 + 5u) * 16 + 0))) + asfloat(View_LightmapSceneData.Load4((_1324 + 7u) * 16 + 0)), float4(_1263.yzx, 1.0f))))) * View_View_PrecomputedIndirectLightingColorScale) + _1440;
    float2 _1449 = ((_432.xy / _1279.xx) * _403.xy) + _403.wz;
    float2 _1568 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _1460 = int2(trunc(_1449 * View_View_BufferSizeAndInvSize.xy));
        int _1461 = _1460.x;
        int _1462 = _1460.y;
        float4 _1466 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1461, _1462, 0).xy, 0));
        float _1467 = _1466.x;
        float2 _1567 = 0.0f.xx;
        if ((abs((((_1467 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1467 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1279) / _1279) > 0.00999999977648258209228515625f)
        {
            float2 _1491 = _1449 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _1495 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1461 - 1, _1462, 0).xy, 0));
            float _1496 = _1495.x;
            float _1504 = abs((((_1496 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1496 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1279);
            bool _1505 = _1504 < 100000000.0f;
            bool2 _1506 = _1505.xx;
            float2 _1507 = float2(_1506.x ? _1491.x : _1449.x, _1506.y ? _1491.y : _1449.y);
            float _1508 = _1505 ? _1504 : 100000000.0f;
            float2 _1511 = _1449 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _1515 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1461, _1462 + 1, 0).xy, 0));
            float _1516 = _1515.x;
            float _1524 = abs((((_1516 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1516 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1279);
            bool _1525 = _1524 < _1508;
            bool2 _1526 = _1525.xx;
            float2 _1527 = float2(_1526.x ? _1511.x : _1507.x, _1526.y ? _1511.y : _1507.y);
            float _1528 = _1525 ? _1524 : _1508;
            float2 _1530 = _1449 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _1534 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1461 + 1, _1462, 0).xy, 0));
            float _1535 = _1534.x;
            float _1543 = abs((((_1535 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1535 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1279);
            bool _1544 = _1543 < _1528;
            bool2 _1545 = _1544.xx;
            float2 _1546 = float2(_1545.x ? _1530.x : _1527.x, _1545.y ? _1530.y : _1527.y);
            float2 _1550 = _1449 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _1554 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1461, _1462 - 1, 0).xy, 0));
            float _1555 = _1554.x;
            bool2 _1565 = (abs((((_1555 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1555 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1279) < (_1544 ? _1543 : _1528)).xx;
            _1567 = float2(_1565.x ? _1550.x : _1546.x, _1565.y ? _1550.y : _1546.y);
        }
        else
        {
            _1567 = _1449;
        }
        _1568 = _1567;
    }
    else
    {
        _1568 = _1449;
    }
    uint _1574_dummy_parameter;
    uint2 _1574 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _1574_dummy_parameter);
    float _1592 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_1568 * float2(float(_1574.x), float(_1574.y)))), 0).xy, 0)).x, ((uint(((2.0f * float((_1270 & 128u) != 0u)) + float((_1270 & 256u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _1602 = _1214.xxx;
    uint _1630 = 0u;
    float3 _1631 = 0.0f.xxx;
    int3 _1632 = int3(0, 0, 0);
    [branch]
    if (_336)
    {
        _1630 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift;
        _1631 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams;
        _1632 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _1630 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
        _1631 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridZParams;
        _1632 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint2 _1648 = uint2(_424 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (_1630.xx & uint2(31u, 31u));
    int3 _1658 = int3(0, 0, 0);
    [branch]
    if (_336)
    {
        _1658 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _1658 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint _1666 = (((min(uint(max(0.0f, log2((_333 * _1631.x) + _1631.y) * _1631.z)), uint(_1632.z - 1)) * uint(_1658.y)) + _1648.y) * uint(_1658.x)) + _1648.x;
    float4 _1684 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _1684 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_1568 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _1684 = 1.0f.xxxx;
    }
    float4 _1685 = _1684 * _1684;
    uint _1688 = asuint(asfloat(View_PrimitiveSceneData.Load4(_1215 * 16 + 0)).x);
    uint _1701 = (uint((_1688 & 1024u) != 0u) | (uint((_1688 & 2048u) != 0u) << 1u)) | (uint((_1688 & 4096u) != 0u) << 2u);
    uint _1725 = 0u;
    uint _1726 = 0u;
    float2 _1727 = 0.0f.xx;
    float3 _1728 = 0.0f.xxx;
    float3 _1729 = 0.0f.xxx;
    [branch]
    if (_336)
    {
        _1725 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight;
        _1726 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
        _1727 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
        _1728 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor;
        _1729 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection;
    }
    else
    {
        _1725 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_HasDirectionalLight;
        _1726 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
        _1727 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
        _1728 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightColor;
        _1729 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDirection;
    }
    float4 _1868 = 0.0f.xxxx;
    float4 _1869 = 0.0f.xxxx;
    [branch]
    if (_1725 != 0u)
    {
        uint _1749 = _1726 >> 4u;
        float _1763 = dot(float4(float((_1749 & 1u) != 0u), float((_1749 & 2u) != 0u), float((_1749 & 4u) != 0u), float((_1749 & 8u) != 0u)), _1685);
        bool _1765 = _1727.y < 0.0f;
        float _1766 = _1765 ? 1.0f : _1763;
        float _1782 = 0.0f;
        float _1783 = 0.0f;
        [branch]
        if (uint((_1726 & 255u) != 0u) != 0u)
        {
            float _1776 = clamp((_1279 * _1727.x) + _1727.y, 0.0f, 1.0f);
            float _1778 = lerp(_1765 ? _1763 : 1.0f, lerp(1.0f, 0.0f, dot(float4(float((_1726 & 1u) != 0u), float((_1726 & 2u) != 0u), float((_1726 & 4u) != 0u), float((_1726 & 8u) != 0u)), 1.0f.xxxx)), _1776 * _1776);
            _1782 = min(_1778, _1766) * _1766;
            _1783 = _1778 * _1766;
        }
        else
        {
            _1782 = 1.0f;
            _1783 = 1.0f;
        }
        float3 _1852 = 0.0f.xxx;
        float3 _1853 = 0.0f.xxx;
        [branch]
        if ((_1783 + _1782) > 0.0f)
        {
            float _1790 = max(_1264, View_View_MinRoughness);
            float3 _1793 = _1729 * rsqrt(dot(_1729, _1729));
            float _1794 = dot(_1263, _1793);
            float _1795 = clamp(_1794, 0.0f, 1.0f);
            float _1796 = dot(_1263, _452);
            float _1797 = dot(_452, _1793);
            float _1800 = rsqrt(2.0f + (2.0f * _1797));
            float _1803 = clamp((_1794 + _1796) * _1800, 0.0f, 1.0f);
            float _1809 = clamp(abs(_1796) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float3 _1811 = 1.0f.xxx * _1795;
            float _1813 = _1790 * _1790;
            float _1814 = _1813 * _1813;
            float _1818 = (((_1803 * _1814) - _1803) * _1803) + 1.0f;
            float _1822 = sqrt(_1814);
            float _1823 = 1.0f - _1822;
            float _1832 = 1.0f - clamp(_1800 + (_1800 * _1797), 0.0f, 1.0f);
            float _1833 = _1832 * _1832;
            float _1835 = (_1833 * _1833) * _1832;
            float3 _1849 = (_1728 * 1.0f) * _1783;
            _1852 = ((_1307 * 0.3183098733425140380859375f) * _1811) * _1849;
            _1853 = ((_1811 * (((clamp(50.0f * _1309.y, 0.0f, 1.0f) * _1835).xxx + (_1309 * (1.0f - _1835))) * ((_1814 / ((3.1415927410125732421875f * _1818) * _1818)) * (0.5f / ((_1795 * ((_1809 * _1823) + _1822)) + (_1809 * ((_1795 * _1823) + _1822))))))) * 1.0f) * _1849;
        }
        else
        {
            _1852 = 0.0f.xxx;
            _1853 = 0.0f.xxx;
        }
        float4 _1857 = float4(_1852, 0.0f);
        float4 _1861 = float4(_1853, 0.0f);
        bool4 _1865 = (((_1726 >> 8u) & _1701) != 0u).xxxx;
        _1868 = float4(_1865.x ? _1857.x : 0.0f.xxxx.x, _1865.y ? _1857.y : 0.0f.xxxx.y, _1865.z ? _1857.z : 0.0f.xxxx.z, _1865.w ? _1857.w : 0.0f.xxxx.w);
        _1869 = float4(_1865.x ? _1861.x : 0.0f.xxxx.x, _1865.y ? _1861.y : 0.0f.xxxx.y, _1865.z ? _1861.z : 0.0f.xxxx.z, _1865.w ? _1861.w : 0.0f.xxxx.w);
    }
    else
    {
        _1868 = 0.0f.xxxx;
        _1869 = 0.0f.xxxx;
    }
    uint _1893 = 0u;
    uint _1894 = 0u;
    [branch]
    if (_336)
    {
        uint _1883 = _1666 * 2u;
        _1893 = min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1883).x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
        _1894 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1883 + 1u).x;
    }
    else
    {
        uint _1873 = _1666 * 2u;
        _1893 = min(OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1873).x, OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights);
        _1894 = OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1873 + 1u).x;
    }
    uint _1900 = min(_1893, (_336 ? OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights : OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights));
    float4 _1902 = 0.0f.xxxx;
    float4 _1905 = 0.0f.xxxx;
    _1902 = _1868;
    _1905 = _1869;
    float4 _1903 = 0.0f.xxxx;
    float4 _1906 = 0.0f.xxxx;
    [loop]
    for (uint _1907 = 0u; _1907 < _1900; _1902 = _1903, _1905 = _1906, _1907++)
    {
        uint _1912 = _1894 + _1907;
        float4 _1944 = 0.0f.xxxx;
        float4 _1945 = 0.0f.xxxx;
        float4 _1946 = 0.0f.xxxx;
        float4 _1947 = 0.0f.xxxx;
        float4 _1948 = 0.0f.xxxx;
        [branch]
        if (_336)
        {
            uint _1933 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid.Load(_1912).x * 6u;
            _1944 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1933);
            _1945 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1933 + 1u);
            _1946 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1933 + 3u);
            _1947 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1933 + 2u);
            _1948 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1933 + 4u);
        }
        else
        {
            uint _1919 = OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid.Load(_1912).x * 6u;
            _1944 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1919);
            _1945 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1919 + 1u);
            _1946 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1919 + 3u);
            _1947 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1919 + 2u);
            _1948 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1919 + 4u);
        }
        float2 _1957 = spvUnpackHalf2x16(asuint(_1946.w));
        float _1958 = _1957.x;
        bool _1961 = _1945.w == 0.0f;
        uint _1965 = asuint(_1947.w);
        uint _1982 = _1965 >> 4u;
        float3 _1997 = _1944.xyz - _441;
        float _1998 = dot(_1997, _1997);
        float _2015 = 0.0f;
        if (_1961)
        {
            float _2010 = _1998 * (_1944.w * _1944.w);
            float _2013 = clamp(1.0f - (_2010 * _2010), 0.0f, 1.0f);
            _2015 = _2013 * _2013;
        }
        else
        {
            float3 _2004 = _1997 * _1944.w;
            _2015 = pow(1.0f - clamp(dot(_2004, _2004), 0.0f, 1.0f), _1945.w);
        }
        float _2025 = 0.0f;
        if (_1946.x > (-2.0f))
        {
            float _2022 = clamp((dot(_1997 * rsqrt(_1998), _1947.xyz) - _1946.x) * _1946.y, 0.0f, 1.0f);
            _2025 = _2015 * (_2022 * _2022);
        }
        else
        {
            _2025 = _2015;
        }
        float3 _2344 = 0.0f.xxx;
        float3 _2345 = 0.0f.xxx;
        [branch]
        if (_2025 > 0.0f)
        {
            float _2035 = 0.0f;
            [branch]
            if (uint((_1965 & 255u) != 0u) != 0u)
            {
                _2035 = dot(float4(float((_1982 & 1u) != 0u), float((_1982 & 2u) != 0u), float((_1982 & 4u) != 0u), float((_1982 & 8u) != 0u)), _1685) * lerp(1.0f, 0.0f, dot(float4(float((_1965 & 1u) != 0u), float((_1965 & 2u) != 0u), float((_1965 & 4u) != 0u), float((_1965 & 8u) != 0u)), 1.0f.xxxx));
            }
            else
            {
                _2035 = 1.0f;
            }
            float3 _2342 = 0.0f.xxx;
            float3 _2343 = 0.0f.xxx;
            [branch]
            if ((_2035 + _2035) > 0.0f)
            {
                float3 _2041 = _1948.xyz * (0.5f * _1958);
                float3 _2042 = _1997 - _2041;
                float3 _2043 = _1997 + _2041;
                float _2046 = max(_1264, View_View_MinRoughness);
                bool _2047 = _1958 > 0.0f;
                float _2074 = 0.0f;
                float _2075 = 0.0f;
                float _2076 = 0.0f;
                [branch]
                if (_2047)
                {
                    float _2059 = rsqrt(dot(_2042, _2042));
                    float _2060 = rsqrt(dot(_2043, _2043));
                    float _2061 = _2059 * _2060;
                    float _2063 = dot(_2042, _2043) * _2061;
                    _2074 = _2063;
                    _2075 = 0.5f * ((dot(_1263, _2042) * _2059) + (dot(_1263, _2043) * _2060));
                    _2076 = _2061 / (((_2063 * 0.5f) + 0.5f) + _2061);
                }
                else
                {
                    float _2051 = dot(_2042, _2042);
                    _2074 = 1.0f;
                    _2075 = dot(_1263, _2042 * rsqrt(_2051));
                    _2076 = 1.0f / (_2051 + 1.0f);
                }
                float _2094 = 0.0f;
                if (_1946.z > 0.0f)
                {
                    float _2083 = sqrt(clamp((_1946.z * _1946.z) * _2076, 0.0f, 1.0f));
                    float _2093 = 0.0f;
                    if (_2075 < _2083)
                    {
                        float _2089 = _2083 + max(_2075, -_2083);
                        _2093 = (_2089 * _2089) / (4.0f * _2083);
                    }
                    else
                    {
                        _2093 = _2075;
                    }
                    _2094 = _2093;
                }
                else
                {
                    _2094 = _2075;
                }
                float _2095 = clamp(_2094, 0.0f, 1.0f);
                float3 _2113 = 0.0f.xxx;
                if (_2047)
                {
                    float3 _2100 = reflect(-_452, _1263);
                    float3 _2101 = _2043 - _2042;
                    float _2103 = dot(_2100, _2101);
                    _2113 = _2042 + (_2101 * clamp(dot(_2042, (_2100 * _2103) - _2101) / ((_1958 * _1958) - (_2103 * _2103)), 0.0f, 1.0f));
                }
                else
                {
                    _2113 = _2042;
                }
                float _2115 = rsqrt(dot(_2113, _2113));
                float3 _2116 = _2113 * _2115;
                float _2117 = max(_2046, View_View_MinRoughness);
                float _2122 = clamp((_1946.z * _2115) * (1.0f - (_2117 * _2117)), 0.0f, 1.0f);
                float _2124 = clamp(_1948.w * _2115, 0.0f, 1.0f);
                float _2132 = dot(_1263, _2116);
                float _2133 = dot(_1263, _452);
                float _2134 = dot(_452, _2116);
                float _2137 = rsqrt(2.0f + (2.0f * _2134));
                bool _2144 = _2122 > 0.0f;
                float _2239 = 0.0f;
                float _2240 = 0.0f;
                if (_2144)
                {
                    float _2149 = sqrt(1.0f - (_2122 * _2122));
                    float _2151 = (2.0f * _2132) * _2133;
                    float _2152 = _2151 - _2134;
                    float _2237 = 0.0f;
                    float _2238 = 0.0f;
                    if (_2152 >= _2149)
                    {
                        _2237 = 1.0f;
                        _2238 = abs(_2133);
                    }
                    else
                    {
                        float _2160 = _2122 * rsqrt(1.0f - (_2152 * _2152));
                        float _2163 = _2160 * (_2133 - (_2152 * _2132));
                        float _2169 = _2160 * ((((2.0f * _2133) * _2133) - 1.0f) - (_2152 * _2134));
                        float _2180 = _2160 * sqrt(clamp((((1.0f - (_2132 * _2132)) - (_2133 * _2133)) - (_2134 * _2134)) + (_2151 * _2134), 0.0f, 1.0f));
                        float _2182 = (_2180 * 2.0f) * _2133;
                        float _2183 = _2132 * _2149;
                        float _2184 = _2183 + _2133;
                        float _2185 = _2184 + _2163;
                        float _2186 = _2134 * _2149;
                        float _2188 = (_2186 + 1.0f) + _2169;
                        float _2189 = _2180 * _2188;
                        float _2190 = _2185 * _2188;
                        float _2191 = _2182 * _2185;
                        float _2196 = _2190 * (((-0.5f) * _2189) + ((0.25f * _2182) * _2185));
                        float _2210 = ((_2189 * _2189) + (_2191 * (_2191 - (2.0f * _2189)))) + (_2185 * ((_2184 * (_2188 * _2188)) + (_2190 * (((-0.5f) * (_2188 + _2186)) - 0.5f))));
                        float _2215 = (2.0f * _2196) / ((_2210 * _2210) + (_2196 * _2196));
                        float _2216 = _2215 * _2210;
                        float _2218 = 1.0f - (_2215 * _2196);
                        float _2226 = _2186 + ((_2218 * _2169) + (_2216 * _2182));
                        float _2229 = rsqrt(2.0f + (2.0f * _2226));
                        _2237 = clamp(((_2183 + ((_2218 * _2163) + (_2216 * _2180))) + _2133) * _2229, 0.0f, 1.0f);
                        _2238 = clamp(_2229 + (_2229 * _2226), 0.0f, 1.0f);
                    }
                    _2239 = _2237;
                    _2240 = _2238;
                }
                else
                {
                    _2239 = clamp((_2132 + _2133) * _2137, 0.0f, 1.0f);
                    _2240 = clamp(_2137 + (_2137 * _2134), 0.0f, 1.0f);
                }
                float _2243 = clamp(abs(_2133) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _2246 = 1.0f.xxx * ((_1961 ? _2076 : 1.0f) * _2095);
                float3 _2336 = 0.0f.xxx;
                if (((0u | (asuint(clamp(1.0f - (max(_1958, _1946.z) * 0.0500000007450580596923828125f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _2336 = 0.0f.xxx;
                }
                else
                {
                    float _2253 = _2046 * _2046;
                    float _2254 = _2253 * _2253;
                    float _2264 = 0.0f;
                    if (_2124 > 0.0f)
                    {
                        _2264 = clamp(_2254 + ((_2124 * _2124) / ((_2240 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _2264 = _2254;
                    }
                    float _2279 = 0.0f;
                    float _2280 = 0.0f;
                    if (_2144)
                    {
                        float _2277 = _2264 + (((0.25f * _2122) * ((3.0f * asfloat(532487669 + (asint(_2264) >> 1))) + _2122)) / (_2240 + 0.001000000047497451305389404296875f));
                        _2279 = _2264 / _2277;
                        _2280 = _2277;
                    }
                    else
                    {
                        _2279 = 1.0f;
                        _2280 = _2264;
                    }
                    float _2302 = 0.0f;
                    if (_2074 < 1.0f)
                    {
                        float _2287 = sqrt((1.00010001659393310546875f - _2074) / (1.0f + _2074));
                        _2302 = _2279 * sqrt(_2280 / (_2280 + (((0.25f * _2287) * ((3.0f * asfloat(532487669 + (asint(_2280) >> 1))) + _2287)) / (_2240 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _2302 = _2279;
                    }
                    float _2306 = (((_2239 * _2264) - _2239) * _2239) + 1.0f;
                    float _2311 = sqrt(_2264);
                    float _2312 = 1.0f - _2311;
                    float _2321 = 1.0f - _2240;
                    float _2322 = _2321 * _2321;
                    float _2324 = (_2322 * _2322) * _2321;
                    _2336 = _2246 * (((clamp(50.0f * _1309.y, 0.0f, 1.0f) * _2324).xxx + (_1309 * (1.0f - _2324))) * (((_2264 / ((3.1415927410125732421875f * _2306) * _2306)) * _2302) * (0.5f / ((_2095 * ((_2243 * _2312) + _2311)) + (_2243 * ((_2095 * _2312) + _2311))))));
                }
                float3 _2339 = (_1945.xyz * _2025) * _2035;
                _2342 = ((_1307 * 0.3183098733425140380859375f) * _2246) * _2339;
                _2343 = (_2336 * 1.0f) * _2339;
            }
            else
            {
                _2342 = 0.0f.xxx;
                _2343 = 0.0f.xxx;
            }
            _2344 = _2342;
            _2345 = _2343;
        }
        else
        {
            _2344 = 0.0f.xxx;
            _2345 = 0.0f.xxx;
        }
        [flatten]
        if (((_1965 >> 8u) & _1701) != 0u)
        {
            _1903 = _1902 + float4(_2344, 0.0f);
            _1906 = _1905 + float4(_2345, 0.0f);
        }
        else
        {
            _1903 = _1902;
            _1906 = _1905;
        }
    }
    bool4 _2364 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _2373 = int(asuint(asfloat(View_PrimitiveSceneData.Load4(_1215 * 16 + 0)).w));
    float3 _2377 = (_1263 * (2.0f * dot(_452, _1263))) - _452;
    float _2385 = 1.0f - (1.2000000476837158203125f * log2(max(_1264, 0.001000000047497451305389404296875f)));
    float4 _2401 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_2377, ReflectionCapture_ReflectionCapture_CaptureProperties[_2373].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _2385);
    float _2405 = 1.0f - _2401.w;
    float4 _2409 = float4(_2401.xyz * ReflectionCapture_ReflectionCapture_CaptureProperties[_2373].x, _2405);
    float3 _2414 = _2409.xyz * View_View_PrecomputedIndirectSpecularColorScale;
    float4 _2415 = float4(_2414.x, _2414.y, _2414.z, _2409.w);
    float4 _2452 = 0.0f.xxxx;
    float3 _2453 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        float3 _2436 = OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _2377, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _2385).xyz * View_View_SkyLightColor.xyz;
        float4 _2450 = 0.0f.xxxx;
        float3 _2451 = 0.0f.xxx;
        [flatten]
        if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.z < 1.0f) && true)
        {
            float3 _2448 = _2414.xyz + ((_2436 * _2405) * 1.0f);
            _2450 = float4(_2448.x, _2448.y, _2448.z, _2409.w);
            _2451 = 0.0f.xxx;
        }
        else
        {
            _2450 = _2415;
            _2451 = _2436 * 1.0f;
        }
        _2452 = _2450;
        _2453 = _2451;
    }
    else
    {
        _2452 = _2415;
        _2453 = 0.0f.xxx;
    }
    float4 _2476 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _1264) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _2477 = _2476.x;
    float2 _2487 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_2477 * _2477, exp2((-9.27999973297119140625f) * clamp(dot(_1263, _452), 0.0f, 1.0f))) * _2477) + _2476.y)) + _2476.zw;
    bool _2515 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2583 = 0.0f.xxxx;
    if (_2515)
    {
        float4 _2533 = mul(((float4(_442, 0.0f) + float4(_411, 0.0f)) * 2097152.0f) + float4(_443, 1.0f), _410);
        float _2534 = _2533.w;
        float3 _2556 = float3(((_2533.xy / _2534.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_2534 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _2571 = 0.0f.xxxx;
        if (_2515)
        {
            float4 _2570 = 0.0f.xxxx;
            if (_336)
            {
                _2570 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _2556, 0.0f);
            }
            else
            {
                _2570 = OpaqueBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _2556, 0.0f);
            }
            _2571 = _2570;
        }
        else
        {
            _2571 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _2583 = float4(_2571.xyz + (in_var_TEXCOORD7.xyz * _2571.w), _2571.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _2583 = in_var_TEXCOORD7;
    }
    float3 _2590 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[31].yzw, Material_Material_PreshaderBuffer[31].x.xxx), 0.0f.xxx);
    float3 _2647 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _2621 = abs(((_442 - asfloat(View_PrimitiveSceneData.Load4((_1215 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_443 - asfloat(View_PrimitiveSceneData.Load4((_1215 + 19u) * 16 + 0)).xyz));
        float3 _2622 = float3(asfloat(View_PrimitiveSceneData.Load4((_1215 + 18u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_1215 + 25u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_1215 + 26u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _2646 = 0.0f.xxx;
        if (any(bool3(_2621.x > _2622.x, _2621.y > _2622.y, _2621.z > _2622.z)))
        {
            float3 _2642 = frac(frac(((_442.x + _442.y) + _442.z) * 2420.113525390625f) + (((_443.x + _443.y) + _443.z) * 0.001154000055976212024688720703125f)).xxx;
            _2646 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2642.x > 0.5f.xxx.x, _2642.y > 0.5f.xxx.y, _2642.z > 0.5f.xxx.z)));
        }
        else
        {
            _2646 = _2590;
        }
        _2647 = _2646;
    }
    else
    {
        _2647 = _2590;
    }
    float4 _2658 = float4((((lerp((float4(_2364.x ? 0.0f.xxxx.x : _1902.x, _2364.y ? 0.0f.xxxx.y : _1902.y, _2364.z ? 0.0f.xxxx.z : _1902.z, _2364.w ? 0.0f.xxxx.w : _1902.w).xyz + float4(_2364.x ? 0.0f.xxxx.x : _1905.x, _2364.y ? 0.0f.xxxx.y : _1905.y, _2364.z ? 0.0f.xxxx.z : _1905.z, _2364.w ? 0.0f.xxxx.w : _1905.w).xyz) + (((((_2452.xyz * lerp(1.0f, min((dot(_1441, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * _1592) / max(ReflectionCapture_ReflectionCapture_CaptureOffsetAndAverageBrightness[_2373].w * dot(View_View_PrecomputedIndirectSpecularColorScale, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)), 9.9999997473787516355514526367188e-05f), View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp((_1264 * View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x) + View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y, 0.0f, 1.0f)))).xyz + (_2453 * _2452.w)).xyz * ((_1309 * _2487.x) + (clamp(50.0f * _1309.y, 0.0f, 1.0f) * _2487.y).xxx)) * _1592) * max(_1602, ((((((_1309 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1214) + ((_1309 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1214) + ((_1309 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1214)), _1307 + (_1309 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + (((_1441 * _1592) * _1307) * max(_1602, ((((((_1267 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1214) + ((_1267 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1214) + ((_1267 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1214))) + _2647) * _2583.w) + _2583.xyz, 0.0f);
    _2658.w = 0.0f;
    out_var_SV_Target0 = _2658 * View_View_PreExposure;
    gl_SampleMask = int(_1205);
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
