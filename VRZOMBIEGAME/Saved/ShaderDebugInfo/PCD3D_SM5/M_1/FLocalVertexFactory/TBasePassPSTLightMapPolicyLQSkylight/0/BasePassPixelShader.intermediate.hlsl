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

static float _295 = 0.0f;
static float3 _296 = 0.0f.xxx;
static float _299 = 0.0f;

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
    bool _334 = false;
    float _331 = 1.0f / gl_FragCoord.w;
    float4x4 _398 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _399 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _400 = 0.0f.xxx;
    float4 _401 = 0.0f.xxxx;
    float4 _402 = 0.0f.xxxx;
    float4 _403 = 0.0f.xxxx;
    int _404 = 0;
    float4 _405 = 0.0f.xxxx;
    float2 _406 = 0.0f.xx;
    float4 _407 = 0.0f.xxxx;
    float4x4 _408 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _409 = 0.0f.xxx;
    float3 _410 = 0.0f.xxx;
    float3 _411 = 0.0f.xxx;
    do
    {
        _334 = in_var_PACKED_EYE_INDEX == 0u;
        if (_334)
        {
            _398 = View_View_ViewToClip;
            _399 = View_View_SVPositionToTranslatedWorld;
            _400 = View_View_ViewForward;
            _401 = View_View_ScreenPositionScaleBias;
            _402 = View_View_ViewRectMin;
            _403 = View_View_ViewSizeAndInvSize;
            _404 = View_View_NumSceneColorMSAASamples;
            _405 = View_View_NormalOverrideParameter;
            _406 = View_View_RoughnessOverrideParameter;
            _407 = View_View_SkyLightColor;
            _408 = View_View_RelativeWorldToClip;
            _409 = -View_View_MatrixTilePosition;
            _410 = -View_View_ViewTilePosition;
            _411 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _398 = InstancedView_InstancedView_ViewToClip;
            _399 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _400 = InstancedView_InstancedView_ViewForward;
            _401 = InstancedView_InstancedView_ScreenPositionScaleBias;
            _402 = InstancedView_InstancedView_ViewRectMin;
            _403 = InstancedView_InstancedView_ViewSizeAndInvSize;
            _404 = InstancedView_InstancedView_NumSceneColorMSAASamples;
            _405 = InstancedView_InstancedView_NormalOverrideParameter;
            _406 = InstancedView_InstancedView_RoughnessOverrideParameter;
            _407 = InstancedView_InstancedView_SkyLightColor;
            _408 = InstancedView_InstancedView_RelativeWorldToClip;
            _409 = -InstancedView_InstancedView_MatrixTilePosition;
            _410 = -InstancedView_InstancedView_ViewTilePosition;
            _411 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float3x3 _419 = float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz);
    float2 _422 = gl_FragCoord.xy - _402.xy;
    float4 _430 = float4(((_422 * _403.zw) - 0.5f.xx) * float2(2.0f, -2.0f), _299, 1.0f) * _331;
    float4 _435 = mul(float4(gl_FragCoord.xyz, 1.0f), _399);
    float3 _439 = _435.xyz / _435.w.xxx;
    float3 _440 = -_410;
    float3 _441 = _439 - _411;
    float3 _450 = 0.0f.xxx;
    if (_398[3].w >= 1.0f)
    {
        _450 = -_400;
    }
    else
    {
        _450 = normalize(-_439);
    }
    float2 _451 = (-0.5f).xx + float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y);
    float2 _455 = float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[1].x.xx;
    float2 _456 = ddy(_455);
    float2 _457 = ddx(_455);
    float3 _458 = mul(_419, _450);
    float2 _467 = Material_Material_PreshaderBuffer[1].y.xx * ((_458.xy * (-1.0f).xx) / _458.z.xx);
    float2 _472 = _455 + (_467 * Material_Material_PreshaderBuffer[2].x.xx);
    float2 _476 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float2 _480 = _476 + View_View_TemporalAAParams.x.xx;
    float4 _495 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _476 * 0.015625f.xx, View_View_MaterialTextureMipBias);
    float _503 = lerp(Material_Material_PreshaderBuffer[2].z, Material_Material_PreshaderBuffer[2].y, (float((uint(_480.x) + (2u * uint(_480.y))) % 5u) + _495.x) * 0.16666667163372039794921875f);
    float _513 = lerp(Material_Material_PreshaderBuffer[2].w * _503, Material_Material_PreshaderBuffer[3].x * _503, clamp(abs(dot(_450, in_var_TEXCOORD11_centroid.xyz)), 0.0f, 1.0f));
    float _514 = floor(_513);
    float _515 = 1.0f / _513;
    float2 _517 = _467 * _515.xx;
    float2 _518 = ddx(_472);
    float2 _519 = ddy(_472);
    float _525_copy;
    float2 _528 = 0.0f.xx;
    _528 = 0.0f.xx;
    float _526 = 0.0f;
    float2 _529 = 0.0f.xx;
    int _531 = 0;
    float _533 = 0.0f;
    float2 _552 = 0.0f.xx;
    float _525 = 1.0f;
    int _530 = 0;
    float _532 = 1.0f;
    float _534 = 1.0f;
    for (;;)
    {
        if (float(_530) < (_514 + 2.0f))
        {
            _533 = dot(Material_Material_PreshaderBuffer[6], Material_Texture2D_1.SampleGrad(Material_Texture2D_1Sampler, _472 + _528, _518, _519));
            if (_525 < _533)
            {
                float _547 = _533 - _525;
                _552 = _528 - (_517 * (_547 / ((_534 - _532) + _547)));
                break;
            }
            _526 = _525 - _515;
            _529 = _528 + _517;
            _531 = _530 + 1;
            _525_copy = _525;
            _525 = _526;
            _528 = _529;
            _530 = _531;
            _532 = _533;
            _534 = _525_copy;
            continue;
        }
        else
        {
            _552 = _528;
            break;
        }
    }
    float2 _554 = _472 + _552.xy;
    float2 _557 = View_View_MaterialTextureDerivativeMultiply.xx;
    float2 _566 = (Material_Texture2D_2.SampleGrad(Material_Texture2D_2Sampler, _554, _457 * _557, _456 * _557).xy * 2.0f.xx) - 1.0f.xx;
    float4 _588 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, Material_Material_PreshaderBuffer[7].w.xx * float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _605 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[8].z, Material_Material_PreshaderBuffer[8].y, ((in_var_COLOR0.y * Material_Material_PreshaderBuffer[7].z).xxx * (in_var_COLOR0.y.xxx + (_588.xyz * Material_Material_PreshaderBuffer[8].x.xxx))).x), 0.0f, 1.0f), 0.0f, 1.0f);
    float2 _621 = ((0.5f.xx + float2(dot(_451, Material_Material_PreshaderBuffer[10].xy), dot(_451, Material_Material_PreshaderBuffer[10].zw))) + Material_Material_PreshaderBuffer[11].zw) * Material_Material_PreshaderBuffer[13].yz;
    float2 _622 = ddy(_621);
    float2 _623 = ddx(_621);
    float2 _632 = (Material_Texture2D_4.SampleGrad(Material_Texture2D_4Sampler, _621, _623 * _557, _622 * _557).xy * 2.0f.xx) - 1.0f.xx;
    float2 _660 = ((0.5f.xx + float2(dot(_451, Material_Material_PreshaderBuffer[15].yz), dot(_451, Material_Material_PreshaderBuffer[16].xy))) + Material_Material_PreshaderBuffer[17].xy) * Material_Material_PreshaderBuffer[19].xy;
    float2 _661 = ddy(_660);
    float2 _662 = ddx(_660);
    float2 _666 = _660 * Material_Material_PreshaderBuffer[19].z.xx;
    float2 _667 = _662 * _557;
    float2 _668 = _661 * _557;
    float2 _675 = (Material_Texture2D_5.SampleGrad(Material_Texture2D_5Sampler, _666, _667, _668).xy * 2.0f.xx) - 1.0f.xx;
    float4 _689 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _690 = _689.x;
    float4 _701 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, Material_Material_PreshaderBuffer[20].z.xx * float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float _718 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[21].y, Material_Material_PreshaderBuffer[21].x, ((_690 * Material_Material_PreshaderBuffer[20].y).xxx * (_690.xxx + (_701.xyz * Material_Material_PreshaderBuffer[20].w.xxx))).x), 0.0f, 1.0f), 0.0f, 1.0f);
    float3 _721 = _718.xxx;
    float _733 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[22].x, Material_Material_PreshaderBuffer[21].w, _689.y), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[22].y, 0.0f, 1.0f);
    float3 _734 = _733.xxx;
    float2 _739 = _660 * Material_Material_PreshaderBuffer[22].z.xx;
    float2 _746 = (Material_Texture2D_8.SampleGrad(Material_Texture2D_8Sampler, _739, _667, _668).xy * 2.0f.xx) - 1.0f.xx;
    float _767 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[23].z, Material_Material_PreshaderBuffer[23].y, _689.z), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[23].w, 0.0f, 1.0f);
    float3 _769 = _767.xxx;
    float2 _774 = _660 * Material_Material_PreshaderBuffer[24].x.xx;
    float2 _781 = (Material_Texture2D_9.SampleGrad(Material_Texture2D_9Sampler, _774, _667, _668).xy * 2.0f.xx) - 1.0f.xx;
    float _802 = clamp(clamp(lerp(Material_Material_PreshaderBuffer[25].x, Material_Material_PreshaderBuffer[24].w, _689.w), 0.0f, 1.0f) * Material_Material_PreshaderBuffer[25].y, 0.0f, 1.0f);
    float3 _804 = _802.xxx;
    float3 _805 = lerp(lerp(lerp(lerp(float3(_632.x * Material_Material_PreshaderBuffer[13].w, _632.y * Material_Material_PreshaderBuffer[13].w, sqrt(clamp(1.0f - dot(_632, _632), 0.0f, 1.0f))), float3(_675.x * Material_Material_PreshaderBuffer[19].w, _675.y * Material_Material_PreshaderBuffer[19].w, sqrt(clamp(1.0f - dot(_675, _675), 0.0f, 1.0f))), _721), 1.0f.xxx, _734), float3(_746.x * Material_Material_PreshaderBuffer[22].w, _746.y * Material_Material_PreshaderBuffer[22].w, sqrt(clamp(1.0f - dot(_746, _746), 0.0f, 1.0f))), _769), float3(_781.x * Material_Material_PreshaderBuffer[24].y, _781.y * Material_Material_PreshaderBuffer[24].y, sqrt(clamp(1.0f - dot(_781, _781), 0.0f, 1.0f))), _804);
    float _807 = _805.z + 1.0f;
    float2 _823 = ((0.5f.xx + float2(dot(_451, Material_Material_PreshaderBuffer[27].xy), dot(_451, Material_Material_PreshaderBuffer[27].zw))) + Material_Material_PreshaderBuffer[28].zw) * Material_Material_PreshaderBuffer[30].yz;
    float2 _824 = ddy(_823);
    float2 _825 = ddx(_823);
    float2 _834 = (Material_Texture2D_10.SampleGrad(Material_Texture2D_10Sampler, _823, _825 * _557, _824 * _557).xy * 2.0f.xx) - 1.0f.xx;
    float3 _850 = float3(_805.xy, _807);
    float3 _853 = float3(float3(_834.x * Material_Material_PreshaderBuffer[30].w, _834.y * Material_Material_PreshaderBuffer[30].w, _295).xy * (-1.0f).xx, sqrt(clamp(1.0f - dot(_834, _834), 0.0f, 1.0f)));
    float3 _859 = (_850 * dot(_850, _853).xxx) - (_807.xxx * _853);
    float3 _860 = _605.xxx;
    float3 _872 = normalize(mul(normalize((lerp(lerp(float3(_566.x * Material_Material_PreshaderBuffer[7].x, _566.y * Material_Material_PreshaderBuffer[7].x, sqrt(clamp(1.0f - dot(_566, _566), 0.0f, 1.0f))), _860 * _859, _860), _859, _860) * _405.w) + _405.xyz), _419)) * 1.0f;
    float4 _883 = Material_Texture2D_11.Sample(View_MaterialTextureBilinearWrapedSampler, _554);
    float3 _888 = _883.xyz * Material_Material_PreshaderBuffer[33].z.xxx;
    float3 _894 = lerp(_888, dot(_888, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[33].w.xxx);
    float3 _895 = normalize(1.0f.xxx);
    float _898 = _895.x;
    float3 _902 = float4(_898, _895.yz, Material_Material_PreshaderBuffer[33].y).xyz;
    float3 _904 = _902 * dot(_902, _894);
    float3 _905 = _894 - _904;
    float4 _919 = Material_Texture2D_12.Sample(View_MaterialTextureBilinearWrapedSampler, _621);
    float3 _924 = _919.xyz * Material_Material_PreshaderBuffer[36].z.xxx;
    float3 _930 = lerp(_924, dot(_924, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[36].w.xxx);
    float3 _934 = float4(_898, _895.yz, Material_Material_PreshaderBuffer[36].y).xyz;
    float3 _936 = _934 * dot(_934, _930);
    float3 _937 = _930 - _936;
    float4 _951 = Material_Texture2D_13.Sample(View_MaterialTextureBilinearWrapedSampler, _666);
    float3 _956 = _951.xyz * Material_Material_PreshaderBuffer[39].z.xxx;
    float3 _962 = lerp(_956, dot(_956, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[39].w.xxx);
    float3 _966 = float4(_898, _895.yz, Material_Material_PreshaderBuffer[39].y).xyz;
    float3 _968 = _966 * dot(_966, _962);
    float3 _969 = _962 - _968;
    float4 _985 = Material_Texture2D_14.Sample(View_MaterialTextureBilinearWrapedSampler, _739);
    float3 _990 = _985.xyz * Material_Material_PreshaderBuffer[42].z.xxx;
    float3 _996 = lerp(_990, dot(_990, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[42].w.xxx);
    float3 _1000 = float4(_898, _895.yz, Material_Material_PreshaderBuffer[42].y).xyz;
    float3 _1002 = _1000 * dot(_1000, _996);
    float3 _1003 = _996 - _1002;
    float4 _1018 = Material_Texture2D_15.Sample(View_MaterialTextureBilinearWrapedSampler, _774);
    float3 _1023 = _1018.xyz * Material_Material_PreshaderBuffer[45].z.xxx;
    float3 _1029 = lerp(_1023, dot(_1023, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx, Material_Material_PreshaderBuffer[45].w.xxx);
    float3 _1033 = float4(_898, _895.yz, Material_Material_PreshaderBuffer[45].y).xyz;
    float3 _1035 = _1033 * dot(_1033, _1029);
    float3 _1036 = _1029 - _1035;
    float3 _1048 = lerp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[37].xyz * (_936 + ((_937 * cos(Material_Material_PreshaderBuffer[36].y)) + (cross(_934, _937) * sin(Material_Material_PreshaderBuffer[36].y)))), Material_Material_PreshaderBuffer[40].xyz * (_968 + ((_969 * cos(Material_Material_PreshaderBuffer[39].y)) + (cross(_966, _969) * sin(Material_Material_PreshaderBuffer[39].y)))), _721), 1.0f.xxx, _734), Material_Material_PreshaderBuffer[43].xyz * (_1002 + ((_1003 * cos(Material_Material_PreshaderBuffer[42].y)) + (cross(_1000, _1003) * sin(Material_Material_PreshaderBuffer[42].y)))), _769), Material_Material_PreshaderBuffer[46].xyz * (_1035 + ((_1036 * cos(Material_Material_PreshaderBuffer[45].y)) + (cross(_1033, _1036) * sin(Material_Material_PreshaderBuffer[45].y)))), _804);
    float4 _1054 = Material_Texture2D_16.Sample(View_MaterialTextureBilinearWrapedSampler, _621);
    float _1055 = _1054.z;
    float4 _1063 = Material_Texture2D_17.Sample(View_MaterialTextureBilinearWrapedSampler, _666);
    float _1064 = _1063.z;
    float4 _1074 = Material_Texture2D_18.Sample(View_MaterialTextureBilinearWrapedSampler, _739);
    float _1075 = _1074.z;
    float4 _1084 = Material_Texture2D_19.Sample(View_MaterialTextureBilinearWrapedSampler, _774);
    float _1085 = _1084.z;
    float _1091 = lerp(lerp(lerp(lerp((_1055 <= 0.0f) ? 0.0f : pow(_1055, Material_Material_PreshaderBuffer[46].w), (_1064 <= 0.0f) ? 0.0f : pow(_1064, Material_Material_PreshaderBuffer[47].x), _718), 1.0f, _733), (_1075 <= 0.0f) ? 0.0f : pow(_1075, Material_Material_PreshaderBuffer[47].y), _767), (_1085 <= 0.0f) ? 0.0f : pow(_1085, Material_Material_PreshaderBuffer[47].z), _802);
    float4 _1097 = Material_Texture2D_20.Sample(View_MaterialTextureBilinearWrapedSampler, _554);
    float _1131 = lerp(lerp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[48].w, Material_Material_PreshaderBuffer[48].z, _1054.y), lerp(Material_Material_PreshaderBuffer[49].y, Material_Material_PreshaderBuffer[49].x, _1063.y), _718), 1.0f, _733), lerp(Material_Material_PreshaderBuffer[49].w, Material_Material_PreshaderBuffer[49].z, _1074.y), _767), lerp(Material_Material_PreshaderBuffer[50].y, Material_Material_PreshaderBuffer[50].x, _1084.y), _802);
    float _1139 = lerp(_919.w, 1.0f, 0.5f) * Material_Material_PreshaderBuffer[50].z;
    float _1140 = _1097.x;
    float _1146 = _1054.x;
    float _1152 = _1063.x;
    float _1160 = _1074.x;
    float _1167 = _1084.x;
    float _1173 = lerp(lerp(lerp(lerp((_1146 <= 0.0f) ? 0.0f : pow(_1146, Material_Material_PreshaderBuffer[51].x), (_1152 <= 0.0f) ? 0.0f : pow(_1152, Material_Material_PreshaderBuffer[51].y), _718), 1.0f, _733), (_1160 <= 0.0f) ? 0.0f : pow(_1160, Material_Material_PreshaderBuffer[51].z), _767), (_1167 <= 0.0f) ? 0.0f : pow(_1167, Material_Material_PreshaderBuffer[51].w), _802);
    uint _1203 = 0u;
    do
    {
        if (_404 > 1)
        {
            float _1185 = (_1139 - 0.33329999446868896484375f) * 1.49992501735687255859375f;
            uint _1193 = (_1185 > 0.75f) ? 15u : ((_1185 > 0.5f) ? 13u : ((_1185 > 0.25f) ? 9u : ((_1185 > 0.00999999977648258209228515625f) ? 8u : 0u)));
            if ((float(_1193) - 0.5f) < 0.0f)
            {
                discard;
            }
            _1203 = _1193;
            break;
        }
        if ((_1139 - 0.33329999446868896484375f) < 0.0f)
        {
            discard;
        }
        _1203 = 15u;
        break;
    } while(false);
    float3 _1204 = clamp(lerp(lerp(Material_Material_PreshaderBuffer[34].xyz * (_904 + ((_905 * cos(Material_Material_PreshaderBuffer[33].y)) + (cross(_902, _905) * sin(Material_Material_PreshaderBuffer[33].y)))), _860 * _1048, _860), _1048, _860), 0.0f.xxx, 1.0f.xxx);
    float _1205 = clamp(lerp(lerp(0.0f, _605 * _1091, _605), _1091, _605), 0.0f, 1.0f);
    float _1206 = clamp(Material_Material_PreshaderBuffer[47].w, 0.0f, 1.0f);
    float _1211 = (clamp(lerp(lerp(lerp(Material_Material_PreshaderBuffer[48].y, Material_Material_PreshaderBuffer[48].x, _1097.y), _605 * _1131, _605), _1131, _605), 0.0f, 1.0f) * _406.y) + _406.x;
    float _1212 = clamp(lerp(lerp((_1140 <= 0.0f) ? 0.0f : pow(_1140, Material_Material_PreshaderBuffer[50].w), _605 * _1173, _605), _1173, _605), 0.0f, 1.0f);
    uint _1213 = in_var_PRIMITIVE_ID * 40u;
    float3 _1261 = 0.0f.xxx;
    float _1262 = 0.0f;
    float _1263 = 0.0f;
    float _1264 = 0.0f;
    float3 _1265 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_1213 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _1229 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _1233 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1229, 0.0f);
        float4 _1236 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1229, 0.0f);
        float4 _1239 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _1229, 0.0f);
        float _1249 = _1239.w;
        _1261 = normalize((_872 * _1236.w) + ((_1236.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _1262 = (_1211 * _1249) + _1239.z;
        _1263 = (_1206 * _1249) + _1239.y;
        _1264 = (_1205 * _1249) + _1239.x;
        _1265 = (_1204 * _1233.w) + _1233.xyz;
    }
    else
    {
        _1261 = _872;
        _1262 = _1211;
        _1263 = _1206;
        _1264 = _1205;
        _1265 = _1204;
    }
    uint _1268 = asuint(asfloat(View_PrimitiveSceneData.Load4(_1213 * 16 + 0)).x);
    float _1277 = _430.w;
    float3 _1290 = ((_1265 - (_1265 * _1264)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _1297 = (lerp((0.07999999821186065673828125f * _1263).xxx, _1265, _1264.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _1300 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _1305 = 0.0f.xxx;
    if (_1300)
    {
        _1305 = _1290 + (_1297 * 0.449999988079071044921875f);
    }
    else
    {
        _1305 = _1290;
    }
    bool3 _1306 = _1300.xxx;
    float3 _1307 = float3(_1306.x ? 0.0f.xxx.x : _1297.x, _1306.y ? 0.0f.xxx.y : _1297.y, _1306.z ? 0.0f.xxx.z : _1297.z);
    float2 _1309 = in_var_TEXCOORD4.xy * float2(1.0f, 0.5f);
    float4 _1314 = LightmapResourceCluster_LightMapTexture.Sample(LightmapResourceCluster_LightMapSampler, _1309);
    float4 _1316 = LightmapResourceCluster_LightMapTexture.Sample(LightmapResourceCluster_LightMapSampler, _1309 + float2(0.0f, 0.5f));
    uint _1318 = in_var_LIGHTMAP_ID * 15u;
    float3 _1328 = (_1314.xyz * asfloat(View_LightmapSceneData.Load4((_1318 + 4u) * 16 + 0)).xyz) + asfloat(View_LightmapSceneData.Load4((_1318 + 6u) * 16 + 0)).xyz;
    float _1329 = dot(_1328, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f));
    float _1348 = (exp2((_1329 * 16.0f) - 8.0f) - 0.00390625f) * max(0.0f, dot((_1316 * asfloat(View_LightmapSceneData.Load4((_1318 + 5u) * 16 + 0))) + asfloat(View_LightmapSceneData.Load4((_1318 + 7u) * 16 + 0)), float4(_1261.yzx, 1.0f)));
    float3 _1405 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _1364 = float4(_1261, 1.0f);
        float3 _1368 = _296;
        _1368.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _1364);
        float3 _1372 = _1368;
        _1372.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _1364);
        float3 _1376 = _1372;
        _1376.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _1364);
        float4 _1379 = _1364.xyzz * _1364.yzzx;
        float3 _1383 = _296;
        _1383.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _1379);
        float3 _1387 = _1383;
        _1387.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _1379);
        float3 _1391 = _1387;
        _1391.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _1379);
        _1405 = (max(0.0f.xxx, (_1376 + _1391) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * ((_1261.x * _1261.x) - (_1261.y * _1261.y)))) * _407.xyz) * 1.0f;
    }
    else
    {
        _1405 = 0.0f.xxx;
    }
    float3 _1406 = (float4(_1328 * (_1348 / _1329), _1348).xyz * View_View_PrecomputedIndirectLightingColorScale) + _1405;
    float2 _1414 = ((_430.xy / _1277.xx) * _401.xy) + _401.wz;
    float2 _1533 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _1425 = int2(trunc(_1414 * View_View_BufferSizeAndInvSize.xy));
        int _1426 = _1425.x;
        int _1427 = _1425.y;
        float4 _1431 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1426, _1427, 0).xy, 0));
        float _1432 = _1431.x;
        float2 _1532 = 0.0f.xx;
        if ((abs((((_1432 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1432 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1277) / _1277) > 0.00999999977648258209228515625f)
        {
            float2 _1456 = _1414 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _1460 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1426 - 1, _1427, 0).xy, 0));
            float _1461 = _1460.x;
            float _1469 = abs((((_1461 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1461 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1277);
            bool _1470 = _1469 < 100000000.0f;
            bool2 _1471 = _1470.xx;
            float2 _1472 = float2(_1471.x ? _1456.x : _1414.x, _1471.y ? _1456.y : _1414.y);
            float _1473 = _1470 ? _1469 : 100000000.0f;
            float2 _1476 = _1414 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _1480 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1426, _1427 + 1, 0).xy, 0));
            float _1481 = _1480.x;
            float _1489 = abs((((_1481 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1481 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1277);
            bool _1490 = _1489 < _1473;
            bool2 _1491 = _1490.xx;
            float2 _1492 = float2(_1491.x ? _1476.x : _1472.x, _1491.y ? _1476.y : _1472.y);
            float _1493 = _1490 ? _1489 : _1473;
            float2 _1495 = _1414 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _1499 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1426 + 1, _1427, 0).xy, 0));
            float _1500 = _1499.x;
            float _1508 = abs((((_1500 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1500 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1277);
            bool _1509 = _1508 < _1493;
            bool2 _1510 = _1509.xx;
            float2 _1511 = float2(_1510.x ? _1495.x : _1492.x, _1510.y ? _1495.y : _1492.y);
            float2 _1515 = _1414 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _1519 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_1426, _1427 - 1, 0).xy, 0));
            float _1520 = _1519.x;
            bool2 _1530 = (abs((((_1520 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_1520 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _1277) < (_1509 ? _1508 : _1493)).xx;
            _1532 = float2(_1530.x ? _1515.x : _1511.x, _1530.y ? _1515.y : _1511.y);
        }
        else
        {
            _1532 = _1414;
        }
        _1533 = _1532;
    }
    else
    {
        _1533 = _1414;
    }
    uint _1539_dummy_parameter;
    uint2 _1539 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _1539_dummy_parameter);
    float _1557 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_1533 * float2(float(_1539.x), float(_1539.y)))), 0).xy, 0)).x, ((uint(((2.0f * float((_1268 & 128u) != 0u)) + float((_1268 & 256u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _1567 = _1212.xxx;
    uint _1595 = 0u;
    float3 _1596 = 0.0f.xxx;
    int3 _1597 = int3(0, 0, 0);
    [branch]
    if (_334)
    {
        _1595 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift;
        _1596 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams;
        _1597 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _1595 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
        _1596 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridZParams;
        _1597 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint2 _1613 = uint2(_422 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (_1595.xx & uint2(31u, 31u));
    int3 _1623 = int3(0, 0, 0);
    [branch]
    if (_334)
    {
        _1623 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _1623 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint _1631 = (((min(uint(max(0.0f, log2((_331 * _1596.x) + _1596.y) * _1596.z)), uint(_1597.z - 1)) * uint(_1623.y)) + _1613.y) * uint(_1623.x)) + _1613.x;
    float4 _1649 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _1649 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_1533 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _1649 = 1.0f.xxxx;
    }
    float4 _1650 = _1649 * _1649;
    uint _1653 = asuint(asfloat(View_PrimitiveSceneData.Load4(_1213 * 16 + 0)).x);
    uint _1666 = (uint((_1653 & 1024u) != 0u) | (uint((_1653 & 2048u) != 0u) << 1u)) | (uint((_1653 & 4096u) != 0u) << 2u);
    uint _1690 = 0u;
    uint _1691 = 0u;
    float2 _1692 = 0.0f.xx;
    float3 _1693 = 0.0f.xxx;
    float3 _1694 = 0.0f.xxx;
    [branch]
    if (_334)
    {
        _1690 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight;
        _1691 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
        _1692 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
        _1693 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor;
        _1694 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection;
    }
    else
    {
        _1690 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_HasDirectionalLight;
        _1691 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
        _1692 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
        _1693 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightColor;
        _1694 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDirection;
    }
    float4 _1833 = 0.0f.xxxx;
    float4 _1834 = 0.0f.xxxx;
    [branch]
    if (_1690 != 0u)
    {
        uint _1714 = _1691 >> 4u;
        float _1728 = dot(float4(float((_1714 & 1u) != 0u), float((_1714 & 2u) != 0u), float((_1714 & 4u) != 0u), float((_1714 & 8u) != 0u)), _1650);
        bool _1730 = _1692.y < 0.0f;
        float _1731 = _1730 ? 1.0f : _1728;
        float _1747 = 0.0f;
        float _1748 = 0.0f;
        [branch]
        if (uint((_1691 & 255u) != 0u) != 0u)
        {
            float _1741 = clamp((_1277 * _1692.x) + _1692.y, 0.0f, 1.0f);
            float _1743 = lerp(_1730 ? _1728 : 1.0f, lerp(1.0f, 0.0f, dot(float4(float((_1691 & 1u) != 0u), float((_1691 & 2u) != 0u), float((_1691 & 4u) != 0u), float((_1691 & 8u) != 0u)), 1.0f.xxxx)), _1741 * _1741);
            _1747 = min(_1743, _1731) * _1731;
            _1748 = _1743 * _1731;
        }
        else
        {
            _1747 = 1.0f;
            _1748 = 1.0f;
        }
        float3 _1817 = 0.0f.xxx;
        float3 _1818 = 0.0f.xxx;
        [branch]
        if ((_1748 + _1747) > 0.0f)
        {
            float _1755 = max(_1262, View_View_MinRoughness);
            float3 _1758 = _1694 * rsqrt(dot(_1694, _1694));
            float _1759 = dot(_1261, _1758);
            float _1760 = clamp(_1759, 0.0f, 1.0f);
            float _1761 = dot(_1261, _450);
            float _1762 = dot(_450, _1758);
            float _1765 = rsqrt(2.0f + (2.0f * _1762));
            float _1768 = clamp((_1759 + _1761) * _1765, 0.0f, 1.0f);
            float _1774 = clamp(abs(_1761) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float3 _1776 = 1.0f.xxx * _1760;
            float _1778 = _1755 * _1755;
            float _1779 = _1778 * _1778;
            float _1783 = (((_1768 * _1779) - _1768) * _1768) + 1.0f;
            float _1787 = sqrt(_1779);
            float _1788 = 1.0f - _1787;
            float _1797 = 1.0f - clamp(_1765 + (_1765 * _1762), 0.0f, 1.0f);
            float _1798 = _1797 * _1797;
            float _1800 = (_1798 * _1798) * _1797;
            float3 _1814 = (_1693 * 1.0f) * _1748;
            _1817 = ((_1305 * 0.3183098733425140380859375f) * _1776) * _1814;
            _1818 = ((_1776 * (((clamp(50.0f * _1307.y, 0.0f, 1.0f) * _1800).xxx + (_1307 * (1.0f - _1800))) * ((_1779 / ((3.1415927410125732421875f * _1783) * _1783)) * (0.5f / ((_1760 * ((_1774 * _1788) + _1787)) + (_1774 * ((_1760 * _1788) + _1787))))))) * 1.0f) * _1814;
        }
        else
        {
            _1817 = 0.0f.xxx;
            _1818 = 0.0f.xxx;
        }
        float4 _1822 = float4(_1817, 0.0f);
        float4 _1826 = float4(_1818, 0.0f);
        bool4 _1830 = (((_1691 >> 8u) & _1666) != 0u).xxxx;
        _1833 = float4(_1830.x ? _1822.x : 0.0f.xxxx.x, _1830.y ? _1822.y : 0.0f.xxxx.y, _1830.z ? _1822.z : 0.0f.xxxx.z, _1830.w ? _1822.w : 0.0f.xxxx.w);
        _1834 = float4(_1830.x ? _1826.x : 0.0f.xxxx.x, _1830.y ? _1826.y : 0.0f.xxxx.y, _1830.z ? _1826.z : 0.0f.xxxx.z, _1830.w ? _1826.w : 0.0f.xxxx.w);
    }
    else
    {
        _1833 = 0.0f.xxxx;
        _1834 = 0.0f.xxxx;
    }
    uint _1858 = 0u;
    uint _1859 = 0u;
    [branch]
    if (_334)
    {
        uint _1848 = _1631 * 2u;
        _1858 = min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1848).x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
        _1859 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1848 + 1u).x;
    }
    else
    {
        uint _1838 = _1631 * 2u;
        _1858 = min(OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1838).x, OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights);
        _1859 = OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1838 + 1u).x;
    }
    uint _1865 = min(_1858, (_334 ? OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights : OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights));
    float4 _1867 = 0.0f.xxxx;
    float4 _1870 = 0.0f.xxxx;
    _1867 = _1833;
    _1870 = _1834;
    float4 _1868 = 0.0f.xxxx;
    float4 _1871 = 0.0f.xxxx;
    [loop]
    for (uint _1872 = 0u; _1872 < _1865; _1867 = _1868, _1870 = _1871, _1872++)
    {
        uint _1877 = _1859 + _1872;
        float4 _1909 = 0.0f.xxxx;
        float4 _1910 = 0.0f.xxxx;
        float4 _1911 = 0.0f.xxxx;
        float4 _1912 = 0.0f.xxxx;
        float4 _1913 = 0.0f.xxxx;
        [branch]
        if (_334)
        {
            uint _1898 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid.Load(_1877).x * 6u;
            _1909 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1898);
            _1910 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1898 + 1u);
            _1911 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1898 + 3u);
            _1912 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1898 + 2u);
            _1913 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1898 + 4u);
        }
        else
        {
            uint _1884 = OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid.Load(_1877).x * 6u;
            _1909 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1884);
            _1910 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1884 + 1u);
            _1911 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1884 + 3u);
            _1912 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1884 + 2u);
            _1913 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1884 + 4u);
        }
        float2 _1922 = spvUnpackHalf2x16(asuint(_1911.w));
        float _1923 = _1922.x;
        bool _1926 = _1910.w == 0.0f;
        uint _1930 = asuint(_1912.w);
        uint _1947 = _1930 >> 4u;
        float3 _1962 = _1909.xyz - _439;
        float _1963 = dot(_1962, _1962);
        float _1980 = 0.0f;
        if (_1926)
        {
            float _1975 = _1963 * (_1909.w * _1909.w);
            float _1978 = clamp(1.0f - (_1975 * _1975), 0.0f, 1.0f);
            _1980 = _1978 * _1978;
        }
        else
        {
            float3 _1969 = _1962 * _1909.w;
            _1980 = pow(1.0f - clamp(dot(_1969, _1969), 0.0f, 1.0f), _1910.w);
        }
        float _1990 = 0.0f;
        if (_1911.x > (-2.0f))
        {
            float _1987 = clamp((dot(_1962 * rsqrt(_1963), _1912.xyz) - _1911.x) * _1911.y, 0.0f, 1.0f);
            _1990 = _1980 * (_1987 * _1987);
        }
        else
        {
            _1990 = _1980;
        }
        float3 _2309 = 0.0f.xxx;
        float3 _2310 = 0.0f.xxx;
        [branch]
        if (_1990 > 0.0f)
        {
            float _2000 = 0.0f;
            [branch]
            if (uint((_1930 & 255u) != 0u) != 0u)
            {
                _2000 = dot(float4(float((_1947 & 1u) != 0u), float((_1947 & 2u) != 0u), float((_1947 & 4u) != 0u), float((_1947 & 8u) != 0u)), _1650) * lerp(1.0f, 0.0f, dot(float4(float((_1930 & 1u) != 0u), float((_1930 & 2u) != 0u), float((_1930 & 4u) != 0u), float((_1930 & 8u) != 0u)), 1.0f.xxxx));
            }
            else
            {
                _2000 = 1.0f;
            }
            float3 _2307 = 0.0f.xxx;
            float3 _2308 = 0.0f.xxx;
            [branch]
            if ((_2000 + _2000) > 0.0f)
            {
                float3 _2006 = _1913.xyz * (0.5f * _1923);
                float3 _2007 = _1962 - _2006;
                float3 _2008 = _1962 + _2006;
                float _2011 = max(_1262, View_View_MinRoughness);
                bool _2012 = _1923 > 0.0f;
                float _2039 = 0.0f;
                float _2040 = 0.0f;
                float _2041 = 0.0f;
                [branch]
                if (_2012)
                {
                    float _2024 = rsqrt(dot(_2007, _2007));
                    float _2025 = rsqrt(dot(_2008, _2008));
                    float _2026 = _2024 * _2025;
                    float _2028 = dot(_2007, _2008) * _2026;
                    _2039 = _2028;
                    _2040 = 0.5f * ((dot(_1261, _2007) * _2024) + (dot(_1261, _2008) * _2025));
                    _2041 = _2026 / (((_2028 * 0.5f) + 0.5f) + _2026);
                }
                else
                {
                    float _2016 = dot(_2007, _2007);
                    _2039 = 1.0f;
                    _2040 = dot(_1261, _2007 * rsqrt(_2016));
                    _2041 = 1.0f / (_2016 + 1.0f);
                }
                float _2059 = 0.0f;
                if (_1911.z > 0.0f)
                {
                    float _2048 = sqrt(clamp((_1911.z * _1911.z) * _2041, 0.0f, 1.0f));
                    float _2058 = 0.0f;
                    if (_2040 < _2048)
                    {
                        float _2054 = _2048 + max(_2040, -_2048);
                        _2058 = (_2054 * _2054) / (4.0f * _2048);
                    }
                    else
                    {
                        _2058 = _2040;
                    }
                    _2059 = _2058;
                }
                else
                {
                    _2059 = _2040;
                }
                float _2060 = clamp(_2059, 0.0f, 1.0f);
                float3 _2078 = 0.0f.xxx;
                if (_2012)
                {
                    float3 _2065 = reflect(-_450, _1261);
                    float3 _2066 = _2008 - _2007;
                    float _2068 = dot(_2065, _2066);
                    _2078 = _2007 + (_2066 * clamp(dot(_2007, (_2065 * _2068) - _2066) / ((_1923 * _1923) - (_2068 * _2068)), 0.0f, 1.0f));
                }
                else
                {
                    _2078 = _2007;
                }
                float _2080 = rsqrt(dot(_2078, _2078));
                float3 _2081 = _2078 * _2080;
                float _2082 = max(_2011, View_View_MinRoughness);
                float _2087 = clamp((_1911.z * _2080) * (1.0f - (_2082 * _2082)), 0.0f, 1.0f);
                float _2089 = clamp(_1913.w * _2080, 0.0f, 1.0f);
                float _2097 = dot(_1261, _2081);
                float _2098 = dot(_1261, _450);
                float _2099 = dot(_450, _2081);
                float _2102 = rsqrt(2.0f + (2.0f * _2099));
                bool _2109 = _2087 > 0.0f;
                float _2204 = 0.0f;
                float _2205 = 0.0f;
                if (_2109)
                {
                    float _2114 = sqrt(1.0f - (_2087 * _2087));
                    float _2116 = (2.0f * _2097) * _2098;
                    float _2117 = _2116 - _2099;
                    float _2202 = 0.0f;
                    float _2203 = 0.0f;
                    if (_2117 >= _2114)
                    {
                        _2202 = 1.0f;
                        _2203 = abs(_2098);
                    }
                    else
                    {
                        float _2125 = _2087 * rsqrt(1.0f - (_2117 * _2117));
                        float _2128 = _2125 * (_2098 - (_2117 * _2097));
                        float _2134 = _2125 * ((((2.0f * _2098) * _2098) - 1.0f) - (_2117 * _2099));
                        float _2145 = _2125 * sqrt(clamp((((1.0f - (_2097 * _2097)) - (_2098 * _2098)) - (_2099 * _2099)) + (_2116 * _2099), 0.0f, 1.0f));
                        float _2147 = (_2145 * 2.0f) * _2098;
                        float _2148 = _2097 * _2114;
                        float _2149 = _2148 + _2098;
                        float _2150 = _2149 + _2128;
                        float _2151 = _2099 * _2114;
                        float _2153 = (_2151 + 1.0f) + _2134;
                        float _2154 = _2145 * _2153;
                        float _2155 = _2150 * _2153;
                        float _2156 = _2147 * _2150;
                        float _2161 = _2155 * (((-0.5f) * _2154) + ((0.25f * _2147) * _2150));
                        float _2175 = ((_2154 * _2154) + (_2156 * (_2156 - (2.0f * _2154)))) + (_2150 * ((_2149 * (_2153 * _2153)) + (_2155 * (((-0.5f) * (_2153 + _2151)) - 0.5f))));
                        float _2180 = (2.0f * _2161) / ((_2175 * _2175) + (_2161 * _2161));
                        float _2181 = _2180 * _2175;
                        float _2183 = 1.0f - (_2180 * _2161);
                        float _2191 = _2151 + ((_2183 * _2134) + (_2181 * _2147));
                        float _2194 = rsqrt(2.0f + (2.0f * _2191));
                        _2202 = clamp(((_2148 + ((_2183 * _2128) + (_2181 * _2145))) + _2098) * _2194, 0.0f, 1.0f);
                        _2203 = clamp(_2194 + (_2194 * _2191), 0.0f, 1.0f);
                    }
                    _2204 = _2202;
                    _2205 = _2203;
                }
                else
                {
                    _2204 = clamp((_2097 + _2098) * _2102, 0.0f, 1.0f);
                    _2205 = clamp(_2102 + (_2102 * _2099), 0.0f, 1.0f);
                }
                float _2208 = clamp(abs(_2098) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _2211 = 1.0f.xxx * ((_1926 ? _2041 : 1.0f) * _2060);
                float3 _2301 = 0.0f.xxx;
                if (((0u | (asuint(clamp(1.0f - (max(_1923, _1911.z) * 0.0500000007450580596923828125f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _2301 = 0.0f.xxx;
                }
                else
                {
                    float _2218 = _2011 * _2011;
                    float _2219 = _2218 * _2218;
                    float _2229 = 0.0f;
                    if (_2089 > 0.0f)
                    {
                        _2229 = clamp(_2219 + ((_2089 * _2089) / ((_2205 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _2229 = _2219;
                    }
                    float _2244 = 0.0f;
                    float _2245 = 0.0f;
                    if (_2109)
                    {
                        float _2242 = _2229 + (((0.25f * _2087) * ((3.0f * asfloat(532487669 + (asint(_2229) >> 1))) + _2087)) / (_2205 + 0.001000000047497451305389404296875f));
                        _2244 = _2229 / _2242;
                        _2245 = _2242;
                    }
                    else
                    {
                        _2244 = 1.0f;
                        _2245 = _2229;
                    }
                    float _2267 = 0.0f;
                    if (_2039 < 1.0f)
                    {
                        float _2252 = sqrt((1.00010001659393310546875f - _2039) / (1.0f + _2039));
                        _2267 = _2244 * sqrt(_2245 / (_2245 + (((0.25f * _2252) * ((3.0f * asfloat(532487669 + (asint(_2245) >> 1))) + _2252)) / (_2205 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _2267 = _2244;
                    }
                    float _2271 = (((_2204 * _2229) - _2204) * _2204) + 1.0f;
                    float _2276 = sqrt(_2229);
                    float _2277 = 1.0f - _2276;
                    float _2286 = 1.0f - _2205;
                    float _2287 = _2286 * _2286;
                    float _2289 = (_2287 * _2287) * _2286;
                    _2301 = _2211 * (((clamp(50.0f * _1307.y, 0.0f, 1.0f) * _2289).xxx + (_1307 * (1.0f - _2289))) * (((_2229 / ((3.1415927410125732421875f * _2271) * _2271)) * _2267) * (0.5f / ((_2060 * ((_2208 * _2277) + _2276)) + (_2208 * ((_2060 * _2277) + _2276))))));
                }
                float3 _2304 = (_1910.xyz * _1990) * _2000;
                _2307 = ((_1305 * 0.3183098733425140380859375f) * _2211) * _2304;
                _2308 = (_2301 * 1.0f) * _2304;
            }
            else
            {
                _2307 = 0.0f.xxx;
                _2308 = 0.0f.xxx;
            }
            _2309 = _2307;
            _2310 = _2308;
        }
        else
        {
            _2309 = 0.0f.xxx;
            _2310 = 0.0f.xxx;
        }
        [flatten]
        if (((_1930 >> 8u) & _1666) != 0u)
        {
            _1868 = _1867 + float4(_2309, 0.0f);
            _1871 = _1870 + float4(_2310, 0.0f);
        }
        else
        {
            _1868 = _1867;
            _1871 = _1870;
        }
    }
    bool4 _2329 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _2338 = int(asuint(asfloat(View_PrimitiveSceneData.Load4(_1213 * 16 + 0)).w));
    float3 _2342 = (_1261 * (2.0f * dot(_450, _1261))) - _450;
    float _2350 = 1.0f - (1.2000000476837158203125f * log2(max(_1262, 0.001000000047497451305389404296875f)));
    float4 _2366 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_2342, ReflectionCapture_ReflectionCapture_CaptureProperties[_2338].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _2350);
    float _2370 = 1.0f - _2366.w;
    float4 _2374 = float4(_2366.xyz * ReflectionCapture_ReflectionCapture_CaptureProperties[_2338].x, _2370);
    float3 _2379 = _2374.xyz * View_View_PrecomputedIndirectSpecularColorScale;
    float4 _2380 = float4(_2379.x, _2379.y, _2379.z, _2374.w);
    float4 _2417 = 0.0f.xxxx;
    float3 _2418 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        float3 _2401 = OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _2342, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _2350).xyz * View_View_SkyLightColor.xyz;
        float4 _2415 = 0.0f.xxxx;
        float3 _2416 = 0.0f.xxx;
        [flatten]
        if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.z < 1.0f) && true)
        {
            float3 _2413 = _2379.xyz + ((_2401 * _2370) * 1.0f);
            _2415 = float4(_2413.x, _2413.y, _2413.z, _2374.w);
            _2416 = 0.0f.xxx;
        }
        else
        {
            _2415 = _2380;
            _2416 = _2401 * 1.0f;
        }
        _2417 = _2415;
        _2418 = _2416;
    }
    else
    {
        _2417 = _2380;
        _2418 = 0.0f.xxx;
    }
    float4 _2441 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _1262) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _2442 = _2441.x;
    float2 _2452 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_2442 * _2442, exp2((-9.27999973297119140625f) * clamp(dot(_1261, _450), 0.0f, 1.0f))) * _2442) + _2441.y)) + _2441.zw;
    bool _2480 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2548 = 0.0f.xxxx;
    if (_2480)
    {
        float4 _2498 = mul(((float4(_440, 0.0f) + float4(_409, 0.0f)) * 2097152.0f) + float4(_441, 1.0f), _408);
        float _2499 = _2498.w;
        float3 _2521 = float3(((_2498.xy / _2499.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_2499 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _2536 = 0.0f.xxxx;
        if (_2480)
        {
            float4 _2535 = 0.0f.xxxx;
            if (_334)
            {
                _2535 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _2521, 0.0f);
            }
            else
            {
                _2535 = OpaqueBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _2521, 0.0f);
            }
            _2536 = _2535;
        }
        else
        {
            _2536 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _2548 = float4(_2536.xyz + (in_var_TEXCOORD7.xyz * _2536.w), _2536.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _2548 = in_var_TEXCOORD7;
    }
    float3 _2555 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[31].yzw, Material_Material_PreshaderBuffer[31].x.xxx), 0.0f.xxx);
    float3 _2612 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _2586 = abs(((_440 - asfloat(View_PrimitiveSceneData.Load4((_1213 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_441 - asfloat(View_PrimitiveSceneData.Load4((_1213 + 19u) * 16 + 0)).xyz));
        float3 _2587 = float3(asfloat(View_PrimitiveSceneData.Load4((_1213 + 18u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_1213 + 25u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_1213 + 26u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _2611 = 0.0f.xxx;
        if (any(bool3(_2586.x > _2587.x, _2586.y > _2587.y, _2586.z > _2587.z)))
        {
            float3 _2607 = frac(frac(((_440.x + _440.y) + _440.z) * 2420.113525390625f) + (((_441.x + _441.y) + _441.z) * 0.001154000055976212024688720703125f)).xxx;
            _2611 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2607.x > 0.5f.xxx.x, _2607.y > 0.5f.xxx.y, _2607.z > 0.5f.xxx.z)));
        }
        else
        {
            _2611 = _2555;
        }
        _2612 = _2611;
    }
    else
    {
        _2612 = _2555;
    }
    float4 _2623 = float4((((lerp((float4(_2329.x ? 0.0f.xxxx.x : _1867.x, _2329.y ? 0.0f.xxxx.y : _1867.y, _2329.z ? 0.0f.xxxx.z : _1867.z, _2329.w ? 0.0f.xxxx.w : _1867.w).xyz + float4(_2329.x ? 0.0f.xxxx.x : _1870.x, _2329.y ? 0.0f.xxxx.y : _1870.y, _2329.z ? 0.0f.xxxx.z : _1870.z, _2329.w ? 0.0f.xxxx.w : _1870.w).xyz) + (((((_2417.xyz * lerp(1.0f, min((dot(_1406, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * _1557) / max(ReflectionCapture_ReflectionCapture_CaptureOffsetAndAverageBrightness[_2338].w * dot(View_View_PrecomputedIndirectSpecularColorScale, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)), 9.9999997473787516355514526367188e-05f), View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp((_1262 * View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x) + View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y, 0.0f, 1.0f)))).xyz + (_2418 * _2417.w)).xyz * ((_1307 * _2452.x) + (clamp(50.0f * _1307.y, 0.0f, 1.0f) * _2452.y).xxx)) * _1557) * max(_1567, ((((((_1307 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1212) + ((_1307 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1212) + ((_1307 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1212)), _1305 + (_1307 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + (((_1406 * _1557) * _1305) * max(_1567, ((((((_1265 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1212) + ((_1265 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1212) + ((_1265 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1212))) + _2612) * _2548.w) + _2548.xyz, 0.0f);
    _2623.w = 0.0f;
    out_var_SV_Target0 = _2623 * View_View_PreExposure;
    gl_SampleMask = int(_1203);
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
