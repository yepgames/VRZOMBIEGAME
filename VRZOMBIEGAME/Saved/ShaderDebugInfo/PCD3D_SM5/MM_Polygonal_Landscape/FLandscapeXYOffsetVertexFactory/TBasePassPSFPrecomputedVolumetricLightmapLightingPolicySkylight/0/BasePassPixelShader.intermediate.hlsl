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
    float View_View_UnlitViewmodeMask : packoffset(c140);
    float3 View_View_PrecomputedIndirectLightingColorScale : packoffset(c154);
    float3 View_View_PrecomputedIndirectSpecularColorScale : packoffset(c155);
    float View_View_RenderingReflectionCaptureMask : packoffset(c178.w);
    float View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag : packoffset(c181.y);
    float4 View_View_SkyLightColor : packoffset(c182);
    float View_View_ReflectionCubemapMaxMip : packoffset(c190.z);
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

cbuffer LandscapeParameters
{
    row_major float4x4 LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling : packoffset(c9);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[16] : packoffset(c0);
};

SamplerState View_MaterialTextureBilinearWrapedSampler;
Texture3D<uint4> View_VolumetricLightmapIndirectionTexture;
Texture3D<float4> View_VolumetricLightmapBrickAmbientVector;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients0;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients1;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients2;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients3;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients4;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients5;
Texture3D<float4> View_SkyBentNormalBrickTexture;
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
Texture2D<float4> OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture;
Texture2D<float4> OpaqueBasePass_IndirectOcclusionTexture;
Texture2D<float4> OpaqueBasePass_ResolvedSceneDepthTexture;
Texture2D<float4> LandscapeParameters_NormalmapTexture;
SamplerState LandscapeParameters_NormalmapTextureSampler;
Texture2D<float4> Material_Texture2D_0;
Texture2D<float4> Material_Texture2D_1;
SamplerState Material_Texture2D_1Sampler;
Texture2D<float4> Material_Texture2D_2;
Texture2D<float4> Material_Texture2D_3;
SamplerState Material_Texture2D_3Sampler;

static float4 gl_FragCoord;
static float2 in_var_TEXCOORD0;
static float4 in_var_TEXCOORD1;
static uint in_var_PACKED_EYE_INDEX;
static uint in_var_PRIMITIVE_ID;
static float4 in_var_TEXCOORD7;
static float4 out_var_SV_Target0;

struct SPIRV_Cross_Input
{
    float2 in_var_TEXCOORD0 : TEXCOORD0;
    float4 in_var_TEXCOORD1 : TEXCOORD1;
    nointerpolation uint in_var_PACKED_EYE_INDEX : PACKED_EYE_INDEX;
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
    float4 in_var_TEXCOORD7 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
};

