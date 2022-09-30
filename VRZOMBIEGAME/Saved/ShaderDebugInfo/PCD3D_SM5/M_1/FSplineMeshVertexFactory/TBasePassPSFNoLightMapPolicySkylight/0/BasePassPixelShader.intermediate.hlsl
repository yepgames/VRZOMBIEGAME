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
    float3 View_View_PrecomputedIndirectSpecularColorScale : packoffset(c155);
    float View_View_RenderingReflectionCaptureMask : packoffset(c178.w);
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

static float _299 = 0.0f;
static float _302 = 0.0f;
static float3 _303 = 0.0f.xxx;

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
    bool _340 = false;
    float _337 = 1.0f / gl_FragCoord.w;
    float4x4 _404 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _405 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _406 = 0.0f.xxx;
    float4 _407 = 0.0f.xxxx;
    float4 _408 = 0.0f.xxxx;
    float4 _409 = 0.0f.xxxx;
    int _410 = 0;
    float4 _411 = 0.0f.xxxx;
    float2 _412 = 0.0f.xx;
    float4 _413 = 0.0f.xxxx;
    float4x4 _414 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _415 = 0.0f.xxx;
    float3 _416 = 0.0f.xxx;
    float3 _417 = 0.0f.xxx;
    do
    {
        _340 = in_var_PACKED_EYE_INDEX == 0u;
        if (_340)
        {
            _404 = View_View_ViewToClip;
            _405 = View_View_SVPositionToTranslatedWorld;
            _406 = View_View_ViewForward;
            _407 = View_View_ScreenPositionScaleBias;
            _408 = View_View_ViewRectMin;
            _409 = View_View_ViewSizeAndInvSize;
            _410 = View_View_NumSceneColorMSAASamples;
            _411 = View_View_NormalOverrideParameter;
            _412 = View_View_RoughnessOverrideParameter;
            _413 = View_View_SkyLightColor;
            _414 = View_View_RelativeWorldToClip;
            _415 = -View_View_MatrixTilePosition;
            _416 = -View_View_ViewTilePosition;
            _417 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _404 = InstancedView_InstancedView_ViewToClip;
            _405 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _406 = InstancedView_InstancedView_ViewForward;
            _407 = InstancedView_InstancedView_ScreenPositionScaleBias;
            _408 = InstancedView_InstancedView_ViewRectMin;
            _409 = InstancedView_InstancedView_ViewSizeAndInvSize;
            _410 = InstancedView_InstancedView_NumSceneColorMSAASamples;
            _411 = InstancedView_InstancedView_NormalOverrideParameter;
            _412 = InstancedView_InstancedView_RoughnessOverrideParameter;
            _413 = InstancedView_InstancedView_SkyLightColor;
            _414 = InstancedView_InstancedView_RelativeWorldToClip;
            _415 = -InstancedView_InstancedView_MatrixTilePosition;
            _416 = -InstancedView_InstancedView_ViewTilePosition;
            _417 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float3x3 _426 = float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz);
    float2 _429 = gl_FragCoord.xy - _408.xy;
    float4 _437 = float4(((_429 * _409.zw) - 0.5f.xx) * float2(2.0f, -2.0f), _302, 1.0f) * _337;
    float4 _442 = mul(float4(gl_FragCoord.xyz, 1.0f), _405);
    float3 _446 = _442.xyz / _442.w.xxx;
    float3 _447 = -_416;
    float3 _448 = _446 - _417;
    float3 _457 = 0.0f.xxx;
    if (_404[3].w >= 1.0f)
    {
        _457 = -_406;
    }
    else
    {
        _457 = normalize(-_446);
    }
    float2 _458 = (-0.5f).xx + float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y);
    float2 _462 = float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[1].x.xx;
    float2 _463 = ddy(_462);
    float2 _464 = ddx(_462);
    float3 _465 = mul(_426, _457);
    float2 _474 = Material_Material_PreshaderBuffer[1].y.xx * ((_465.xy * (-1.0f).xx) / _465.z.xx);
    float2 _479 = _462 + (_474 * Material_Material_PreshaderBuffer[2].x.xx);
    float2 _483 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float2 _487 = _483 + View_View_TemporalAAParams.x.xx;
    float4 _502 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _483 * 0.015625f.xx, View_View_MaterialTextureMipBias);
    float _510 = lerp(Material_Material_PreshaderBuffer[2].z, Material_Material_PreshaderBuffer[2].y, (float((uint(_487.x) + (2u * uint(_487.y))) % 5u) + _502.x) * 0.16666667163372039794921875f);
    float _520 = lerp(Material_Material_PreshaderBuffer[2].w * _510, Material_Material_PreshaderBuffer[3].x * _510, clamp(abs(dot(_457, in_var_TEXCOORD11_centroid.xyz)), 0.0f, 1.0f));
    float _521 = floor(_520);
    float _522 = 1.0f / _520;
    float2 _524 = _474 * _522.xx;
    float2 _525 = ddx(_479);
    float2 _526 = ddy(_479);
    float _532_copy;
    float2 _535 = 0.0f.xx;
    _535 = 0.0f.xx;
    float _533 = 0.0f;
    float2 _536 = 0.0f.xx;
    int _538 = 0;
    float _540 = 0.0f;
    float2 _559 = 0.0f.xx;
    float _532 = 1.0f;
    int _537 = 0;
    float _539 = 1.0f;
    float _541 = 1.0f;
    for (;;)
    {
        if (float(_537) < (_521 + 2.0f))
        {
            _540 = dot(Material_Material_PreshaderBuffer[6], Material_Texture2D_1.SampleGrad(Material_Texture2D_1Sampler, _479 + _535, _525, _526));
            if (_532 < _540)
            {
                float _554 = _540 - _532;
                _559 = _535 - (_524 * (_554 / ((_541 - _539) + _554)));
                break;
            }
            _533 = _532 - _522;
            _536 = _535 + _524;
            _538 = _537 + 1;
            _532_copy = _532;
            _532 = _533;
            _535 = _536;
            _537 = _538;
            _539 = _540;
            _541 = _532_copy;
            continue;
        }
        else
        {
            _559 = _535;
            break;
        }
    }
    float2 _561 = _479 + _559.xy;
    float2 _564 = View_View_MaterialTextureDerivativeMultiply.xx;
    float2 _573 = (Material_Texture2D_2.SampleGrad(Material_Texture2D_2Sampler, _561, _464 * _564, _463 * _564).xy * 2.0f.xx) - 1.0f.xx;
    float4 _595 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, Material_Material_PreshaderBuffer[7].w.xx * float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _612 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[8].z, Material_Material_PreshaderBuffer[8].y, ((in_var_COLOR0.y * Material_Material_PreshaderBuffer[7].z).xxx * (in_var_COLOR0.y.xxx + (_595.xyz * Material_Material_PreshaderBuffer[8].x.xxx))).x), 0.0f, 1.0f), 0.0f, 1.0f);
    float2 _613 = (-0.5f).xx + in_var_TEXCOORD0[0].zw;
    float2 _629 = ((0.5f.xx + float2(dot(_613, Material_Material_PreshaderBuffer[10].xy), dot(_613, Material_Material_PreshaderBuffer[10].zw))) + Material_Material_PreshaderBuffer[11].zw) * Material_Material_PreshaderBuffer[13].yz;
    float2 _630 = ddy(_629);
    float2 _631 = ddx(_629);
    float2 _640 = (Material_Texture2D_4.SampleGrad(Material_Texture2D_4Sampler, _629, _631 * _564, _630 * _564).xy * 2.0f.xx) - 1.0f.xx;
    float2 _668 = ((0.5f.xx + float2(dot(_613, Material_Material_PreshaderBuffer[15].yz), dot(_613, Material_Material_PreshaderBuffer[16].xy))) + Material_Material_PreshaderBuffer[17].xy) * Material_Material_PreshaderBuffer[19].xy;
    float2 _669 = ddy(_668);
    float2 _670 = ddx(_668);
    float2 _674 = _668 * Material_Material_PreshaderBuffer[19].z.xx;
    float2 _675 = _670 * _564;
    float2 _676 = _669 * _564;
    float2 _683 = (Material_Texture2D_5.SampleGrad(Material_Texture2D_5Sampler, _674, _675, _676).xy * 2.0f.xx) - 1.0f.xx;
    float4 _697 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _698 = _697.x;
    float4 _709 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, Material_Material_PreshaderBuffer[20].z.xx * float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _726 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[21].y, Material_Material_PreshaderBuffer[21].x, ((_698 * Material_Material_PreshaderBuffer[20].y).xxx * (_698.xxx + (_709.xyz * Material_Material_PreshaderBuffer[20].w.xxx))).x), 0.0f, 1.0f), 0.0f, 1.0f);
    float3 _729 = _726.xxx;
    float2 _734 = _668 * Material_Material_PreshaderBuffer[21].z.xx;
    float2 _741 = (Material_Texture2D_8.SampleGrad(Material_Texture2D_8Sampler, _734, _675, _676).xy * 2.0f.xx) - 1.0f.xx;
    float _762 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[22].z, Material_Material_PreshaderBuffer[22].y, _697.y), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[22].w, 0.0f, 1.0f);
    float3 _764 = _762.xxx;
    float2 _769 = _668 * Material_Material_PreshaderBuffer[23].x.xx;
    float2 _776 = (Material_Texture2D_9.SampleGrad(Material_Texture2D_9Sampler, _769, _675, _676).xy * 2.0f.xx) - 1.0f.xx;
    float _797 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[24].x, Material_Material_PreshaderBuffer[23].w, _697.z), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[24].y, 0.0f, 1.0f);
    float3 _799 = _797.xxx;
    float2 _804 = _668 * Material_Material_PreshaderBuffer[24].z.xx;
    float2 _811 = (Material_Texture2D_10.SampleGrad(Material_Texture2D_10Sampler, _804, _675, _676).xy * 2.0f.xx) - 1.0f.xx;
    float _832 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[25].z, Material_Material_PreshaderBuffer[25].y, _697.w), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[25].w, 0.0f, 1.0f);
    float3 _834 = _832.xxx;
    float3 _835 = lerp(lerp(lerp(lerp(float3(_640.x * Material_Material_PreshaderBuffer[13].w, _640.y * Material_Material_PreshaderBuffer[13].w, sqrt(clamp(1.0f - dot(_640, _640), 0.0f, 1.0f))), float3(_683.x * Material_Material_PreshaderBuffer[19].w, _683.y * Material_Material_PreshaderBuffer[19].w, sqrt(clamp(1.0f - dot(_683, _683), 0.0f, 1.0f))), _729), float3(_741.x * Material_Material_PreshaderBuffer[21].w, _741.y * Material_Material_PreshaderBuffer[21].w, sqrt(clamp(1.0f - dot(_741, _741), 0.0f, 1.0f))), _764), float3(_776.x * Material_Material_PreshaderBuffer[23].y, _776.y * Material_Material_PreshaderBuffer[23].y, sqrt(clamp(1.0f - dot(_776, _776), 0.0f, 1.0f))), _799), float3(_811.x * Material_Material_PreshaderBuffer[24].w, _811.y * Material_Material_PreshaderBuffer[24].w, sqrt(clamp(1.0f - dot(_811, _811), 0.0f, 1.0f))), _834);
    float _837 = _835.z + 1.0f;
    float2 _855 = ((0.5f.xx + float2(dot(_458, Material_Material_PreshaderBuffer[27].yz), dot(_458, Material_Material_PreshaderBuffer[28].xy))) + Material_Material_PreshaderBuffer[29].xy) * Material_Material_PreshaderBuffer[31].xy;
    float2 _856 = ddy(_855);
    float2 _857 = ddx(_855);
    float2 _866 = (Material_Texture2D_11.SampleGrad(Material_Texture2D_11Sampler, _855, _857 * _564, _856 * _564).xy * 2.0f.xx) - 1.0f.xx;
    float3 _882 = float3(_835.xy, _837);
    float3 _885 = float3(float3(_866.x * Material_Material_PreshaderBuffer[31].z, _866.y * Material_Material_PreshaderBuffer[31].z, _299).xy * (-1.0f).xx, sqrt(clamp(1.0f - dot(_866, _866), 0.0f, 1.0f)));
    float3 _891 = (_882 * dot(_882, _885).xxx) - (_837.xxx * _885);
    float3 _892 = _612.xxx;
    float3 _904 = normalize(mul(normalize((lerp(lerp(float3(_573.x * Material_Material_PreshaderBuffer[7].x, _573.y * Material_Material_PreshaderBuffer[7].x, sqrt(clamp(1.0f - dot(_573, _573), 0.0f, 1.0f))), _892 * _891, _892), _891, _892) * _411.w) + _411.xyz), _426)) * 1.0f;
    float4 _915 = Material_Texture2D_12.Sample(View_MaterialTextureBilinearWrapedSampler, _561);
    float3 _920 = _915.xyz * Material_Material_PreshaderBuffer[34].z.xxx;
    float3 _926 = lerp(_920, dot(_920, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[34].w.xxx);
    float3 _927 = normalize(1.0f.xxx);
    float _930 = _927.x;
    float3 _934 = float4(_930, _927.yz, Material_Material_PreshaderBuffer[34].y).xyz;
    float3 _936 = _934 * dot(_934, _926);
    float3 _937 = _926 - _936;
    float4 _951 = Material_Texture2D_13.Sample(View_MaterialTextureBilinearWrapedSampler, _629);
    float3 _956 = _951.xyz * Material_Material_PreshaderBuffer[37].z.xxx;
    float3 _962 = lerp(_956, dot(_956, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[37].w.xxx);
    float3 _966 = float4(_930, _927.yz, Material_Material_PreshaderBuffer[37].y).xyz;
    float3 _968 = _966 * dot(_966, _962);
    float3 _969 = _962 - _968;
    float4 _983 = Material_Texture2D_14.Sample(View_MaterialTextureBilinearWrapedSampler, _674);
    float3 _988 = _983.xyz * Material_Material_PreshaderBuffer[40].z.xxx;
    float3 _994 = lerp(_988, dot(_988, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[40].w.xxx);
    float3 _998 = float4(_930, _927.yz, Material_Material_PreshaderBuffer[40].y).xyz;
    float3 _1000 = _998 * dot(_998, _994);
    float3 _1001 = _994 - _1000;
    float4 _1016 = Material_Texture2D_15.Sample(View_MaterialTextureBilinearWrapedSampler, _734);
    float3 _1021 = _1016.xyz * Material_Material_PreshaderBuffer[43].z.xxx;
    float3 _1027 = lerp(_1021, dot(_1021, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[43].w.xxx);
    float3 _1031 = float4(_930, _927.yz, Material_Material_PreshaderBuffer[43].y).xyz;
    float3 _1033 = _1031 * dot(_1031, _1027);
    float3 _1034 = _1027 - _1033;
    float4 _1049 = Material_Texture2D_16.Sample(View_MaterialTextureBilinearWrapedSampler, _769);
    float3 _1054 = _1049.xyz * Material_Material_PreshaderBuffer[46].z.xxx;
    float3 _1060 = lerp(_1054, dot(_1054, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[46].w.xxx);
    float3 _1064 = float4(_930, _927.yz, Material_Material_PreshaderBuffer[46].y).xyz;
    float3 _1066 = _1064 * dot(_1064, _1060);
    float3 _1067 = _1060 - _1066;
    float4 _1082 = Material_Texture2D_17.Sample(View_MaterialTextureBilinearWrapedSampler, _804);
    float3 _1087 = _1082.xyz * Material_Material_PreshaderBuffer[49].z.xxx;
    float3 _1093 = lerp(_1087, dot(_1087, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[49].w.xxx);
    float3 _1097 = float4(_930, _927.yz, Material_Material_PreshaderBuffer[49].y).xyz;
    float3 _1099 = _1097 * dot(_1097, _1093);
    float3 _1100 = _1093 - _1099;
    float3 _1112 = lerp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[38].xyz * (_968 + ((_969 * cos(Material_Material_PreshaderBuffer[37].y)) + (cross(_966, _969) * sin(Material_Material_PreshaderBuffer[37].y)))), Material_Material_PreshaderBuffer[41].xyz * (_1000 + ((_1001 * cos(Material_Material_PreshaderBuffer[40].y)) + (cross(_998, _1001) * sin(Material_Material_PreshaderBuffer[40].y)))), _729), Material_Material_PreshaderBuffer[44].xyz * (_1033 + ((_1034 * cos(Material_Material_PreshaderBuffer[43].y)) + (cross(_1031, _1034) * sin(Material_Material_PreshaderBuffer[43].y)))), _764), Material_Material_PreshaderBuffer[47].xyz * (_1066 + ((_1067 * cos(Material_Material_PreshaderBuffer[46].y)) + (cross(_1064, _1067) * sin(Material_Material_PreshaderBuffer[46].y)))), _799), Material_Material_PreshaderBuffer[50].xyz * (_1099 + ((_1100 * cos(Material_Material_PreshaderBuffer[49].y)) + (cross(_1097, _1100) * sin(Material_Material_PreshaderBuffer[49].y)))), _834);
    float4 _1118 = Material_Texture2D_18.Sample(View_MaterialTextureBilinearWrapedSampler, _629);
    float _1119 = _1118.z;
    float4 _1127 = Material_Texture2D_19.Sample(View_MaterialTextureBilinearWrapedSampler, _674);
    float _1128 = _1127.z;
    float4 _1137 = Material_Texture2D_20.Sample(View_MaterialTextureBilinearWrapedSampler, _734);
    float _1138 = _1137.z;
    float4 _1147 = Material_Texture2D_21.Sample(View_MaterialTextureBilinearWrapedSampler, _769);
    float _1148 = _1147.z;
    float4 _1157 = Material_Texture2D_22.Sample(View_MaterialTextureBilinearWrapedSampler, _804);
    float _1158 = _1157.z;
    float _1164 = lerp(lerp(lerp(lerp((_1119 <= 0.0f) ? 0.0f : pow(_1119, Material_Material_PreshaderBuffer[50].w), (_1128 <= 0.0f) ? 0.0f : pow(_1128, Material_Material_PreshaderBuffer[51].x), _726), (_1138 <= 0.0f) ? 0.0f : pow(_1138, Material_Material_PreshaderBuffer[51].y), _762), (_1148 <= 0.0f) ? 0.0f : pow(_1148, Material_Material_PreshaderBuffer[51].z), _797), (_1158 <= 0.0f) ? 0.0f : pow(_1158, Material_Material_PreshaderBuffer[51].w), _832);
    float4 _1170 = Material_Texture2D_23.Sample(View_MaterialTextureBilinearWrapedSampler, _561);
    float _1210 = lerp(lerp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[53].x, Material_Material_PreshaderBuffer[52].w, _1118.y), lerp(Material_Material_PreshaderBuffer[53].z, Material_Material_PreshaderBuffer[53].y, _1127.y), _726), lerp(Material_Material_PreshaderBuffer[54].x, Material_Material_PreshaderBuffer[53].w, _1137.y), _762), lerp(Material_Material_PreshaderBuffer[54].z, Material_Material_PreshaderBuffer[54].y, _1147.y), _797), lerp(Material_Material_PreshaderBuffer[55].x, Material_Material_PreshaderBuffer[54].w, _1157.y), _832);
    float _1218 = lerp(_951.w, 1.0f, 0.5f) * Material_Material_PreshaderBuffer[55].y;
    float _1219 = _1170.x;
    float _1225 = _1118.x;
    float _1231 = _1127.x;
    float _1238 = _1137.x;
    float _1245 = _1147.x;
    float _1252 = _1157.x;
    float _1258 = lerp(lerp(lerp(lerp((_1225 <= 0.0f) ? 0.0f : pow(_1225, Material_Material_PreshaderBuffer[55].w), (_1231 <= 0.0f) ? 0.0f : pow(_1231, Material_Material_PreshaderBuffer[56].x), _726), (_1238 <= 0.0f) ? 0.0f : pow(_1238, Material_Material_PreshaderBuffer[56].y), _762), (_1245 <= 0.0f) ? 0.0f : pow(_1245, Material_Material_PreshaderBuffer[56].z), _797), (_1252 <= 0.0f) ? 0.0f : pow(_1252, Material_Material_PreshaderBuffer[56].w), _832);
    uint _1288 = 0u;
    do
    {
        if (_410 > 1)
        {
            float _1270 = (_1218 - 0.33329999446868896484375f) * 1.49992501735687255859375f;
            uint _1278 = (_1270 > 0.75f) ? 15u : ((_1270 > 0.5f) ? 13u : ((_1270 > 0.25f) ? 9u : ((_1270 > 0.00999999977648258209228515625f) ? 8u : 0u)));
            if ((float(_1278) - 0.5f) < 0.0f)
            {
                discard;
            }
            _1288 = _1278;
            break;
        }
        if ((_1218 - 0.33329999446868896484375f) < 0.0f)
        {
            discard;
        }
        _1288 = 15u;
        break;
    } while(false);
    float3 _1289 = clamp(lerp(lerp(Material_Material_PreshaderBuffer[35].xyz * (_936 + ((_937 * cos(Material_Material_PreshaderBuffer[34].y)) + (cross(_934, _937) * sin(Material_Material_PreshaderBuffer[34].y)))), _892 * _1112, _892), _1112, _892), 0.0f.xxx, 1.0f.xxx);
    float _1290 = clamp(lerp(lerp(0.0f, _612 * _1164, _612), _1164, _612), 0.0f, 1.0f);
    float _1291 = clamp(Material_Material_PreshaderBuffer[52].x, 0.0f, 1.0f);
    float _1296 = (clamp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[52].z, Material_Material_PreshaderBuffer[52].y, _1170.y), _612 * _1210, _612), _1210, _612), 0.0f, 1.0f) * _412.y) + _412.x;
    float _1297 = clamp(lerp(lerp((_1219 <= 0.0f) ? 0.0f : pow(_1219, Material_Material_PreshaderBuffer[55].z), _612 * _1258, _612), _1258, _612), 0.0f, 1.0f);
    uint _1298 = in_var_PRIMITIVE_ID * 40u;
    float _1346 = 0.0f;
    float _1347 = 0.0f;
    float _1348 = 0.0f;
    float3 _1349 = 0.0f.xxx;
    float3 _1350 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_1298 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _1314 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _1318 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1314, 0.0f);
        float4 _1321 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1314, 0.0f);
        float4 _1324 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1314, 0.0f);
        float _1334 = _1324.w;
        _1346 = (_1296 * _1334) + _1324.z;
        _1347 = (_1291 * _1334) + _1324.y;
        _1348 = (_1290 * _1334) + _1324.x;
        _1349 = (_1289 * _1318.w) + _1318.xyz;
        _1350 = normalize((_904 * _1321.w) + ((_1321.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _1346 = _1296;
        _1347 = _1291;
        _1348 = _1290;
        _1349 = _1289;
        _1350 = _904;
    }
    uint _1353 = asuint(asfloat(View_PrimitiveSceneData.Load4(_1298 * 16 + 0)).x);
    float _1362 = _437.w;
    float _1413 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_1298 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _1381 = clamp((((_447 * 2097152.0f) + _448) * View_View_VolumetricLightmapWorldToUVScale) + View_View_VolumetricLightmapWorldToUVAdd, 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _1392 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_1381.x), int(_1381.y), int(_1381.z), 0).xyz, 0)));
        _1413 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_1392.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_1381 / _1392.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _1413 = 1.0f;
    }
    float4 _1414 = float4(_1413, 1.0f, 1.0f, 1.0f);
    float3 _1427 = ((_1349 - (_1349 * _1348)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _1434 = (lerp((0.07999999821186065673828125f * _1347).xxx, _1349, _1348.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _1437 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _1442 = 0.0f.xxx;
    if (_1437)
    {
        _1442 = _1427 + (_1434 * 0.449999988079071044921875f);
    }
    else
    {
        _1442 = _1427;
    }
    bool3 _1443 = _1437.xxx;
    float3 _1444 = float3(_1443.x ? 0.0f.xxx.x : _1434.x, _1443.y ? 0.0f.xxx.y : _1434.y, _1443.z ? 0.0f.xxx.z : _1434.z);
    float3 _1494 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _1453 = float4(_1350, 1.0f);
        float3 _1457 = _303;
        _1457.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _1453);
        float3 _1461 = _1457;
        _1461.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _1453);
        float3 _1465 = _1461;
        _1465.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _1453);
        float4 _1468 = _1453.xyzz * _1453.yzzx;
        float3 _1472 = _303;
        _1472.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _1468);
        float3 _1476 = _1472;
        _1476.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _1468);
        float3 _1480 = _1476;
        _1480.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _1468);
        _1494 = (max(0.0f.xxx, (_1465 + _1480) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * ((_1350.x * _1350.x) - (_1350.y * _1350.y)))) * _413.xyz) * 1.0f;
    }
    else
    {
        _1494 = 0.0f.xxx;
    }
    float2 _1501 = ((_437.xy / _1362.xx) * _407.xy) + _407.wz;
    float2 _1620 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _1512 = int2(trunc(_1501 * View_View_BufferSizeAndInvSize.xy));
        int _1513 = _1512.x;
        int _1514 = _1512.y;
        float4 _1518 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1513, _1514, 0).xy, 0));
        float _1519 = _1518.x;
        float2 _1619 = 0.0f.xx;
        if ((abs((((_1519 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1519 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1362) / _1362) > 0.00999999977648258209228515625f)
        {
            float2 _1543 = _1501 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _1547 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1513 - 1, _1514, 0).xy, 0));
            float _1548 = _1547.x;
            float _1556 = abs((((_1548 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1548 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1362);
            bool _1557 = _1556 < 100000000.0f;
            bool2 _1558 = _1557.xx;
            float2 _1559 = float2(_1558.x ? _1543.x : _1501.x, _1558.y ? _1543.y : _1501.y);
            float _1560 = _1557 ? _1556 : 100000000.0f;
            float2 _1563 = _1501 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _1567 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1513, _1514 + 1, 0).xy, 0));
            float _1568 = _1567.x;
            float _1576 = abs((((_1568 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1568 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1362);
            bool _1577 = _1576 < _1560;
            bool2 _1578 = _1577.xx;
            float2 _1579 = float2(_1578.x ? _1563.x : _1559.x, _1578.y ? _1563.y : _1559.y);
            float _1580 = _1577 ? _1576 : _1560;
            float2 _1582 = _1501 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _1586 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1513 + 1, _1514, 0).xy, 0));
            float _1587 = _1586.x;
            float _1595 = abs((((_1587 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1587 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1362);
            bool _1596 = _1595 < _1580;
            bool2 _1597 = _1596.xx;
            float2 _1598 = float2(_1597.x ? _1582.x : _1579.x, _1597.y ? _1582.y : _1579.y);
            float2 _1602 = _1501 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _1606 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1513, _1514 - 1, 0).xy, 0));
            float _1607 = _1606.x;
            bool2 _1617 = (abs((((_1607 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1607 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1362) < (_1596 ? _1595 : _1580)).xx;
            _1619 = float2(_1617.x ? _1602.x : _1598.x, _1617.y ? _1602.y : _1598.y);
        }
        else
        {
            _1619 = _1501;
        }
        _1620 = _1619;
    }
    else
    {
        _1620 = _1501;
    }
    uint _1626_dummy_parameter;
    uint2 _1626 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _1626_dummy_parameter);
    float _1644 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_1620 * float2(float(_1626.x), float(_1626.y)))), 0).xy, 0)).x, ((uint(((2.0f * float((_1353 & 128u) != 0u)) + float((_1353 & 256u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _1653 = _1297.xxx;
    uint _1681 = 0u;
    float3 _1682 = 0.0f.xxx;
    int3 _1683 = int3(0, 0, 0);
    [branch]
    if (_340)
    {
        _1681 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift;
        _1682 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams;
        _1683 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _1681 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
        _1682 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridZParams;
        _1683 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint2 _1699 = uint2(_429 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (_1681.xx & uint2(31u, 31u));
    int3 _1709 = int3(0, 0, 0);
    [branch]
    if (_340)
    {
        _1709 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _1709 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint _1717 = (((min(uint(max(0.0f, log2((_337 * _1682.x) + _1682.y) * _1682.z)), uint(_1683.z - 1)) * uint(_1709.y)) + _1699.y) * uint(_1709.x)) + _1699.x;
    float4 _1735 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _1735 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_1620 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _1735 = 1.0f.xxxx;
    }
    float4 _1736 = _1735 * _1735;
    uint _1739 = asuint(asfloat(View_PrimitiveSceneData.Load4(_1298 * 16 + 0)).x);
    uint _1752 = (uint((_1739 & 1024u) != 0u) | (uint((_1739 & 2048u) != 0u) << 1u)) | (uint((_1739 & 4096u) != 0u) << 2u);
    uint _1776 = 0u;
    uint _1777 = 0u;
    float2 _1778 = 0.0f.xx;
    float3 _1779 = 0.0f.xxx;
    float3 _1780 = 0.0f.xxx;
    [branch]
    if (_340)
    {
        _1776 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight;
        _1777 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
        _1778 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
        _1779 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor;
        _1780 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection;
    }
    else
    {
        _1776 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_HasDirectionalLight;
        _1777 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
        _1778 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
        _1779 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightColor;
        _1780 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDirection;
    }
    float4 _1920 = 0.0f.xxxx;
    float4 _1921 = 0.0f.xxxx;
    [branch]
    if (_1776 != 0u)
    {
        float4 _1799 = float4(float((_1777 & 1u) != 0u), float((_1777 & 2u) != 0u), float((_1777 & 4u) != 0u), float((_1777 & 8u) != 0u));
        uint _1800 = _1777 >> 4u;
        float _1814 = dot(float4(float((_1800 & 1u) != 0u), float((_1800 & 2u) != 0u), float((_1800 & 4u) != 0u), float((_1800 & 8u) != 0u)), _1736);
        bool _1816 = _1778.y < 0.0f;
        float _1817 = _1816 ? 1.0f : _1814;
        float _1834 = 0.0f;
        float _1835 = 0.0f;
        [branch]
        if (uint((_1777 & 255u) != 0u) != 0u)
        {
            float _1828 = clamp((_1362 * _1778.x) + _1778.y, 0.0f, 1.0f);
            float _1830 = lerp(_1816 ? _1814 : 1.0f, lerp(1.0f, dot(_1414, _1799), dot(_1799, 1.0f.xxxx)), _1828 * _1828);
            _1834 = min(_1830, _1817) * _1817;
            _1835 = _1830 * _1817;
        }
        else
        {
            _1834 = 1.0f;
            _1835 = 1.0f;
        }
        float3 _1904 = 0.0f.xxx;
        float3 _1905 = 0.0f.xxx;
        [branch]
        if ((_1835 + _1834) > 0.0f)
        {
            float _1842 = max(_1346, View_View_MinRoughness);
            float3 _1845 = _1780 * rsqrt(dot(_1780, _1780));
            float _1846 = dot(_1350, _1845);
            float _1847 = clamp(_1846, 0.0f, 1.0f);
            float _1848 = dot(_1350, _457);
            float _1849 = dot(_457, _1845);
            float _1852 = rsqrt(2.0f + (2.0f * _1849));
            float _1855 = clamp((_1846 + _1848) * _1852, 0.0f, 1.0f);
            float _1861 = clamp(abs(_1848) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float3 _1863 = 1.0f.xxx * _1847;
            float _1865 = _1842 * _1842;
            float _1866 = _1865 * _1865;
            float _1870 = (((_1855 * _1866) - _1855) * _1855) + 1.0f;
            float _1874 = sqrt(_1866);
            float _1875 = 1.0f - _1874;
            float _1884 = 1.0f - clamp(_1852 + (_1852 * _1849), 0.0f, 1.0f);
            float _1885 = _1884 * _1884;
            float _1887 = (_1885 * _1885) * _1884;
            float3 _1901 = (_1779 * 1.0f) * _1835;
            _1904 = ((_1442 * 0.3183098733425140380859375f) * _1863) * _1901;
            _1905 = ((_1863 * (((clamp(50.0f * _1444.y, 0.0f, 1.0f) * _1887).xxx + (_1444 * (1.0f - _1887))) * ((_1866 / ((3.1415927410125732421875f * _1870) * _1870)) * (0.5f / ((_1847 * ((_1861 * _1875) + _1874)) + (_1861 * ((_1847 * _1875) + _1874))))))) * 1.0f) * _1901;
        }
        else
        {
            _1904 = 0.0f.xxx;
            _1905 = 0.0f.xxx;
        }
        float4 _1909 = float4(_1904, 0.0f);
        float4 _1913 = float4(_1905, 0.0f);
        bool4 _1917 = (((_1777 >> 8u) & _1752) != 0u).xxxx;
        _1920 = float4(_1917.x ? _1909.x : 0.0f.xxxx.x, _1917.y ? _1909.y : 0.0f.xxxx.y, _1917.z ? _1909.z : 0.0f.xxxx.z, _1917.w ? _1909.w : 0.0f.xxxx.w);
        _1921 = float4(_1917.x ? _1913.x : 0.0f.xxxx.x, _1917.y ? _1913.y : 0.0f.xxxx.y, _1917.z ? _1913.z : 0.0f.xxxx.z, _1917.w ? _1913.w : 0.0f.xxxx.w);
    }
    else
    {
        _1920 = 0.0f.xxxx;
        _1921 = 0.0f.xxxx;
    }
    uint _1945 = 0u;
    uint _1946 = 0u;
    [branch]
    if (_340)
    {
        uint _1935 = _1717 * 2u;
        _1945 = min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1935).x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
        _1946 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1935 + 1u).x;
    }
    else
    {
        uint _1925 = _1717 * 2u;
        _1945 = min(OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1925).x, OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights);
        _1946 = OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1925 + 1u).x;
    }
    uint _1952 = min(_1945, (_340 ? OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights : OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights));
    float4 _1954 = 0.0f.xxxx;
    float4 _1957 = 0.0f.xxxx;
    _1954 = _1920;
    _1957 = _1921;
    float4 _1955 = 0.0f.xxxx;
    float4 _1958 = 0.0f.xxxx;
    [loop]
    for (uint _1959 = 0u; _1959 < _1952; _1954 = _1955, _1957 = _1958, _1959++)
    {
        uint _1964 = _1946 + _1959;
        float4 _1996 = 0.0f.xxxx;
        float4 _1997 = 0.0f.xxxx;
        float4 _1998 = 0.0f.xxxx;
        float4 _1999 = 0.0f.xxxx;
        float4 _2000 = 0.0f.xxxx;
        [branch]
        if (_340)
        {
            uint _1985 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid.Load(_1964).x * 6u;
            _1996 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1985);
            _1997 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1985 + 1u);
            _1998 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1985 + 3u);
            _1999 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1985 + 2u);
            _2000 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1985 + 4u);
        }
        else
        {
            uint _1971 = OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid.Load(_1964).x * 6u;
            _1996 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1971);
            _1997 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1971 + 1u);
            _1998 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1971 + 3u);
            _1999 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1971 + 2u);
            _2000 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1971 + 4u);
        }
        float2 _2009 = spvUnpackHalf2x16(asuint(_1998.w));
        float _2010 = _2009.x;
        bool _2013 = _1997.w == 0.0f;
        uint _2017 = asuint(_1999.w);
        float4 _2033 = float4(float((_2017 & 1u) != 0u), float((_2017 & 2u) != 0u), float((_2017 & 4u) != 0u), float((_2017 & 8u) != 0u));
        uint _2034 = _2017 >> 4u;
        float3 _2049 = _1996.xyz - _446;
        float _2050 = dot(_2049, _2049);
        float _2067 = 0.0f;
        if (_2013)
        {
            float _2062 = _2050 * (_1996.w * _1996.w);
            float _2065 = clamp(1.0f - (_2062 * _2062), 0.0f, 1.0f);
            _2067 = _2065 * _2065;
        }
        else
        {
            float3 _2056 = _2049 * _1996.w;
            _2067 = pow(1.0f - clamp(dot(_2056, _2056), 0.0f, 1.0f), _1997.w);
        }
        float _2077 = 0.0f;
        if (_1998.x > (-2.0f))
        {
            float _2074 = clamp((dot(_2049 * rsqrt(_2050), _1999.xyz) - _1998.x) * _1998.y, 0.0f, 1.0f);
            _2077 = _2067 * (_2074 * _2074);
        }
        else
        {
            _2077 = _2067;
        }
        float3 _2397 = 0.0f.xxx;
        float3 _2398 = 0.0f.xxx;
        [branch]
        if (_2077 > 0.0f)
        {
            float _2088 = 0.0f;
            [branch]
            if (uint((_2017 & 255u) != 0u) != 0u)
            {
                _2088 = dot(float4(float((_2034 & 1u) != 0u), float((_2034 & 2u) != 0u), float((_2034 & 4u) != 0u), float((_2034 & 8u) != 0u)), _1736) * lerp(1.0f, dot(_1414, _2033), dot(_2033, 1.0f.xxxx));
            }
            else
            {
                _2088 = 1.0f;
            }
            float3 _2395 = 0.0f.xxx;
            float3 _2396 = 0.0f.xxx;
            [branch]
            if ((_2088 + _2088) > 0.0f)
            {
                float3 _2094 = _2000.xyz * (0.5f * _2010);
                float3 _2095 = _2049 - _2094;
                float3 _2096 = _2049 + _2094;
                float _2099 = max(_1346, View_View_MinRoughness);
                bool _2100 = _2010 > 0.0f;
                float _2127 = 0.0f;
                float _2128 = 0.0f;
                float _2129 = 0.0f;
                [branch]
                if (_2100)
                {
                    float _2112 = rsqrt(dot(_2095, _2095));
                    float _2113 = rsqrt(dot(_2096, _2096));
                    float _2114 = _2112 * _2113;
                    float _2116 = dot(_2095, _2096) * _2114;
                    _2127 = _2116;
                    _2128 = 0.5f * ((dot(_1350, _2095) * _2112) + (dot(_1350, _2096) * _2113));
                    _2129 = _2114 / (((_2116 * 0.5f) + 0.5f) + _2114);
                }
                else
                {
                    float _2104 = dot(_2095, _2095);
                    _2127 = 1.0f;
                    _2128 = dot(_1350, _2095 * rsqrt(_2104));
                    _2129 = 1.0f / (_2104 + 1.0f);
                }
                float _2147 = 0.0f;
                if (_1998.z > 0.0f)
                {
                    float _2136 = sqrt(clamp((_1998.z * _1998.z) * _2129, 0.0f, 1.0f));
                    float _2146 = 0.0f;
                    if (_2128 < _2136)
                    {
                        float _2142 = _2136 + max(_2128, -_2136);
                        _2146 = (_2142 * _2142) / (4.0f * _2136);
                    }
                    else
                    {
                        _2146 = _2128;
                    }
                    _2147 = _2146;
                }
                else
                {
                    _2147 = _2128;
                }
                float _2148 = clamp(_2147, 0.0f, 1.0f);
                float3 _2166 = 0.0f.xxx;
                if (_2100)
                {
                    float3 _2153 = reflect(-_457, _1350);
                    float3 _2154 = _2096 - _2095;
                    float _2156 = dot(_2153, _2154);
                    _2166 = _2095 + (_2154 * clamp(dot(_2095, (_2153 * _2156) - _2154) / ((_2010 * _2010) - (_2156 * _2156)), 0.0f, 1.0f));
                }
                else
                {
                    _2166 = _2095;
                }
                float _2168 = rsqrt(dot(_2166, _2166));
                float3 _2169 = _2166 * _2168;
                float _2170 = max(_2099, View_View_MinRoughness);
                float _2175 = clamp((_1998.z * _2168) * (1.0f - (_2170 * _2170)), 0.0f, 1.0f);
                float _2177 = clamp(_2000.w * _2168, 0.0f, 1.0f);
                float _2185 = dot(_1350, _2169);
                float _2186 = dot(_1350, _457);
                float _2187 = dot(_457, _2169);
                float _2190 = rsqrt(2.0f + (2.0f * _2187));
                bool _2197 = _2175 > 0.0f;
                float _2292 = 0.0f;
                float _2293 = 0.0f;
                if (_2197)
                {
                    float _2202 = sqrt(1.0f - (_2175 * _2175));
                    float _2204 = (2.0f * _2185) * _2186;
                    float _2205 = _2204 - _2187;
                    float _2290 = 0.0f;
                    float _2291 = 0.0f;
                    if (_2205 >= _2202)
                    {
                        _2290 = 1.0f;
                        _2291 = abs(_2186);
                    }
                    else
                    {
                        float _2213 = _2175 * rsqrt(1.0f - (_2205 * _2205));
                        float _2216 = _2213 * (_2186 - (_2205 * _2185));
                        float _2222 = _2213 * ((((2.0f * _2186) * _2186) - 1.0f) - (_2205 * _2187));
                        float _2233 = _2213 * sqrt(clamp((((1.0f - (_2185 * _2185)) - (_2186 * _2186)) - (_2187 * _2187)) + (_2204 * _2187), 0.0f, 1.0f));
                        float _2235 = (_2233 * 2.0f) * _2186;
                        float _2236 = _2185 * _2202;
                        float _2237 = _2236 + _2186;
                        float _2238 = _2237 + _2216;
                        float _2239 = _2187 * _2202;
                        float _2241 = (_2239 + 1.0f) + _2222;
                        float _2242 = _2233 * _2241;
                        float _2243 = _2238 * _2241;
                        float _2244 = _2235 * _2238;
                        float _2249 = _2243 * (((-0.5f) * _2242) + ((0.25f * _2235) * _2238));
                        float _2263 = ((_2242 * _2242) + (_2244 * (_2244 - (2.0f * _2242)))) + (_2238 * ((_2237 * (_2241 * _2241)) + (_2243 * (((-0.5f) * (_2241 + _2239)) - 0.5f))));
                        float _2268 = (2.0f * _2249) / ((_2263 * _2263) + (_2249 * _2249));
                        float _2269 = _2268 * _2263;
                        float _2271 = 1.0f - (_2268 * _2249);
                        float _2279 = _2239 + ((_2271 * _2222) + (_2269 * _2235));
                        float _2282 = rsqrt(2.0f + (2.0f * _2279));
                        _2290 = clamp(((_2236 + ((_2271 * _2216) + (_2269 * _2233))) + _2186) * _2282, 0.0f, 1.0f);
                        _2291 = clamp(_2282 + (_2282 * _2279), 0.0f, 1.0f);
                    }
                    _2292 = _2290;
                    _2293 = _2291;
                }
                else
                {
                    _2292 = clamp((_2185 + _2186) * _2190, 0.0f, 1.0f);
                    _2293 = clamp(_2190 + (_2190 * _2187), 0.0f, 1.0f);
                }
                float _2296 = clamp(abs(_2186) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _2299 = 1.0f.xxx * ((_2013 ? _2129 : 1.0f) * _2148);
                float3 _2389 = 0.0f.xxx;
                if (((0u | (asuint(clamp(1.0f - (max(_2010, _1998.z) * 0.0500000007450580596923828125f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _2389 = 0.0f.xxx;
                }
                else
                {
                    float _2306 = _2099 * _2099;
                    float _2307 = _2306 * _2306;
                    float _2317 = 0.0f;
                    if (_2177 > 0.0f)
                    {
                        _2317 = clamp(_2307 + ((_2177 * _2177) / ((_2293 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _2317 = _2307;
                    }
                    float _2332 = 0.0f;
                    float _2333 = 0.0f;
                    if (_2197)
                    {
                        float _2330 = _2317 + (((0.25f * _2175) * ((3.0f * asfloat(532487669 + (asint(_2317) >> 1))) + _2175)) / (_2293 + 0.001000000047497451305389404296875f));
                        _2332 = _2317 / _2330;
                        _2333 = _2330;
                    }
                    else
                    {
                        _2332 = 1.0f;
                        _2333 = _2317;
                    }
                    float _2355 = 0.0f;
                    if (_2127 < 1.0f)
                    {
                        float _2340 = sqrt((1.00010001659393310546875f - _2127) / (1.0f + _2127));
                        _2355 = _2332 * sqrt(_2333 / (_2333 + (((0.25f * _2340) * ((3.0f * asfloat(532487669 + (asint(_2333) >> 1))) + _2340)) / (_2293 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _2355 = _2332;
                    }
                    float _2359 = (((_2292 * _2317) - _2292) * _2292) + 1.0f;
                    float _2364 = sqrt(_2317);
                    float _2365 = 1.0f - _2364;
                    float _2374 = 1.0f - _2293;
                    float _2375 = _2374 * _2374;
                    float _2377 = (_2375 * _2375) * _2374;
                    _2389 = _2299 * (((clamp(50.0f * _1444.y, 0.0f, 1.0f) * _2377).xxx + (_1444 * (1.0f - _2377))) * (((_2317 / ((3.1415927410125732421875f * _2359) * _2359)) * _2355) * (0.5f / ((_2148 * ((_2296 * _2365) + _2364)) + (_2296 * ((_2148 * _2365) + _2364))))));
                }
                float3 _2392 = (_1997.xyz * _2077) * _2088;
                _2395 = ((_1442 * 0.3183098733425140380859375f) * _2299) * _2392;
                _2396 = (_2389 * 1.0f) * _2392;
            }
            else
            {
                _2395 = 0.0f.xxx;
                _2396 = 0.0f.xxx;
            }
            _2397 = _2395;
            _2398 = _2396;
        }
        else
        {
            _2397 = 0.0f.xxx;
            _2398 = 0.0f.xxx;
        }
        [flatten]
        if (((_2017 >> 8u) & _1752) != 0u)
        {
            _1955 = _1954 + float4(_2397, 0.0f);
            _1958 = _1957 + float4(_2398, 0.0f);
        }
        else
        {
            _1955 = _1954;
            _1958 = _1957;
        }
    }
    bool4 _2417 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _2426 = int(asuint(asfloat(View_PrimitiveSceneData.Load4(_1298 * 16 + 0)).w));
    float3 _2430 = (_1350 * (2.0f * dot(_457, _1350))) - _457;
    float _2438 = 1.0f - (1.2000000476837158203125f * log2(max(_1346, 0.001000000047497451305389404296875f)));
    float4 _2452 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_2430, ReflectionCapture_ReflectionCapture_CaptureProperties[_2426].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _2438);
    float _2456 = 1.0f - _2452.w;
    float4 _2460 = float4(_2452.xyz * ReflectionCapture_ReflectionCapture_CaptureProperties[_2426].x, _2456);
    float3 _2464 = _2460.xyz * View_View_PrecomputedIndirectSpecularColorScale;
    float4 _2465 = float4(_2464.x, _2464.y, _2464.z, _2460.w);
    float4 _2500 = 0.0f.xxxx;
    float3 _2501 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        float3 _2484 = OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _2430, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _2438).xyz * View_View_SkyLightColor.xyz;
        float4 _2498 = 0.0f.xxxx;
        float3 _2499 = 0.0f.xxx;
        [flatten]
        if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.z < 1.0f) && true)
        {
            float3 _2496 = _2464.xyz + ((_2484 * _2456) * 1.0f);
            _2498 = float4(_2496.x, _2496.y, _2496.z, _2460.w);
            _2499 = 0.0f.xxx;
        }
        else
        {
            _2498 = _2465;
            _2499 = _2484 * 1.0f;
        }
        _2500 = _2498;
        _2501 = _2499;
    }
    else
    {
        _2500 = _2465;
        _2501 = 0.0f.xxx;
    }
    float4 _2522 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _1346) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _2523 = _2522.x;
    float2 _2533 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_2523 * _2523, exp2((-9.27999973297119140625f) * clamp(dot(_1350, _457), 0.0f, 1.0f))) * _2523) + _2522.y)) + _2522.zw;
    bool _2561 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2629 = 0.0f.xxxx;
    if (_2561)
    {
        float4 _2579 = mul(((float4(_447, 0.0f) + float4(_415, 0.0f)) * 2097152.0f) + float4(_448, 1.0f), _414);
        float _2580 = _2579.w;
        float3 _2602 = float3(((_2579.xy / _2580.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_2580 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _2617 = 0.0f.xxxx;
        if (_2561)
        {
            float4 _2616 = 0.0f.xxxx;
            if (_340)
            {
                _2616 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _2602, 0.0f);
            }
            else
            {
                _2616 = OpaqueBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _2602, 0.0f);
            }
            _2617 = _2616;
        }
        else
        {
            _2617 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _2629 = float4(_2617.xyz + (in_var_TEXCOORD7.xyz * _2617.w), _2617.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _2629 = in_var_TEXCOORD7;
    }
    float3 _2636 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[32].xyz, Material_Material_PreshaderBuffer[31].w.xxx), 0.0f.xxx);
    float3 _2693 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _2667 = abs(((_447 - asfloat(View_PrimitiveSceneData.Load4((_1298 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_448 - asfloat(View_PrimitiveSceneData.Load4((_1298 + 19u) * 16 + 0)).xyz));
        float3 _2668 = float3(asfloat(View_PrimitiveSceneData.Load4((_1298 + 18u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_1298 + 25u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_1298 + 26u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _2692 = 0.0f.xxx;
        if (any(bool3(_2667.x > _2668.x, _2667.y > _2668.y, _2667.z > _2668.z)))
        {
            float3 _2688 = frac(frac(((_447.x + _447.y) + _447.z) * 2420.113525390625f) + (((_448.x + _448.y) + _448.z) * 0.001154000055976212024688720703125f)).xxx;
            _2692 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2688.x > 0.5f.xxx.x, _2688.y > 0.5f.xxx.y, _2688.z > 0.5f.xxx.z)));
        }
        else
        {
            _2692 = _2636;
        }
        _2693 = _2692;
    }
    else
    {
        _2693 = _2636;
    }
    float4 _2704 = float4((((lerp((float4(_2417.x ? 0.0f.xxxx.x : _1954.x, _2417.y ? 0.0f.xxxx.y : _1954.y, _2417.z ? 0.0f.xxxx.z : _1954.z, _2417.w ? 0.0f.xxxx.w : _1954.w).xyz + float4(_2417.x ? 0.0f.xxxx.x : _1957.x, _2417.y ? 0.0f.xxxx.y : _1957.y, _2417.z ? 0.0f.xxxx.z : _1957.z, _2417.w ? 0.0f.xxxx.w : _1957.w).xyz) + (((((_2500.xyz * lerp(1.0f, min(0.0f, View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp((_1346 * View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x) + View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y, 0.0f, 1.0f)))).xyz + (_2501 * _2500.w)).xyz * ((_1444 * _2533.x) + (clamp(50.0f * _1444.y, 0.0f, 1.0f) * _2533.y).xxx)) * _1644) * max(_1653, ((((((_1444 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1297) + ((_1444 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1297) + ((_1444 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1297)), _1442 + (_1444 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + (((_1494 * _1644) * _1442) * max(_1653, ((((((_1349 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1297) + ((_1349 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1297) + ((_1349 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1297))) + _2693) * _2629.w) + _2629.xyz, 0.0f);
    _2704.w = 0.0f;
    out_var_SV_Target0 = _2704 * View_View_PreExposure;
    gl_SampleMask = int(_1288);
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
