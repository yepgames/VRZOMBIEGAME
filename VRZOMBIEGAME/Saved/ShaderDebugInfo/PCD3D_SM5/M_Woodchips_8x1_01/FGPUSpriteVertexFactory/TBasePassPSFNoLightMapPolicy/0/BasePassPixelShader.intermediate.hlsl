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
    float3 TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDirection : packoffset(c4);
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
    float3 TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightDirection : packoffset(c45);
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
Texture3D<float4> TranslucentBasePass_TranslucencyGIVolumeHistory1;
SamplerState TranslucentBasePass_TranslucencyGIVolumeSampler;
Texture2D<uint4> VirtualShadowMap_PhysicalPagePool;
Texture2D<float4> Material_Texture2D_0;
SamplerState Material_Texture2D_0Sampler;
Texture2D<float4> Material_Texture2D_1;
SamplerState Material_Texture2D_1Sampler;

static float4 gl_FragCoord;
static float4 in_var_TEXCOORD0[1];
static float4 in_var_TEXCOORD5;
static float4 in_var_TANGENTX;
static float4 in_var_TANGENTZ;
static uint in_var_PACKED_EYE_INDEX;
static float4 in_var_TEXCOORD7;
static float4 out_var_SV_Target0;

struct SPIRV_Cross_Input
{
    float4 in_var_TEXCOORD0[1] : TEXCOORD0;
    float4 in_var_TEXCOORD5 : TEXCOORD5;
    float4 in_var_TANGENTX : TANGENTX;
    float4 in_var_TANGENTZ : TANGENTZ;
    nointerpolation uint in_var_PACKED_EYE_INDEX : PACKED_EYE_INDEX;
    float4 in_var_TEXCOORD7 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
};

