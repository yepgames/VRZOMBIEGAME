cbuffer View
{
    row_major float4x4 View_View_RelativeWorldToClip : packoffset(c4);
    row_major float4x4 View_View_SVPositionToTranslatedWorld : packoffset(c44);
    float3 View_View_ViewTilePosition : packoffset(c60);
    float3 View_View_MatrixTilePosition : packoffset(c61);
    float3 View_View_RelativePreViewTranslation : packoffset(c72);
    float View_View_PreExposure : packoffset(c130.y);
    float View_View_OutOfBoundsMask : packoffset(c135);
    float3 View_View_VolumetricFogInvGridSize : packoffset(c223);
    float3 View_View_VolumetricFogGridZParams : packoffset(c224);
};

cbuffer InstancedView
{
    row_major float4x4 InstancedView_InstancedView_RelativeWorldToClip : packoffset(c4);
    row_major float4x4 InstancedView_InstancedView_SVPositionToTranslatedWorld : packoffset(c44);
    float3 InstancedView_InstancedView_ViewTilePosition : packoffset(c60);
    float3 InstancedView_InstancedView_MatrixTilePosition : packoffset(c61);
    float3 InstancedView_InstancedView_RelativePreViewTranslation : packoffset(c72);
};

cbuffer Primitive
{
    float3 Primitive_Primitive_TilePosition : packoffset(c1);
    float Primitive_Primitive_ObjectBoundsX : packoffset(c18.w);
    float4 Primitive_Primitive_ObjectRelativeWorldPositionAndRadius : packoffset(c19);
    float Primitive_Primitive_ObjectBoundsY : packoffset(c25.w);
    float Primitive_Primitive_ObjectBoundsZ : packoffset(c26.w);
};

cbuffer TranslucentBasePass
{
    float TranslucentBasePass_TranslucentBasePass_Shared_Fog_ApplyVolumetricFog : packoffset(c116.w);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[3] : packoffset(c0);
};

SamplerState View_SharedBilinearClampedSampler;
Texture3D<float4> TranslucentBasePass_Shared_Fog_IntegratedLightScattering;
Texture3D<float4> TranslucentBasePass_Shared_FogISR_IntegratedLightScattering;

static float4 gl_FragCoord;
static float4 in_var_TEXCOORD5;
static uint in_var_PACKED_EYE_INDEX;
static float4 in_var_TEXCOORD7;
static float4 out_var_SV_Target0;

struct SPIRV_Cross_Input
{
    float4 in_var_TEXCOORD5 : TEXCOORD5;
    nointerpolation uint in_var_PACKED_EYE_INDEX : PACKED_EYE_INDEX;
    float4 in_var_TEXCOORD7 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
};

void frag_main()
{
    bool _85 = false;
    float4x4 _113 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _114 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _115 = 0.0f.xxx;
    float3 _116 = 0.0f.xxx;
    float3 _117 = 0.0f.xxx;
    do
    {
        _85 = in_var_PACKED_EYE_INDEX == 0u;
        if (_85)
        {
            _113 = View_View_SVPositionToTranslatedWorld;
            _114 = View_View_RelativeWorldToClip;
            _115 = -View_View_MatrixTilePosition;
            _116 = -View_View_ViewTilePosition;
            _117 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _113 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _114 = InstancedView_InstancedView_RelativeWorldToClip;
            _115 = -InstancedView_InstancedView_MatrixTilePosition;
            _116 = -InstancedView_InstancedView_ViewTilePosition;
            _117 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float4 _122 = mul(float4(gl_FragCoord.xyz, 1.0f), _113);
    float3 _127 = -_116;
    float3 _128 = (_122.xyz / _122.w.xxx) - _117;
    float _138 = clamp(in_var_TEXCOORD5.w, 0.0f, 1.0f);
    bool _141 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _209 = 0.0f.xxxx;
    if (_141)
    {
        float4 _159 = mul(((float4(_127, 0.0f) + float4(_115, 0.0f)) * 2097152.0f) + float4(_128, 1.0f), _114);
        float _160 = _159.w;
        float3 _182 = float3(((_159.xy / _160.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_160 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _197 = 0.0f.xxxx;
        if (_141)
        {
            float4 _196 = 0.0f.xxxx;
            if (_85)
            {
                _196 = TranslucentBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _182, 0.0f);
            }
            else
            {
                _196 = TranslucentBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _182, 0.0f);
            }
            _197 = _196;
        }
        else
        {
            _197 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _209 = float4(_197.xyz + (in_var_TEXCOORD7.xyz * _197.w), _197.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _209 = in_var_TEXCOORD7;
    }
    float3 _210 = max(lerp(in_var_TEXCOORD5.xyz, Material_Material_PreshaderBuffer[1].yzw, Material_Material_PreshaderBuffer[1].x.xxx), 0.0f.xxx);
    float _259 = 0.0f;
    float3 _260 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _232 = abs(((_127 - Primitive_Primitive_TilePosition) * 2097152.0f) + (_128 - Primitive_Primitive_ObjectRelativeWorldPositionAndRadius.xyz));
        float3 _233 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        bool _235 = any(bool3(_232.x > _233.x, _232.y > _233.y, _232.z > _233.z));
        float3 _257 = 0.0f.xxx;
        if (_235)
        {
            float3 _253 = frac(frac(((_127.x + _127.y) + _127.z) * 2420.113525390625f) + (((_128.x + _128.y) + _128.z) * 0.001154000055976212024688720703125f)).xxx;
            _257 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_253.x > 0.5f.xxx.x, _253.y > 0.5f.xxx.y, _253.z > 0.5f.xxx.z)));
        }
        else
        {
            _257 = _210;
        }
        _259 = _235 ? 1.0f : _138;
        _260 = _257;
    }
    else
    {
        _259 = _138;
        _260 = _210;
    }
    float4 _268 = float4((_260 * _209.w) + _209.xyz, _259);
    float3 _272 = _268.xyz * View_View_PreExposure;
    out_var_SV_Target0 = float4(_272.x, _272.y, _272.z, _268.w);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD5 = stage_input.in_var_TEXCOORD5;
    in_var_PACKED_EYE_INDEX = stage_input.in_var_PACKED_EYE_INDEX;
    in_var_TEXCOORD7 = stage_input.in_var_TEXCOORD7;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    return stage_output;
}