static float4 _244 = 0.0f.xxxx;
static float3 _245 = 0.0f.xxx;
static float _249 = 0.0f;
static float4 _250 = 0.0f.xxxx;

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
    bool _286 = false;
    float _283 = 1.0f / gl_FragCoord.w;
    float4x4 _346 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _347 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _348 = 0.0f.xxx;
    float4 _349 = 0.0f.xxxx;
    float4 _350 = 0.0f.xxxx;
    float4 _351 = 0.0f.xxxx;
    float4 _352 = 0.0f.xxxx;
    float2 _353 = 0.0f.xx;
    float4 _354 = 0.0f.xxxx;
    float4x4 _355 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _356 = 0.0f.xxx;
    float3 _357 = 0.0f.xxx;
    float3 _358 = 0.0f.xxx;
    do
    {
        _286 = in_var_PACKED_EYE_INDEX == 0u;
        if (_286)
        {
            _346 = View_View_ViewToClip;
            _347 = View_View_SVPositionToTranslatedWorld;
            _348 = View_View_ViewForward;
            _349 = View_View_ScreenPositionScaleBias;
            _350 = View_View_ViewRectMin;
            _351 = View_View_ViewSizeAndInvSize;
            _352 = View_View_NormalOverrideParameter;
            _353 = View_View_RoughnessOverrideParameter;
            _354 = View_View_SkyLightColor;
            _355 = View_View_RelativeWorldToClip;
            _356 = -View_View_MatrixTilePosition;
            _357 = -View_View_ViewTilePosition;
            _358 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _346 = InstancedView_InstancedView_ViewToClip;
            _347 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _348 = InstancedView_InstancedView_ViewForward;
            _349 = InstancedView_InstancedView_ScreenPositionScaleBias;
            _350 = InstancedView_InstancedView_ViewRectMin;
            _351 = InstancedView_InstancedView_ViewSizeAndInvSize;
            _352 = InstancedView_InstancedView_NormalOverrideParameter;
            _353 = InstancedView_InstancedView_RoughnessOverrideParameter;
            _354 = InstancedView_InstancedView_SkyLightColor;
            _355 = InstancedView_InstancedView_RelativeWorldToClip;
            _356 = -InstancedView_InstancedView_MatrixTilePosition;
            _357 = -InstancedView_InstancedView_ViewTilePosition;
            _358 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float4 _364 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _369 = (float2(_364.zw) * 2.0f.xx) - 1.0f.xx;
    float _373 = sqrt(max(1.0f - dot(_369, _369), 0.0f));
    float _374 = _369.x;
    float3 _376 = float3(_374, _369.y, _373);
    float3 _379 = normalize(float3(_373, 0.0f, -_374));
    float3x3 _391 = mul(float3x3(_379, cross(_376, _379), _376), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz));
    float2 _394 = gl_FragCoord.xy - _350.xy;
    float4 _402 = float4(((_394 * _351.zw) - 0.5f.xx) * float2(2.0f, -2.0f), _249, 1.0f) * _283;
    float4 _407 = mul(float4(gl_FragCoord.xyz, 1.0f), _347);
    float3 _411 = _407.xyz / _407.w.xxx;
    float3 _412 = -_357;
    float3 _413 = _411 - _358;
    float3 _422 = 0.0f.xxx;
    if (_346[3].w >= 1.0f)
    {
        _422 = -_348;
    }
    else
    {
        _422 = normalize(-_411);
    }
    float3 _423 = ddx(_412);
    float3 _425 = ddx(_413);
    float3 _427 = ddy(_412);
    float3 _429 = ddy(_413);
    float3 _432 = _391[2];
    float3 _438 = normalize((cross((_423 * 2097152.0f) + _425, (_427 * 2097152.0f) + _429) * _352.w) + (_432 * (1.0f - _352.w)));
    float3 _448 = Material_Material_PreshaderBuffer[2].w.xxx;
    float3 _449 = _412 * _448;
    float3 _450 = _413 * _448;
    float _457 = frac(_449.x * 2097152.0f) + _450.x;
    float _460 = frac(_449.z * 2097152.0f) + _450.z;
    float4 _465 = Material_Texture2D_0.Sample(View_MaterialTextureBilinearWrapedSampler, float2(_457, _460));
    float _470 = frac(_449.y * 2097152.0f) + _450.y;
    float4 _473 = Material_Texture2D_0.Sample(View_MaterialTextureBilinearWrapedSampler, float2(_470, _460));
    float4 _484 = Material_Texture2D_0.Sample(View_MaterialTextureBilinearWrapedSampler, float2(_457, _470));
    float4 _495 = Material_Texture2D_1.Sample(Material_Texture2D_1Sampler, in_var_TEXCOORD1.xy);
    float _503 = min(max(lerp(-1.0f, 1.0f, dot(_495, Material_Material_PreshaderBuffer[3])) + lerp(lerp(_465.xyz, _473.xyz, clamp(lerp(-1.0f, 2.0f, abs(_391[2].x)), 0.0f, 1.0f).xxx), _484.xyz, clamp(lerp(-1.0f, 2.0f, abs(_391[2].z)), 0.0f, 1.0f).xxx).y, 9.9999997473787516355514526367188e-05f), 1.0f);
    float _506 = dot(_495, Material_Material_PreshaderBuffer[4]);
    float4 _514 = Material_Texture2D_2.Sample(View_MaterialTextureBilinearWrapedSampler, in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[5].y.xx);
    float _522 = min(max(lerp(-1.0f, 1.0f, dot(_495, Material_Material_PreshaderBuffer[6])) + _514.y, 9.9999997473787516355514526367188e-05f), 1.0f);
    float _524 = 1.0f / ((_503 + _506) + _522);
    float4 _542 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[10].w.xx, View_View_MaterialTextureMipBias);
    float _543 = _542.x;
    float3 _573 = clamp(((lerp(Material_Material_PreshaderBuffer[8].xyz, Material_Material_PreshaderBuffer[10].xyz, clamp(clamp((((dot(_432, normalize(float3(0.0f, 0.0f, 1.0f))) * 0.5f) + 0.5f) * 23.0f) + (-20.5f), 0.0f, 1.0f) / clamp((_543 <= 0.0f) ? 0.0f : pow(_543, Material_Material_PreshaderBuffer[11].x), 0.0f, 1.0f), 0.0f, 1.0f).xxx) * (_524 * _503).xxx) + (Material_Material_PreshaderBuffer[10].xyz * (_524 * _506).xxx)) + (Material_Material_PreshaderBuffer[13].xyz * (_524 * _522).xxx), 0.0f.xxx, 1.0f.xxx);
    float _577 = (0.85000002384185791015625f * _353.y) + _353.x;
    float3 _589 = clamp((((_412 * 2097152.0f) + _413) * View_View_VolumetricLightmapWorldToUVScale) + View_View_VolumetricLightmapWorldToUVAdd, 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
    float4 _600 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_589.x), int(_589.y), int(_589.z), 0).xyz, 0)));
    float3 _615 = (((_600.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_589 / _600.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize;
    uint _616 = in_var_PRIMITIVE_ID * 40u;
    uint _620 = asuint(asfloat(View_PrimitiveSceneData.Load4(_616 * 16 + 0)).x);
    float _629 = _402.w;
    float _642 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_616 * 16 + 0)).x) & 4u) != 0u)
    {
        _642 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, _615, 0.0f).x;
    }
    else
    {
        _642 = 1.0f;
    }
    float4 _643 = float4(_642, 1.0f, 1.0f, 1.0f);
    float3 _650 = (_573 * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _657 = (0.039999999105930328369140625f.xxx * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _660 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _665 = 0.0f.xxx;
    if (_660)
    {
        _665 = _650 + (_657 * 0.449999988079071044921875f);
    }
    else
    {
        _665 = _650;
    }
    bool3 _666 = _660.xxx;
    float3 _667 = float3(_666.x ? 0.0f.xxx.x : _657.x, _666.y ? 0.0f.xxx.y : _657.y, _666.z ? 0.0f.xxx.z : _657.z);
    float4 _671 = View_VolumetricLightmapBrickAmbientVector.SampleLevel(View_SharedBilinearClampedSampler, _615, 0.0f);
    float _687 = _671.x;
    float4 _689 = (((View_VolumetricLightmapBrickSHCoefficients0.SampleLevel(View_SharedBilinearClampedSampler, _615, 0.0f) * 2.0f) - 1.0f.xxxx) * _687) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float _690 = _671.y;
    float4 _692 = (((View_VolumetricLightmapBrickSHCoefficients2.SampleLevel(View_SharedBilinearClampedSampler, _615, 0.0f) * 2.0f) - 1.0f.xxxx) * _690) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float _693 = _671.z;
    float4 _695 = (((View_VolumetricLightmapBrickSHCoefficients4.SampleLevel(View_SharedBilinearClampedSampler, _615, 0.0f) * 2.0f) - 1.0f.xxxx) * _693) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float4 _712 = (((View_VolumetricLightmapBrickSHCoefficients1.SampleLevel(View_SharedBilinearClampedSampler, _615, 0.0f) * 2.0f) - 1.0f.xxxx) * _687) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _714 = (((View_VolumetricLightmapBrickSHCoefficients3.SampleLevel(View_SharedBilinearClampedSampler, _615, 0.0f) * 2.0f) - 1.0f.xxxx) * _690) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _716 = (((View_VolumetricLightmapBrickSHCoefficients5.SampleLevel(View_SharedBilinearClampedSampler, _615, 0.0f) * 2.0f) - 1.0f.xxxx) * _693) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float _747 = _438.y;
    float4 _749 = _250;
    _749.y = (-0.48860299587249755859375f) * _747;
    float _750 = _438.z;
    float4 _752 = _749;
    _752.z = 0.48860299587249755859375f * _750;
    float _753 = _438.x;
    float4 _755 = _752;
    _755.w = (-0.48860299587249755859375f) * _753;
    float3 _756 = _438 * _438;
    float4 _759 = _244;
    _759.x = (1.09254801273345947265625f * _753) * _747;
    float4 _762 = _759;
    _762.y = ((-1.09254801273345947265625f) * _747) * _750;
    float4 _767 = _762;
    _767.z = 0.3153919875621795654296875f * ((3.0f * _756.z) - 1.0f);
    float4 _770 = _767;
    _770.w = ((-1.09254801273345947265625f) * _753) * _750;
    float4 _774 = _755;
    _774.x = 0.886227548122406005859375f;
    float3 _776 = _774.yzw * 2.094395160675048828125f;
    float4 _777 = float4(_774.x, _776.x, _776.y, _776.z);
    float4 _778 = _770 * 0.785398185253143310546875f;
    float _779 = (_756.x - _756.y) * 0.4290426075458526611328125f;
    float3 _785 = 0.0f.xxx;
    _785.x = (dot(float4(_687, _689.xyz), _777) + dot(float4(_689.w, _712.xyz), _778)) + (_712.w * _779);
    float3 _791 = _785;
    _791.y = (dot(float4(_690, _692.xyz), _777) + dot(float4(_692.w, _714.xyz), _778)) + (_714.w * _779);
    float3 _797 = _791;
    _797.z = (dot(float4(_693, _695.xyz), _777) + dot(float4(_695.w, _716.xyz), _778)) + (_716.w * _779);
    float3 _879 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _831 = 0.0f;
        float _832 = 0.0f;
        float3 _833 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _818 = (View_SkyBentNormalBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, _615, 0.0f).xyz * 2.0f) - 1.0f.xxx;
            float _819 = length(_818);
            float3 _822 = _818 / max(_819, 9.9999997473787516355514526367188e-05f).xxx;
            float _823 = 1.0f - _819;
            float _825 = 1.0f - (_823 * _823);
            _831 = lerp(clamp(dot(_822, _438), 0.0f, 1.0f), 1.0f, _825);
            _832 = _819;
            _833 = lerp(_822, _438, _825.xxx);
        }
        else
        {
            _831 = 1.0f;
            _832 = 1.0f;
            _833 = _438;
        }
        float4 _837 = float4(_833, 1.0f);
        float3 _841 = _245;
        _841.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _837);
        float3 _845 = _841;
        _845.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _837);
        float3 _849 = _845;
        _849.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _837);
        float4 _852 = _837.xyzz * _837.yzzx;
        float3 _856 = _245;
        _856.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _852);
        float3 _860 = _856;
        _860.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _852);
        float3 _864 = _860;
        _864.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _852);
        _879 = (max(0.0f.xxx, (_849 + _864) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * ((_833.x * _833.x) - (_833.y * _833.y)))) * _354.xyz) * (_832 * _831);
    }
    else
    {
        _879 = 0.0f.xxx;
    }
    float3 _880 = ((max(0.0f.xxx, _797) * 0.3183098733425140380859375f.xxx) * View_View_PrecomputedIndirectLightingColorScale) + _879;
    float2 _888 = ((_402.xy / _629.xx) * _349.xy) + _349.wz;
    float2 _1007 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _899 = int2(trunc(_888 * View_View_BufferSizeAndInvSize.xy));
        int _900 = _899.x;
        int _901 = _899.y;
        float4 _905 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_900, _901, 0).xy, 0));
        float _906 = _905.x;
        float2 _1006 = 0.0f.xx;
        if ((abs((((_906 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_906 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _629) / _629) > 0.00999999977648258209228515625f)
        {
            float2 _930 = _888 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _934 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_900 - 1, _901, 0).xy, 0));
            float _935 = _934.x;
            float _943 = abs((((_935 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_935 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _629);
            bool _944 = _943 < 100000000.0f;
            bool2 _945 = _944.xx;
            float2 _946 = float2(_945.x ? _930.x : _888.x, _945.y ? _930.y : _888.y);
            float _947 = _944 ? _943 : 100000000.0f;
            float2 _950 = _888 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _954 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_900, _901 + 1, 0).xy, 0));
            float _955 = _954.x;
            float _963 = abs((((_955 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_955 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _629);
            bool _964 = _963 < _947;
            bool2 _965 = _964.xx;
            float2 _966 = float2(_965.x ? _950.x : _946.x, _965.y ? _950.y : _946.y);
            float _967 = _964 ? _963 : _947;
            float2 _969 = _888 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _973 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_900 + 1, _901, 0).xy, 0));
            float _974 = _973.x;
            float _982 = abs((((_974 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_974 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _629);
            bool _983 = _982 < _967;
            bool2 _984 = _983.xx;
            float2 _985 = float2(_984.x ? _969.x : _966.x, _984.y ? _969.y : _966.y);
            float2 _989 = _888 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _993 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_900, _901 - 1, 0).xy, 0));
            float _994 = _993.x;
            bool2 _1004 = (abs((((_994 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_994 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _629) < (_983 ? _982 : _967)).xx;
            _1006 = float2(_1004.x ? _989.x : _985.x, _1004.y ? _989.y : _985.y);
        }
        else
        {
            _1006 = _888;
        }
        _1007 = _1006;
    }
    else
    {
        _1007 = _888;
    }
    uint _1013_dummy_parameter;
    uint2 _1013 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _1013_dummy_parameter);
    float _1031 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_1007 * float2(float(_1013.x), float(_1013.y)))), 0).xy, 0)).x, ((uint(((2.0f * float((_620 & 128u) != 0u)) + float((_620 & 256u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    uint _1068 = 0u;
    float3 _1069 = 0.0f.xxx;
    int3 _1070 = int3(0, 0, 0);
    [branch]
    if (_286)
    {
        _1068 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift;
        _1069 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams;
        _1070 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _1068 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
        _1069 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridZParams;
        _1070 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint2 _1086 = uint2(_394 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (_1068.xx & uint2(31u, 31u));
    int3 _1096 = int3(0, 0, 0);
    [branch]
    if (_286)
    {
        _1096 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _1096 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint _1104 = (((min(uint(max(0.0f, log2((_283 * _1069.x) + _1069.y) * _1069.z)), uint(_1070.z - 1)) * uint(_1096.y)) + _1086.y) * uint(_1096.x)) + _1086.x;
    float4 _1122 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _1122 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_1007 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _1122 = 1.0f.xxxx;
    }
    float4 _1123 = _1122 * _1122;
    uint _1126 = asuint(asfloat(View_PrimitiveSceneData.Load4(_616 * 16 + 0)).x);
    uint _1139 = (uint((_1126 & 1024u) != 0u) | (uint((_1126 & 2048u) != 0u) << 1u)) | (uint((_1126 & 4096u) != 0u) << 2u);
    uint _1163 = 0u;
    uint _1164 = 0u;
    float2 _1165 = 0.0f.xx;
    float3 _1166 = 0.0f.xxx;
    float3 _1167 = 0.0f.xxx;
    [branch]
    if (_286)
    {
        _1163 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight;
        _1164 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
        _1165 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
        _1166 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor;
        _1167 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection;
    }
    else
    {
        _1163 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_HasDirectionalLight;
        _1164 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
        _1165 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
        _1166 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightColor;
        _1167 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDirection;
    }
    float4 _1307 = 0.0f.xxxx;
    float4 _1308 = 0.0f.xxxx;
    [branch]
    if (_1163 != 0u)
    {
        float4 _1186 = float4(float((_1164 & 1u) != 0u), float((_1164 & 2u) != 0u), float((_1164 & 4u) != 0u), float((_1164 & 8u) != 0u));
        uint _1187 = _1164 >> 4u;
        float _1201 = dot(float4(float((_1187 & 1u) != 0u), float((_1187 & 2u) != 0u), float((_1187 & 4u) != 0u), float((_1187 & 8u) != 0u)), _1123);
        bool _1203 = _1165.y < 0.0f;
        float _1204 = _1203 ? 1.0f : _1201;
        float _1221 = 0.0f;
        float _1222 = 0.0f;
        [branch]
        if (uint((_1164 & 255u) != 0u) != 0u)
        {
            float _1215 = clamp((_629 * _1165.x) + _1165.y, 0.0f, 1.0f);
            float _1217 = lerp(_1203 ? _1201 : 1.0f, lerp(1.0f, dot(_643, _1186), dot(_1186, 1.0f.xxxx)), _1215 * _1215);
            _1221 = min(_1217, _1204) * _1204;
            _1222 = _1217 * _1204;
        }
        else
        {
            _1221 = 1.0f;
            _1222 = 1.0f;
        }
        float3 _1291 = 0.0f.xxx;
        float3 _1292 = 0.0f.xxx;
        [branch]
        if ((_1222 + _1221) > 0.0f)
        {
            float _1229 = max(_577, View_View_MinRoughness);
            float3 _1232 = _1167 * rsqrt(dot(_1167, _1167));
            float _1233 = dot(_438, _1232);
            float _1234 = clamp(_1233, 0.0f, 1.0f);
            float _1235 = dot(_438, _422);
            float _1236 = dot(_422, _1232);
            float _1239 = rsqrt(2.0f + (2.0f * _1236));
            float _1242 = clamp((_1233 + _1235) * _1239, 0.0f, 1.0f);
            float _1248 = clamp(abs(_1235) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float3 _1250 = 1.0f.xxx * _1234;
            float _1252 = _1229 * _1229;
            float _1253 = _1252 * _1252;
            float _1257 = (((_1242 * _1253) - _1242) * _1242) + 1.0f;
            float _1261 = sqrt(_1253);
            float _1262 = 1.0f - _1261;
            float _1271 = 1.0f - clamp(_1239 + (_1239 * _1236), 0.0f, 1.0f);
            float _1272 = _1271 * _1271;
            float _1274 = (_1272 * _1272) * _1271;
            float3 _1288 = (_1166 * 1.0f) * _1222;
            _1291 = ((_665 * 0.3183098733425140380859375f) * _1250) * _1288;
            _1292 = ((_1250 * (((clamp(50.0f * _667.y, 0.0f, 1.0f) * _1274).xxx + (_667 * (1.0f - _1274))) * ((_1253 / ((3.1415927410125732421875f * _1257) * _1257)) * (0.5f / ((_1234 * ((_1248 * _1262) + _1261)) + (_1248 * ((_1234 * _1262) + _1261))))))) * 1.0f) * _1288;
        }
        else
        {
            _1291 = 0.0f.xxx;
            _1292 = 0.0f.xxx;
        }
        float4 _1296 = float4(_1291, 0.0f);
        float4 _1300 = float4(_1292, 0.0f);
        bool4 _1304 = (((_1164 >> 8u) & _1139) != 0u).xxxx;
        _1307 = float4(_1304.x ? _1296.x : 0.0f.xxxx.x, _1304.y ? _1296.y : 0.0f.xxxx.y, _1304.z ? _1296.z : 0.0f.xxxx.z, _1304.w ? _1296.w : 0.0f.xxxx.w);
        _1308 = float4(_1304.x ? _1300.x : 0.0f.xxxx.x, _1304.y ? _1300.y : 0.0f.xxxx.y, _1304.z ? _1300.z : 0.0f.xxxx.z, _1304.w ? _1300.w : 0.0f.xxxx.w);
    }
    else
    {
        _1307 = 0.0f.xxxx;
        _1308 = 0.0f.xxxx;
    }
    uint _1332 = 0u;
    uint _1333 = 0u;
    [branch]
    if (_286)
    {
        uint _1322 = _1104 * 2u;
        _1332 = min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1322).x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
        _1333 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1322 + 1u).x;
    }
    else
    {
        uint _1312 = _1104 * 2u;
        _1332 = min(OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1312).x, OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights);
        _1333 = OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1312 + 1u).x;
    }
    uint _1339 = min(_1332, (_286 ? OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights : OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights));
    float4 _1341 = 0.0f.xxxx;
    float4 _1344 = 0.0f.xxxx;
    _1341 = _1307;
    _1344 = _1308;
    float4 _1342 = 0.0f.xxxx;
    float4 _1345 = 0.0f.xxxx;
    [loop]
    for (uint _1346 = 0u; _1346 < _1339; _1341 = _1342, _1344 = _1345, _1346++)
    {
        uint _1351 = _1333 + _1346;
        float4 _1383 = 0.0f.xxxx;
        float4 _1384 = 0.0f.xxxx;
        float4 _1385 = 0.0f.xxxx;
        float4 _1386 = 0.0f.xxxx;
        float4 _1387 = 0.0f.xxxx;
        [branch]
        if (_286)
        {
            uint _1372 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid.Load(_1351).x * 6u;
            _1383 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1372);
            _1384 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1372 + 1u);
            _1385 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1372 + 3u);
            _1386 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1372 + 2u);
            _1387 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1372 + 4u);
        }
        else
        {
            uint _1358 = OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid.Load(_1351).x * 6u;
            _1383 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1358);
            _1384 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1358 + 1u);
            _1385 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1358 + 3u);
            _1386 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1358 + 2u);
            _1387 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1358 + 4u);
        }
        float2 _1396 = spvUnpackHalf2x16(asuint(_1385.w));
        float _1397 = _1396.x;
        bool _1400 = _1384.w == 0.0f;
        uint _1404 = asuint(_1386.w);
        float4 _1420 = float4(float((_1404 & 1u) != 0u), float((_1404 & 2u) != 0u), float((_1404 & 4u) != 0u), float((_1404 & 8u) != 0u));
        uint _1421 = _1404 >> 4u;
        float3 _1436 = _1383.xyz - _411;
        float _1437 = dot(_1436, _1436);
        float _1454 = 0.0f;
        if (_1400)
        {
            float _1449 = _1437 * (_1383.w * _1383.w);
            float _1452 = clamp(1.0f - (_1449 * _1449), 0.0f, 1.0f);
            _1454 = _1452 * _1452;
        }
        else
        {
            float3 _1443 = _1436 * _1383.w;
            _1454 = pow(1.0f - clamp(dot(_1443, _1443), 0.0f, 1.0f), _1384.w);
        }
        float _1464 = 0.0f;
        if (_1385.x > (-2.0f))
        {
            float _1461 = clamp((dot(_1436 * rsqrt(_1437), _1386.xyz) - _1385.x) * _1385.y, 0.0f, 1.0f);
            _1464 = _1454 * (_1461 * _1461);
        }
        else
        {
            _1464 = _1454;
        }
        float3 _1784 = 0.0f.xxx;
        float3 _1785 = 0.0f.xxx;
        [branch]
        if (_1464 > 0.0f)
        {
            float _1475 = 0.0f;
            [branch]
            if (uint((_1404 & 255u) != 0u) != 0u)
            {
                _1475 = dot(float4(float((_1421 & 1u) != 0u), float((_1421 & 2u) != 0u), float((_1421 & 4u) != 0u), float((_1421 & 8u) != 0u)), _1123) * lerp(1.0f, dot(_643, _1420), dot(_1420, 1.0f.xxxx));
            }
            else
            {
                _1475 = 1.0f;
            }
            float3 _1782 = 0.0f.xxx;
            float3 _1783 = 0.0f.xxx;
            [branch]
            if ((_1475 + _1475) > 0.0f)
            {
                float3 _1481 = _1387.xyz * (0.5f * _1397);
                float3 _1482 = _1436 - _1481;
                float3 _1483 = _1436 + _1481;
                float _1486 = max(_577, View_View_MinRoughness);
                bool _1487 = _1397 > 0.0f;
                float _1514 = 0.0f;
                float _1515 = 0.0f;
                float _1516 = 0.0f;
                [branch]
                if (_1487)
                {
                    float _1499 = rsqrt(dot(_1482, _1482));
                    float _1500 = rsqrt(dot(_1483, _1483));
                    float _1501 = _1499 * _1500;
                    float _1503 = dot(_1482, _1483) * _1501;
                    _1514 = _1503;
                    _1515 = 0.5f * ((dot(_438, _1482) * _1499) + (dot(_438, _1483) * _1500));
                    _1516 = _1501 / (((_1503 * 0.5f) + 0.5f) + _1501);
                }
                else
                {
                    float _1491 = dot(_1482, _1482);
                    _1514 = 1.0f;
                    _1515 = dot(_438, _1482 * rsqrt(_1491));
                    _1516 = 1.0f / (_1491 + 1.0f);
                }
                float _1534 = 0.0f;
                if (_1385.z > 0.0f)
                {
                    float _1523 = sqrt(clamp((_1385.z * _1385.z) * _1516, 0.0f, 1.0f));
                    float _1533 = 0.0f;
                    if (_1515 < _1523)
                    {
                        float _1529 = _1523 + max(_1515, -_1523);
                        _1533 = (_1529 * _1529) / (4.0f * _1523);
                    }
                    else
                    {
                        _1533 = _1515;
                    }
                    _1534 = _1533;
                }
                else
                {
                    _1534 = _1515;
                }
                float _1535 = clamp(_1534, 0.0f, 1.0f);
                float3 _1553 = 0.0f.xxx;
                if (_1487)
                {
                    float3 _1540 = reflect(-_422, _438);
                    float3 _1541 = _1483 - _1482;
                    float _1543 = dot(_1540, _1541);
                    _1553 = _1482 + (_1541 * clamp(dot(_1482, (_1540 * _1543) - _1541) / ((_1397 * _1397) - (_1543 * _1543)), 0.0f, 1.0f));
                }
                else
                {
                    _1553 = _1482;
                }
                float _1555 = rsqrt(dot(_1553, _1553));
                float3 _1556 = _1553 * _1555;
                float _1557 = max(_1486, View_View_MinRoughness);
                float _1562 = clamp((_1385.z * _1555) * (1.0f - (_1557 * _1557)), 0.0f, 1.0f);
                float _1564 = clamp(_1387.w * _1555, 0.0f, 1.0f);
                float _1572 = dot(_438, _1556);
                float _1573 = dot(_438, _422);
                float _1574 = dot(_422, _1556);
                float _1577 = rsqrt(2.0f + (2.0f * _1574));
                bool _1584 = _1562 > 0.0f;
                float _1679 = 0.0f;
                float _1680 = 0.0f;
                if (_1584)
                {
                    float _1589 = sqrt(1.0f - (_1562 * _1562));
                    float _1591 = (2.0f * _1572) * _1573;
                    float _1592 = _1591 - _1574;
                    float _1677 = 0.0f;
                    float _1678 = 0.0f;
                    if (_1592 >= _1589)
                    {
                        _1677 = 1.0f;
                        _1678 = abs(_1573);
                    }
                    else
                    {
                        float _1600 = _1562 * rsqrt(1.0f - (_1592 * _1592));
                        float _1603 = _1600 * (_1573 - (_1592 * _1572));
                        float _1609 = _1600 * ((((2.0f * _1573) * _1573) - 1.0f) - (_1592 * _1574));
                        float _1620 = _1600 * sqrt(clamp((((1.0f - (_1572 * _1572)) - (_1573 * _1573)) - (_1574 * _1574)) + (_1591 * _1574), 0.0f, 1.0f));
                        float _1622 = (_1620 * 2.0f) * _1573;
                        float _1623 = _1572 * _1589;
                        float _1624 = _1623 + _1573;
                        float _1625 = _1624 + _1603;
                        float _1626 = _1574 * _1589;
                        float _1628 = (_1626 + 1.0f) + _1609;
                        float _1629 = _1620 * _1628;
                        float _1630 = _1625 * _1628;
                        float _1631 = _1622 * _1625;
                        float _1636 = _1630 * (((-0.5f) * _1629) + ((0.25f * _1622) * _1625));
                        float _1650 = ((_1629 * _1629) + (_1631 * (_1631 - (2.0f * _1629)))) + (_1625 * ((_1624 * (_1628 * _1628)) + (_1630 * (((-0.5f) * (_1628 + _1626)) - 0.5f))));
                        float _1655 = (2.0f * _1636) / ((_1650 * _1650) + (_1636 * _1636));
                        float _1656 = _1655 * _1650;
                        float _1658 = 1.0f - (_1655 * _1636);
                        float _1666 = _1626 + ((_1658 * _1609) + (_1656 * _1622));
                        float _1669 = rsqrt(2.0f + (2.0f * _1666));
                        _1677 = clamp(((_1623 + ((_1658 * _1603) + (_1656 * _1620))) + _1573) * _1669, 0.0f, 1.0f);
                        _1678 = clamp(_1669 + (_1669 * _1666), 0.0f, 1.0f);
                    }
                    _1679 = _1677;
                    _1680 = _1678;
                }
                else
                {
                    _1679 = clamp((_1572 + _1573) * _1577, 0.0f, 1.0f);
                    _1680 = clamp(_1577 + (_1577 * _1574), 0.0f, 1.0f);
                }
                float _1683 = clamp(abs(_1573) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1686 = 1.0f.xxx * ((_1400 ? _1516 : 1.0f) * _1535);
                float3 _1776 = 0.0f.xxx;
                if (((0u | (asuint(clamp(1.0f - (max(_1397, _1385.z) * 0.0500000007450580596923828125f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1776 = 0.0f.xxx;
                }
                else
                {
                    float _1693 = _1486 * _1486;
                    float _1694 = _1693 * _1693;
                    float _1704 = 0.0f;
                    if (_1564 > 0.0f)
                    {
                        _1704 = clamp(_1694 + ((_1564 * _1564) / ((_1680 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1704 = _1694;
                    }
                    float _1719 = 0.0f;
                    float _1720 = 0.0f;
                    if (_1584)
                    {
                        float _1717 = _1704 + (((0.25f * _1562) * ((3.0f * asfloat(532487669 + (asint(_1704) >> 1))) + _1562)) / (_1680 + 0.001000000047497451305389404296875f));
                        _1719 = _1704 / _1717;
                        _1720 = _1717;
                    }
                    else
                    {
                        _1719 = 1.0f;
                        _1720 = _1704;
                    }
                    float _1742 = 0.0f;
                    if (_1514 < 1.0f)
                    {
                        float _1727 = sqrt((1.00010001659393310546875f - _1514) / (1.0f + _1514));
                        _1742 = _1719 * sqrt(_1720 / (_1720 + (((0.25f * _1727) * ((3.0f * asfloat(532487669 + (asint(_1720) >> 1))) + _1727)) / (_1680 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _1742 = _1719;
                    }
                    float _1746 = (((_1679 * _1704) - _1679) * _1679) + 1.0f;
                    float _1751 = sqrt(_1704);
                    float _1752 = 1.0f - _1751;
                    float _1761 = 1.0f - _1680;
                    float _1762 = _1761 * _1761;
                    float _1764 = (_1762 * _1762) * _1761;
                    _1776 = _1686 * (((clamp(50.0f * _667.y, 0.0f, 1.0f) * _1764).xxx + (_667 * (1.0f - _1764))) * (((_1704 / ((3.1415927410125732421875f * _1746) * _1746)) * _1742) * (0.5f / ((_1535 * ((_1683 * _1752) + _1751)) + (_1683 * ((_1535 * _1752) + _1751))))));
                }
                float3 _1779 = (_1384.xyz * _1464) * _1475;
                _1782 = ((_665 * 0.3183098733425140380859375f) * _1686) * _1779;
                _1783 = (_1776 * 1.0f) * _1779;
            }
            else
            {
                _1782 = 0.0f.xxx;
                _1783 = 0.0f.xxx;
            }
            _1784 = _1782;
            _1785 = _1783;
        }
        else
        {
            _1784 = 0.0f.xxx;
            _1785 = 0.0f.xxx;
        }
        [flatten]
        if (((_1404 >> 8u) & _1139) != 0u)
        {
            _1342 = _1341 + float4(_1784, 0.0f);
            _1345 = _1344 + float4(_1785, 0.0f);
        }
        else
        {
            _1342 = _1341;
            _1345 = _1344;
        }
    }
    bool4 _1804 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1813 = int(asuint(asfloat(View_PrimitiveSceneData.Load4(_616 * 16 + 0)).w));
    float3 _1817 = (_438 * (2.0f * dot(_422, _438))) - _422;
    float _1825 = 1.0f - (1.2000000476837158203125f * log2(max(_577, 0.001000000047497451305389404296875f)));
    float4 _1841 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1817, ReflectionCapture_ReflectionCapture_CaptureProperties[_1813].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1825);
    float _1845 = 1.0f - _1841.w;
    float4 _1849 = float4(_1841.xyz * ReflectionCapture_ReflectionCapture_CaptureProperties[_1813].x, _1845);
    float3 _1854 = _1849.xyz * View_View_PrecomputedIndirectSpecularColorScale;
    float4 _1855 = float4(_1854.x, _1854.y, _1854.z, _1849.w);
    float4 _1892 = 0.0f.xxxx;
    float3 _1893 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        float3 _1876 = OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1817, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1825).xyz * View_View_SkyLightColor.xyz;
        float4 _1890 = 0.0f.xxxx;
        float3 _1891 = 0.0f.xxx;
        [flatten]
        if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.z < 1.0f) && true)
        {
            float3 _1888 = _1854.xyz + ((_1876 * _1845) * 1.0f);
            _1890 = float4(_1888.x, _1888.y, _1888.z, _1849.w);
            _1891 = 0.0f.xxx;
        }
        else
        {
            _1890 = _1855;
            _1891 = _1876 * 1.0f;
        }
        _1892 = _1890;
        _1893 = _1891;
    }
    else
    {
        _1892 = _1855;
        _1893 = 0.0f.xxx;
    }
    float4 _1916 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _577) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1917 = _1916.x;
    float2 _1927 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_1917 * _1917, exp2((-9.27999973297119140625f) * clamp(dot(_438, _422), 0.0f, 1.0f))) * _1917) + _1916.y)) + _1916.zw;
    bool _1955 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2021 = 0.0f.xxxx;
    if (_1955)
    {
        float4 _1973 = mul(((float4(_412, 0.0f) + float4(_356, 0.0f)) * 2097152.0f) + float4(_413, 1.0f), _355);
        float _1974 = _1973.w;
        float3 _1996 = float3(((_1973.xy / _1974.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_1974 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _2009 = 0.0f.xxxx;
        if (_1955)
        {
            float4 _2008 = 0.0f.xxxx;
            if (_286)
            {
                _2008 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1996, 0.0f);
            }
            else
            {
                _2008 = OpaqueBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1996, 0.0f);
            }
            _2009 = _2008;
        }
        else
        {
            _2009 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _2021 = float4(_2009.xyz + (in_var_TEXCOORD7.xyz * _2009.w), _2009.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _2021 = in_var_TEXCOORD7;
    }
    float3 _2028 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[1].yzw, Material_Material_PreshaderBuffer[1].x.xxx), 0.0f.xxx);
    float3 _2085 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _2059 = abs(((_412 - asfloat(View_PrimitiveSceneData.Load4((_616 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_413 - asfloat(View_PrimitiveSceneData.Load4((_616 + 19u) * 16 + 0)).xyz));
        float3 _2060 = float3(asfloat(View_PrimitiveSceneData.Load4((_616 + 18u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_616 + 25u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_616 + 26u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _2084 = 0.0f.xxx;
        if (any(bool3(_2059.x > _2060.x, _2059.y > _2060.y, _2059.z > _2060.z)))
        {
            float3 _2080 = frac(frac(((_412.x + _412.y) + _412.z) * 2420.113525390625f) + (((_413.x + _413.y) + _413.z) * 0.001154000055976212024688720703125f)).xxx;
            _2084 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2080.x > 0.5f.xxx.x, _2080.y > 0.5f.xxx.y, _2080.z > 0.5f.xxx.z)));
        }
        else
        {
            _2084 = _2028;
        }
        _2085 = _2084;
    }
    else
    {
        _2085 = _2028;
    }
    float4 _2096 = float4((((lerp((float4(_1804.x ? 0.0f.xxxx.x : _1341.x, _1804.y ? 0.0f.xxxx.y : _1341.y, _1804.z ? 0.0f.xxxx.z : _1341.z, _1804.w ? 0.0f.xxxx.w : _1341.w).xyz + float4(_1804.x ? 0.0f.xxxx.x : _1344.x, _1804.y ? 0.0f.xxxx.y : _1344.y, _1804.z ? 0.0f.xxxx.z : _1344.z, _1804.w ? 0.0f.xxxx.w : _1344.w).xyz) + (((((_1892.xyz * lerp(1.0f, min((dot(_880, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * _1031) / max(ReflectionCapture_ReflectionCapture_CaptureOffsetAndAverageBrightness[_1813].w * dot(View_View_PrecomputedIndirectSpecularColorScale, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)), 9.9999997473787516355514526367188e-05f), View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp((_577 * View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x) + View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y, 0.0f, 1.0f)))).xyz + (_1893 * _1892.w)).xyz * ((_667 * _1927.x) + (clamp(50.0f * _667.y, 0.0f, 1.0f) * _1927.y).xxx)) * _1031) * max(1.0f.xxx, ((((((_667 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_667 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_667 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)), _665 + (_667 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + (((_880 * _1031) * _665) * max(1.0f.xxx, ((((((_573 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_573 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_573 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f))) + _2085) * _2021.w) + _2021.xyz, 0.0f);
    _2096.w = 0.0f;
    out_var_SV_Target0 = _2096 * View_View_PreExposure;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD1 = stage_input.in_var_TEXCOORD1;
    in_var_PACKED_EYE_INDEX = stage_input.in_var_PACKED_EYE_INDEX;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
    in_var_TEXCOORD7 = stage_input.in_var_TEXCOORD7;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    return stage_output;
}