static float _232 = 0.0f;
static float4x4 _233 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
static float _237 = 0.0f;
static float4 _238 = 0.0f.xxxx;
static float3 _239 = 0.0f.xxx;

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
    bool _268 = false;
    float _265 = 1.0f / gl_FragCoord.w;
    float4x4 _316 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _317 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _318 = 0.0f.xxx;
    float4 _319 = 0.0f.xxxx;
    float4 _320 = 0.0f.xxxx;
    float2 _321 = 0.0f.xx;
    float4x4 _322 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _323 = 0.0f.xxx;
    float3 _324 = 0.0f.xxx;
    float3 _325 = 0.0f.xxx;
    do
    {
        _268 = in_var_PACKED_EYE_INDEX == 0u;
        if (_268)
        {
            _316 = View_View_ViewToClip;
            _317 = View_View_SVPositionToTranslatedWorld;
            _318 = View_View_ViewForward;
            _319 = View_View_ViewRectMin;
            _320 = View_View_NormalOverrideParameter;
            _321 = View_View_RoughnessOverrideParameter;
            _322 = View_View_RelativeWorldToClip;
            _323 = -View_View_MatrixTilePosition;
            _324 = -View_View_ViewTilePosition;
            _325 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _316 = InstancedView_InstancedView_ViewToClip;
            _317 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _318 = InstancedView_InstancedView_ViewForward;
            _319 = InstancedView_InstancedView_ViewRectMin;
            _320 = InstancedView_InstancedView_NormalOverrideParameter;
            _321 = InstancedView_InstancedView_RoughnessOverrideParameter;
            _322 = InstancedView_InstancedView_RelativeWorldToClip;
            _323 = -InstancedView_InstancedView_MatrixTilePosition;
            _324 = -InstancedView_InstancedView_ViewTilePosition;
            _325 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float4 _338 = float4(_237, _237, _237, 1.0f) * _265;
    float4 _343 = mul(float4(gl_FragCoord.xyz, 1.0f), _317);
    float3 _347 = _343.xyz / _343.w.xxx;
    float3 _348 = -_324;
    float3 _349 = _347 - _325;
    float3 _358 = 0.0f.xxx;
    if (_316[3].w >= 1.0f)
    {
        _358 = -_318;
    }
    else
    {
        _358 = normalize(-_347);
    }
    float4 _364 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float3 _373 = normalize(mul(normalize((_364.xyz * _320.w) + _320.xyz), float3x3(in_var_TANGENTX.xyz, cross(in_var_TANGENTZ.xyz, in_var_TANGENTX.xyz) * in_var_TANGENTZ.w, in_var_TANGENTZ.xyz))) * 1.0f;
    float4 _384 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), View_View_MaterialTextureMipBias);
    float3 _391 = clamp(_384.xyz * in_var_TEXCOORD5.xyz, 0.0f.xxx, 1.0f.xxx);
    float _395 = (0.5f * _321.y) + _321.x;
    float _396 = clamp(_384.w * in_var_TEXCOORD5.w, 0.0f, 1.0f);
    float _397 = _338.w;
    float _447 = 0.0f;
    [branch]
    if ((Primitive_Primitive_Flags & 4u) != 0u)
    {
        float3 _415 = clamp((((_348 * 2097152.0f) + _349) * View_View_VolumetricLightmapWorldToUVScale) + View_View_VolumetricLightmapWorldToUVAdd, 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _426 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_415.x), int(_415.y), int(_415.z), 0).xyz, 0)));
        _447 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_426.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_415 / _426.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _447 = 1.0f;
    }
    float4 _448 = float4(_447, 1.0f, 1.0f, 1.0f);
    float3 _455 = (_391 * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _462 = (0.039999999105930328369140625f.xxx * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _465 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _470 = 0.0f.xxx;
    if (_465)
    {
        _470 = _455 + (_462 * 0.449999988079071044921875f);
    }
    else
    {
        _470 = _455;
    }
    bool3 _471 = _465.xxx;
    float3 _472 = float3(_471.x ? 0.0f.xxx.x : _462.x, _471.y ? 0.0f.xxx.y : _462.y, _471.z ? 0.0f.xxx.z : _462.z);
    float3 _566 = 0.0f.xxx;
    if (TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z > 0)
    {
        float4 _494 = mul(((float4(_348, 0.0f) + float4(_323, 0.0f)) * 2097152.0f) + float4(_349, 1.0f), _322);
        float _495 = _494.w;
        float3 _516 = float3(((_494.xy / _495.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_495 * TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.x) + TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.y) * TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.z) / float(TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z));
        float4 _520 = TranslucentBasePass_TranslucencyGIVolumeHistory0.SampleLevel(TranslucentBasePass_TranslucencyGIVolumeSampler, _516, 0.0f);
        float3 _521 = _520.xyz;
        float3 _525 = TranslucentBasePass_TranslucencyGIVolumeHistory1.SampleLevel(TranslucentBasePass_TranslucencyGIVolumeSampler, _516, 0.0f).xyz;
        float4 _527 = _238;
        _527.x = _520.x;
        float4 _529 = _238;
        _529.x = _520.y;
        float4 _531 = _238;
        _531.x = _520.z;
        float3 _535 = _521 / (dot(_521, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) + 9.9999997473787516355514526367188e-06f).xxx;
        float3 _537 = _525 * _535.x;
        float3 _540 = _525 * _535.y;
        float3 _543 = _525 * _535.z;
        float4 _547 = _238;
        _547.y = (-0.48860299587249755859375f) * _373.y;
        float4 _550 = _547;
        _550.z = 0.48860299587249755859375f * _373.z;
        float4 _553 = _550;
        _553.w = (-0.48860299587249755859375f) * _373.x;
        float4 _554 = _553;
        _554.x = 0.886227548122406005859375f;
        float3 _556 = _554.yzw * 2.094395160675048828125f;
        float4 _557 = float4(_554.x, _556.x, _556.y, _556.z);
        float3 _559 = _239;
        _559.x = dot(float4(_527.x, _537.x, _537.y, _537.z), _557);
        float3 _561 = _559;
        _561.y = dot(float4(_529.x, _540.x, _540.y, _540.z), _557);
        float3 _563 = _561;
        _563.z = dot(float4(_531.x, _543.x, _543.y, _543.z), _557);
        _566 = max(0.0f.xxx, _563) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _566 = 0.0f.xxx;
    }
    uint _601 = 0u;
    float3 _602 = 0.0f.xxx;
    int3 _603 = int3(0, 0, 0);
    [branch]
    if (_268)
    {
        _601 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridPixelSizeShift;
        _602 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams;
        _603 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _601 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
        _602 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_LightGridZParams;
        _603 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint2 _619 = uint2((gl_FragCoord.xy - _319.xy) * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (_601.xx & uint2(31u, 31u));
    int3 _629 = int3(0, 0, 0);
    [branch]
    if (_268)
    {
        _629 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _629 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint _637 = (((min(uint(max(0.0f, log2((_265 * _602.x) + _602.y) * _602.z)), uint(_603.z - 1)) * uint(_629.y)) + _619.y) * uint(_629.x)) + _619.x;
    uint _650 = (uint((Primitive_Primitive_Flags & 1024u) != 0u) | (uint((Primitive_Primitive_Flags & 2048u) != 0u) << 1u)) | (uint((Primitive_Primitive_Flags & 4096u) != 0u) << 2u);
    uint _674 = 0u;
    uint _675 = 0u;
    float2 _676 = 0.0f.xx;
    float3 _677 = 0.0f.xxx;
    float3 _678 = 0.0f.xxx;
    [branch]
    if (_268)
    {
        _674 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_HasDirectionalLight;
        _675 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
        _676 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
        _677 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightColor;
        _678 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightDirection;
    }
    else
    {
        _674 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_HasDirectionalLight;
        _675 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
        _676 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
        _677 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightColor;
        _678 = TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_DirectionalLightDirection;
    }
    float4 _1418 = 0.0f.xxxx;
    float4 _1419 = 0.0f.xxxx;
    float4 _1420 = 0.0f.xxxx;
    [branch]
    if (_674 != 0u)
    {
        float4 _692 = float4(_237, float((_675 & 2u) != 0u), float((_675 & 4u) != 0u), float((_675 & 8u) != 0u));
        _692.x = 1.0f;
        float4 _693 = _448;
        _693.x = 1.0f;
        float _768 = 0.0f;
        if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades > 0u)
        {
            float4 _701 = _397.xxxx;
            float4 _703 = float4(bool4(_701.x >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.x, _701.y >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.y, _701.z >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.z, _701.w >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_CascadeEndDepths.w));
            uint _711 = uint(((_703.x + _703.y) + _703.z) + _703.w);
            float _767 = 0.0f;
            if (_711 < TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades)
            {
                float4 _721 = mul(float4(_347, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[_711]);
                float2 _725 = _721.xy / _721.w.xx;
                bool2 _729 = bool2(_725.x >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_711].xy.x, _725.y >= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_711].xy.y);
                bool2 _731 = bool2(_725.x <= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_711].zw.x, _725.y <= TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[_711].zw.y);
                float _766 = 0.0f;
                if (all(bool2(_729.x && _731.x, _729.y && _731.y)))
                {
                    float2 _744 = (_725 * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.xy) - 0.5f.xx;
                    float2 _745 = frac(_744);
                    float4 _757 = clamp((TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlas.GatherRed(TranslucentBasePass_Shared_Forward_ShadowmapSampler, (floor(_744) + 1.0f.xx) * TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize.zw) * 4000.0f) - (((1.0f - _721.z) * 4000.0f) - 1.0f).xxxx, 0.0f.xxxx, 1.0f.xxxx);
                    float2 _761 = lerp(_757.wx, _757.zy, _745.xx);
                    _766 = lerp(_761.x, _761.y, _745.y);
                }
                else
                {
                    _766 = 1.0f;
                }
                _767 = _766;
            }
            else
            {
                _767 = 1.0f;
            }
            _768 = _767;
        }
        else
        {
            _768 = 1.0f;
        }
        float _1374 = 0.0f;
        [branch]
        if (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM != (-1))
        {
            float3 _778 = _347 - View_View_RelativePreViewTranslation;
            float _1372 = 0.0f;
            do
            {
                uint _781 = uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM);
                uint _782 = _781 * 336u;
                uint _784 = (_782 + 128u) >> 2u;
                float4x4 _798 = _233;
                _798[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_784 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_784 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_784 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_784 + 3u) * 4 + 0)));
                uint _800 = (_782 + 144u) >> 2u;
                float4x4 _814 = _798;
                _814[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_800 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_800 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_800 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_800 + 3u) * 4 + 0)));
                uint _816 = (_782 + 160u) >> 2u;
                float4x4 _830 = _814;
                _830[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_816 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_816 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_816 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_816 + 3u) * 4 + 0)));
                uint _832 = (_782 + 176u) >> 2u;
                float4x4 _846 = _830;
                _846[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_832 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_832 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_832 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_832 + 3u) * 4 + 0)));
                uint _848 = (_782 + 256u) >> 2u;
                float3 _858 = asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_848 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_848 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_848 + 2u) * 4 + 0)));
                uint _860 = (_782 + 268u) >> 2u;
                uint _864 = (_782 + 272u) >> 2u;
                uint _876 = (_782 + 288u) >> 2u;
                if (VirtualShadowMap_ProjectionData.Load(_860 * 4 + 0) == 0u)
                {
                    int _1078 = max(0, (int(floor(log2(length(((View_View_ViewTilePosition - (-_858)) * 2097152.0f) + (_778 - (-asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_876 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_876 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_876 + 2u) * 4 + 0))))))) + asfloat(VirtualShadowMap_ProjectionData.Load(((_782 + 300u) >> 2u) * 4 + 0)))) - int(VirtualShadowMap_ProjectionData.Load(((_782 + 316u) >> 2u) * 4 + 0))));
                    if (_1078 < int(VirtualShadowMap_ProjectionData.Load(((_782 + 320u) >> 2u) * 4 + 0)))
                    {
                        int _1082 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM + _1078;
                        uint _1083 = uint(_1082);
                        uint _1084 = _1083 * 336u;
                        uint _1086 = (_1084 + 128u) >> 2u;
                        float4x4 _1100 = _233;
                        _1100[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1086 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1086 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1086 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1086 + 3u) * 4 + 0)));
                        uint _1102 = (_1084 + 144u) >> 2u;
                        float4x4 _1116 = _1100;
                        _1116[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1102 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1102 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1102 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1102 + 3u) * 4 + 0)));
                        uint _1118 = (_1084 + 160u) >> 2u;
                        float4x4 _1132 = _1116;
                        _1132[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1118 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1118 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1118 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1118 + 3u) * 4 + 0)));
                        uint _1134 = (_1084 + 176u) >> 2u;
                        float4x4 _1148 = _1132;
                        _1148[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1134 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1134 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1134 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1134 + 3u) * 4 + 0)));
                        uint _1150 = (_1084 + 256u) >> 2u;
                        uint _1162 = (_1084 + 272u) >> 2u;
                        float4 _1181 = mul(float4(((View_View_ViewTilePosition + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1150 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1150 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1150 + 2u) * 4 + 0)))) * 2097152.0f) + (_778 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_1162 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1162 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1162 + 2u) * 4 + 0)))), 1.0f), _1148);
                        float2 _1182 = _1181.xy;
                        uint2 _1184 = uint2(_1182 * 128.0f);
                        uint _1190 = (_1083 * 21845u) + (_1184.x + (_1184.y << 7u));
                        uint _1194 = (VirtualShadowMap_PageTable.Load(_1190 * 4 + 0) >> 20u) & 63u;
                        bool _1203 = (VirtualShadowMap_PageTable.Load(_1190 * 4 + 0) & 134217728u) != 0u;
                        float _1365 = 0.0f;
                        bool _1366 = false;
                        if (_1203)
                        {
                            float _1341 = 0.0f;
                            float _1342 = 0.0f;
                            uint2 _1343 = uint2(0u, 0u);
                            uint2 _1344 = uint2(0u, 0u);
                            bool _1345 = false;
                            if (_1194 > 0u)
                            {
                                uint _1216 = (_1084 + 304u) >> 2u;
                                uint _1219 = _1216 + 1u;
                                uint _1224 = uint(int(_1083 + _1194));
                                uint _1227 = ((_1224 * 336u) + 304u) >> 2u;
                                int _1239 = int(_1194);
                                uint2 _1247 = ((_1184 - uint2(int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_1216 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_1219 * 4 + 0))))) + uint2((int2(32, 32) * int2(uint2(VirtualShadowMap_ProjectionData.Load(_1227 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1227 + 1u) * 4 + 0)))) << (_1239.xx & int2(31, 31)))) >> (_1194.xx & uint2(31u, 31u));
                                uint2 _1248 = _1247 * uint2(128u, 128u);
                                uint _1251 = (_1084 + 112u) >> 2u;
                                uint _1271 = uint(_1082 + _1239) * 336u;
                                uint _1273 = (_1271 + 112u) >> 2u;
                                uint _1288 = (_1271 + 304u) >> 2u;
                                float _1309 = (_1239 >= 0) ? (1.0f / float(1u << (uint(_1239) & 31u))) : float(1u << (uint(-_1239) & 31u));
                                uint _1328 = (_1224 * 21845u) + (_1247.x + (_1247.y << 7u));
                                _1341 = _1309;
                                _1342 = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1273 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1273 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1273 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1273 + 3u) * 4 + 0))).z - (_1309 * asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_1251 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1251 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1251 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1251 + 3u) * 4 + 0))).z);
                                _1343 = clamp(uint2(((_1182 * _1309) + ((float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_1288 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_1288 + 1u) * 4 + 0)))) - (float2(int2(uint2(VirtualShadowMap_ProjectionData.Load(_1216 * 4 + 0), VirtualShadowMap_ProjectionData.Load(_1219 * 4 + 0)))) * _1309)) * 0.25f).xy) * 16384.0f), _1248, _1248 + uint2(127u, 127u));
                                _1344 = uint2(VirtualShadowMap_PageTable.Load(_1328 * 4 + 0) & 1023u, (VirtualShadowMap_PageTable.Load(_1328 * 4 + 0) >> 10u) & 1023u);
                                _1345 = ((VirtualShadowMap_PageTable.Load(_1328 * 4 + 0) & 134217728u) != 0u) && (((VirtualShadowMap_PageTable.Load(_1328 * 4 + 0) >> 20u) & 63u) == 0u);
                            }
                            else
                            {
                                _1341 = 1.0f;
                                _1342 = 0.0f;
                                _1343 = uint2(_1182 * 16384.0f);
                                _1344 = uint2(VirtualShadowMap_PageTable.Load(_1190 * 4 + 0) & 1023u, (VirtualShadowMap_PageTable.Load(_1190 * 4 + 0) >> 10u) & 1023u);
                                _1345 = _1203 && (((VirtualShadowMap_PageTable.Load(_1190 * 4 + 0) >> 20u) & 63u) == 0u);
                            }
                            float _1363 = 0.0f;
                            if (_1345)
                            {
                                uint2 _1350 = (_1344 * uint2(128u, 128u)) + (_1343 & uint2(127u, 127u));
                                _1363 = (asfloat(VirtualShadowMap_PhysicalPagePool.Load(int3(int3(int(_1350.x), int(_1350.y), 0).xy, 0)).x) - _1342) / _1341;
                            }
                            else
                            {
                                _1363 = 0.0f;
                            }
                            _1365 = _1363;
                            _1366 = _1345 ? true : false;
                        }
                        else
                        {
                            _1365 = 0.0f;
                            _1366 = false;
                        }
                        if (_1366)
                        {
                            _1372 = (_1365 > _1181.z) ? 0.0f : 1.0f;
                            break;
                        }
                    }
                }
                else
                {
                    float3 _911 = ((View_View_ViewTilePosition + _858) * 2097152.0f) + (_778 + asfloat(uint3(VirtualShadowMap_ProjectionData.Load(_864 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_864 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_864 + 2u) * 4 + 0))));
                    int _1008 = 0;
                    float4x4 _1009 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
                    if (VirtualShadowMap_ProjectionData.Load(_860 * 4 + 0) != 2u)
                    {
                        uint _939 = 0u;
                        do
                        {
                            float _917 = _911.x;
                            float _918 = abs(_917);
                            float _919 = _911.y;
                            float _920 = abs(_919);
                            float _922 = _911.z;
                            float _923 = abs(_922);
                            if ((_918 >= _920) && (_918 >= _923))
                            {
                                _939 = (_917 > 0.0f) ? 0u : 1u;
                                break;
                            }
                            else
                            {
                                if (_920 > _923)
                                {
                                    _939 = (_919 > 0.0f) ? 2u : 3u;
                                    break;
                                }
                                else
                                {
                                    _939 = (_922 > 0.0f) ? 4u : 5u;
                                    break;
                                }
                            }
                        } while(false);
                        int _941 = int(_781 + _939);
                        uint _943 = uint(_941) * 336u;
                        uint _945 = (_943 + 128u) >> 2u;
                        float4x4 _959 = _233;
                        _959[0] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_945 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_945 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_945 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_945 + 3u) * 4 + 0)));
                        uint _961 = (_943 + 144u) >> 2u;
                        float4x4 _975 = _959;
                        _975[1] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_961 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_961 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_961 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_961 + 3u) * 4 + 0)));
                        uint _977 = (_943 + 160u) >> 2u;
                        float4x4 _991 = _975;
                        _991[2] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_977 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_977 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_977 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_977 + 3u) * 4 + 0)));
                        uint _993 = (_943 + 176u) >> 2u;
                        float4x4 _1007 = _991;
                        _1007[3] = asfloat(uint4(VirtualShadowMap_ProjectionData.Load(_993 * 4 + 0), VirtualShadowMap_ProjectionData.Load((_993 + 1u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_993 + 2u) * 4 + 0), VirtualShadowMap_ProjectionData.Load((_993 + 3u) * 4 + 0)));
                        _1008 = _941;
                        _1009 = _1007;
                    }
                    else
                    {
                        _1008 = TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectionalLightVSM;
                        _1009 = _846;
                    }
                    float4 _1014 = mul(float4(_911, 1.0f), _1009);
                    float3 _1018 = _1014.xyz / _1014.w.xxx;
                    float2 _1019 = _1018.xy;
                    float _1061 = 0.0f;
                    bool _1062 = false;
                    do
                    {
                        uint2 _1024 = uint2(_1019 * 128.0f);
                        uint _1030 = (uint(_1008) * 21845u) + (_1024.x + (_1024.y << 7u));
                        uint2 _1048 = (uint2(VirtualShadowMap_PageTable.Load(_1030 * 4 + 0) & 1023u, (VirtualShadowMap_PageTable.Load(_1030 * 4 + 0) >> 10u) & 1023u) * uint2(128u, 128u)) + (uint2(_1019 * float(16384u >> (((VirtualShadowMap_PageTable.Load(_1030 * 4 + 0) >> 20u) & 63u) & 31u))) & uint2(127u, 127u));
                        if ((VirtualShadowMap_PageTable.Load(_1030 * 4 + 0) & 134217728u) != 0u)
                        {
                            _1061 = asfloat(VirtualShadowMap_PhysicalPagePool.Load(int3(int3(int(_1048.x), int(_1048.y), 0).xy, 0)).x);
                            _1062 = true;
                            break;
                        }
                        _1061 = 0.0f;
                        _1062 = false;
                        break;
                    } while(false);
                    if (_1062)
                    {
                        _1372 = (_1061 > _1018.z) ? 0.0f : 1.0f;
                        break;
                    }
                }
                _1372 = 1.0f;
                break;
            } while(false);
            _1374 = _768 * _1372;
        }
        else
        {
            _1374 = _768;
        }
        float _1382 = clamp((_397 * _676.x) + _676.y, 0.0f, 1.0f);
        float _1384 = lerp(_1374, lerp(1.0f, dot(_693, _692), dot(_692, 1.0f.xxxx)), _1382 * _1382);
        bool _1387 = (_1384 + min(_1384, 1.0f)) > 0.0f;
        float3 _1401 = 0.0f.xxx;
        [branch]
        if (_1387)
        {
            _1401 = ((_470 * 0.3183098733425140380859375f) * (1.0f.xxx * clamp(dot(_373, _678 * rsqrt(dot(_678, _678))), 0.0f, 1.0f))) * ((_677 * 1.0f) * _1384);
        }
        else
        {
            _1401 = 0.0f.xxx;
        }
        bool3 _1402 = _1387.xxx;
        float4 _1407 = float4(_1401, 0.0f);
        float4 _1411 = float4(float3(_1402.x ? 0.0f.xxx.x : 0.0f.xxx.x, _1402.y ? 0.0f.xxx.y : 0.0f.xxx.y, _1402.z ? 0.0f.xxx.z : 0.0f.xxx.z), 0.0f);
        bool4 _1415 = (((_675 >> 8u) & _650) != 0u).xxxx;
        _1418 = _693;
        _1419 = float4(_1415.x ? _1407.x : 0.0f.xxxx.x, _1415.y ? _1407.y : 0.0f.xxxx.y, _1415.z ? _1407.z : 0.0f.xxxx.z, _1415.w ? _1407.w : 0.0f.xxxx.w);
        _1420 = float4(_1415.x ? _1411.x : 0.0f.xxxx.x, _1415.y ? _1411.y : 0.0f.xxxx.y, _1415.z ? _1411.z : 0.0f.xxxx.z, _1415.w ? _1411.w : 0.0f.xxxx.w);
    }
    else
    {
        _1418 = _448;
        _1419 = 0.0f.xxxx;
        _1420 = 0.0f.xxxx;
    }
    uint _1444 = 0u;
    uint _1445 = 0u;
    [branch]
    if (_268)
    {
        uint _1434 = _637 * 2u;
        _1444 = min(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1434).x, TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumLocalLights);
        _1445 = TranslucentBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1434 + 1u).x;
    }
    else
    {
        uint _1424 = _637 * 2u;
        _1444 = min(TranslucentBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1424).x, TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_NumLocalLights);
        _1445 = TranslucentBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1424 + 1u).x;
    }
    uint _1451 = min(_1444, (_268 ? TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumLocalLights : TranslucentBasePass_TranslucentBasePass_Shared_ForwardISR_NumLocalLights));
    float4 _1453 = 0.0f.xxxx;
    float4 _1456 = 0.0f.xxxx;
    _1453 = _1419;
    _1456 = _1420;
    float4 _1454 = 0.0f.xxxx;
    float4 _1457 = 0.0f.xxxx;
    [loop]
    for (uint _1458 = 0u; _1458 < _1451; _1453 = _1454, _1456 = _1457, _1458++)
    {
        uint _1463 = _1445 + _1458;
        float4 _1495 = 0.0f.xxxx;
        float4 _1496 = 0.0f.xxxx;
        float4 _1497 = 0.0f.xxxx;
        float4 _1498 = 0.0f.xxxx;
        float4 _1499 = 0.0f.xxxx;
        [branch]
        if (_268)
        {
            uint _1484 = TranslucentBasePass_Shared_Forward_CulledLightDataGrid.Load(_1463).x * 6u;
            _1495 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1484);
            _1496 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1484 + 1u);
            _1497 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1484 + 3u);
            _1498 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1484 + 2u);
            _1499 = TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1484 + 4u);
        }
        else
        {
            uint _1470 = TranslucentBasePass_Shared_ForwardISR_CulledLightDataGrid.Load(_1463).x * 6u;
            _1495 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1470);
            _1496 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1470 + 1u);
            _1497 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1470 + 3u);
            _1498 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1470 + 2u);
            _1499 = TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1470 + 4u);
        }
        float2 _1508 = spvUnpackHalf2x16(asuint(_1497.w));
        float _1509 = _1508.x;
        bool _1511 = _1496.w == 0.0f;
        uint _1515 = asuint(_1498.w);
        float4 _1531 = float4(float((_1515 & 1u) != 0u), float((_1515 & 2u) != 0u), float((_1515 & 4u) != 0u), float((_1515 & 8u) != 0u));
        uint _1532 = _1515 >> 4u;
        float3 _1547 = _1495.xyz - _347;
        float _1548 = dot(_1547, _1547);
        float _1565 = 0.0f;
        if (_1511)
        {
            float _1560 = _1548 * (_1495.w * _1495.w);
            float _1563 = clamp(1.0f - (_1560 * _1560), 0.0f, 1.0f);
            _1565 = _1563 * _1563;
        }
        else
        {
            float3 _1554 = _1547 * _1495.w;
            _1565 = pow(1.0f - clamp(dot(_1554, _1554), 0.0f, 1.0f), _1496.w);
        }
        float _1575 = 0.0f;
        if (_1497.x > (-2.0f))
        {
            float _1572 = clamp((dot(_1547 * rsqrt(_1548), _1498.xyz) - _1497.x) * _1497.y, 0.0f, 1.0f);
            _1575 = _1565 * (_1572 * _1572);
        }
        else
        {
            _1575 = _1565;
        }
        float3 _1654 = 0.0f.xxx;
        float3 _1655 = 0.0f.xxx;
        [branch]
        if (_1575 > 0.0f)
        {
            float _1586 = 0.0f;
            [branch]
            if (uint((_1515 & 255u) != 0u) != 0u)
            {
                _1586 = dot(float4(float((_1532 & 1u) != 0u), float((_1532 & 2u) != 0u), float((_1532 & 4u) != 0u), float((_1532 & 8u) != 0u)), 1.0f.xxxx) * lerp(1.0f, dot(_1418, _1531), dot(_1531, 1.0f.xxxx));
            }
            else
            {
                _1586 = 1.0f;
            }
            bool _1588 = (_1586 + _1586) > 0.0f;
            float3 _1651 = 0.0f.xxx;
            [branch]
            if (_1588)
            {
                float3 _1592 = _1499.xyz * (0.5f * _1509);
                float3 _1593 = _1547 - _1592;
                float3 _1594 = _1547 + _1592;
                float _1622 = 0.0f;
                float _1623 = 0.0f;
                [branch]
                if (_1509 > 0.0f)
                {
                    float _1607 = rsqrt(dot(_1593, _1593));
                    float _1608 = rsqrt(dot(_1594, _1594));
                    float _1609 = _1607 * _1608;
                    _1622 = 0.5f * ((dot(_373, _1593) * _1607) + (dot(_373, _1594) * _1608));
                    _1623 = _1609 / ((((dot(_1593, _1594) * _1609) * 0.5f) + 0.5f) + _1609);
                }
                else
                {
                    float _1599 = dot(_1593, _1593);
                    _1622 = dot(_373, _1593 * rsqrt(_1599));
                    _1623 = 1.0f / (_1599 + 1.0f);
                }
                float _1641 = 0.0f;
                if (_1497.z > 0.0f)
                {
                    float _1630 = sqrt(clamp((_1497.z * _1497.z) * _1623, 0.0f, 1.0f));
                    float _1640 = 0.0f;
                    if (_1622 < _1630)
                    {
                        float _1636 = _1630 + max(_1622, -_1630);
                        _1640 = (_1636 * _1636) / (4.0f * _1630);
                    }
                    else
                    {
                        _1640 = _1622;
                    }
                    _1641 = _1640;
                }
                else
                {
                    _1641 = _1622;
                }
                _1651 = ((_470 * 0.3183098733425140380859375f) * (1.0f.xxx * ((_1511 ? _1623 : 1.0f) * clamp(_1641, 0.0f, 1.0f)))) * ((_1496.xyz * _1575) * _1586);
            }
            else
            {
                _1651 = 0.0f.xxx;
            }
            bool3 _1652 = _1588.xxx;
            _1654 = _1651;
            _1655 = float3(_1652.x ? 0.0f.xxx.x : 0.0f.xxx.x, _1652.y ? 0.0f.xxx.y : 0.0f.xxx.y, _1652.z ? 0.0f.xxx.z : 0.0f.xxx.z);
        }
        else
        {
            _1654 = 0.0f.xxx;
            _1655 = 0.0f.xxx;
        }
        [flatten]
        if (((_1515 >> 8u) & _650) != 0u)
        {
            _1454 = _1453 + float4(_1654, 0.0f);
            _1457 = _1456 + float4(_1655, 0.0f);
        }
        else
        {
            _1454 = _1453;
            _1457 = _1456;
        }
    }
    bool4 _1674 = (TranslucentBasePass_TranslucentBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1683 = int(uint(Primitive_Primitive_SingleCaptureIndex));
    float4 _1736 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _395) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1737 = _1736.x;
    float2 _1747 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_1737 * _1737, exp2((-9.27999973297119140625f) * clamp(dot(_373, _358), 0.0f, 1.0f))) * _1737) + _1736.y)) + _1736.zw;
    bool _1775 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _1843 = 0.0f.xxxx;
    if (_1775)
    {
        float4 _1793 = mul(((float4(_348, 0.0f) + float4(_323, 0.0f)) * 2097152.0f) + float4(_349, 1.0f), _322);
        float _1794 = _1793.w;
        float3 _1816 = float3(((_1793.xy / _1794.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_1794 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _1831 = 0.0f.xxxx;
        if (_1775)
        {
            float4 _1830 = 0.0f.xxxx;
            if (_268)
            {
                _1830 = TranslucentBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1816, 0.0f);
            }
            else
            {
                _1830 = TranslucentBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1816, 0.0f);
            }
            _1831 = _1830;
        }
        else
        {
            _1831 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _1843 = float4(_1831.xyz + (in_var_TEXCOORD7.xyz * _1831.w), _1831.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _1843 = in_var_TEXCOORD7;
    }
    float3 _1850 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[1].yzw, Material_Material_PreshaderBuffer[1].x.xxx), 0.0f.xxx);
    float _1899 = 0.0f;
    float3 _1900 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _1872 = abs(((_348 - Primitive_Primitive_TilePosition) * 2097152.0f) + (_349 - Primitive_Primitive_ObjectRelativeWorldPositionAndRadius.xyz));
        float3 _1873 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        bool _1875 = any(bool3(_1872.x > _1873.x, _1872.y > _1873.y, _1872.z > _1873.z));
        float3 _1897 = 0.0f.xxx;
        if (_1875)
        {
            float3 _1893 = frac(frac(((_348.x + _348.y) + _348.z) * 2420.113525390625f) + (((_349.x + _349.y) + _349.z) * 0.001154000055976212024688720703125f)).xxx;
            _1897 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_1893.x > 0.5f.xxx.x, _1893.y > 0.5f.xxx.y, _1893.z > 0.5f.xxx.z)));
        }
        else
        {
            _1897 = _1850;
        }
        _1899 = _1875 ? 1.0f : _396;
        _1900 = _1897;
    }
    else
    {
        _1899 = _396;
        _1900 = _1850;
    }
    float4 _1910 = float4((((lerp((float4(_1674.x ? 0.0f.xxxx.x : _1453.x, _1674.y ? 0.0f.xxxx.y : _1453.y, _1674.z ? 0.0f.xxxx.z : _1453.z, _1674.w ? 0.0f.xxxx.w : _1453.w).xyz + float4(_1674.x ? 0.0f.xxxx.x : _1456.x, _1674.y ? 0.0f.xxxx.y : _1456.y, _1674.z ? 0.0f.xxxx.z : _1456.z, _1674.w ? 0.0f.xxxx.w : _1456.w).xyz) + (((((float4(TranslucentBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler, float4((_373 * (2.0f * dot(_358, _373))) - _358, ReflectionCapture_ReflectionCapture_CaptureProperties[_1683].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_395, 0.001000000047497451305389404296875f))))).xyz * ReflectionCapture_ReflectionCapture_CaptureProperties[_1683].x, _232).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz * lerp(1.0f, min(0.0f, View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp((_395 * View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x) + View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y, 0.0f, 1.0f)))).xyz * ((_472 * _1747.x) + (clamp(50.0f * _472.y, 0.0f, 1.0f) * _1747.y).xxx)) * 1.0f) * max(1.0f.xxx, ((((((_472 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_472 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_472 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)), _470 + (_472 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + ((_566 * _470) * max(1.0f.xxx, ((((((_391 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_391 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_391 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f))) + _1900) * _1843.w) + _1843.xyz, _1899);
    float3 _1914 = _1910.xyz * View_View_PreExposure;
    out_var_SV_Target0 = float4(_1914.x, _1914.y, _1914.z, _1910.w);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD5 = stage_input.in_var_TEXCOORD5;
    in_var_TANGENTX = stage_input.in_var_TANGENTX;
    in_var_TANGENTZ = stage_input.in_var_TANGENTZ;
    in_var_PACKED_EYE_INDEX = stage_input.in_var_PACKED_EYE_INDEX;
    in_var_TEXCOORD7 = stage_input.in_var_TEXCOORD7;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    return stage_output;
}
