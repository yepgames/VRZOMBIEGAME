cbuffer View
{
    float3 View_View_ViewTilePosition : packoffset(c60);
    float3 View_View_RelativePreViewTranslation : packoffset(c72);
    float View_View_GameTime : packoffset(c137.y);
    uint View_View_InstanceSceneDataSOAStride : packoffset(c277);
};

ByteAddressBuffer View_PrimitiveSceneData;
ByteAddressBuffer View_InstanceSceneData;
ByteAddressBuffer InstanceCulling_InstanceIdsBuffer;
cbuffer ShadowDepthPass
{
    row_major float4x4 ShadowDepthPass_ShadowDepthPass_ProjectionMatrix : packoffset(c7);
    row_major float4x4 ShadowDepthPass_ShadowDepthPass_ViewMatrix : packoffset(c11);
    float4 ShadowDepthPass_ShadowDepthPass_ShadowParams : packoffset(c15);
    float ShadowDepthPass_ShadowDepthPass_bClampToNearPlane : packoffset(c16);
};

cbuffer LocalVF
{
    int4 LocalVF_LocalVF_VertexFetch_Parameters : packoffset(c0);
};

cbuffer MaterialCollection0
{
    float4 MaterialCollection0_MaterialCollection0_Vectors[1] : packoffset(c0);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[9] : packoffset(c0);
};

Buffer<float4> LocalVF_VertexFetch_TexCoordBuffer;
Buffer<float4> LocalVF_VertexFetch_PackedTangentsBuffer;
Buffer<float4> LocalVF_VertexFetch_ColorComponentsBuffer;

static float4 gl_Position;
static int gl_VertexIndex;
static int gl_InstanceIndex;
static float4 in_var_ATTRIBUTE0;
static uint in_var_ATTRIBUTE13;
static float4 out_var_TEXCOORD10_centroid;
static float4 out_var_TEXCOORD11_centroid;
static float4 out_var_COLOR0;
static float4 out_var_TEXCOORD0[2];
static uint out_var_PACKED_EYE_INDEX;
static uint out_var_PRIMITIVE_ID;
static float out_var_TEXCOORD6;
static float3 out_var_TEXCOORD7;

struct SPIRV_Cross_Input
{
    float4 in_var_ATTRIBUTE0 : ATTRIBUTE0;
    uint in_var_ATTRIBUTE13 : ATTRIBUTE13;
    uint gl_VertexIndex : SV_VertexID;
    uint gl_InstanceIndex : SV_InstanceID;
};

struct SPIRV_Cross_Output
{
    float4 out_var_TEXCOORD10_centroid : TEXCOORD10_centroid;
    float4 out_var_TEXCOORD11_centroid : TEXCOORD11_centroid;
    float4 out_var_COLOR0 : COLOR0;
    float4 out_var_TEXCOORD0[2] : TEXCOORD0;
    nointerpolation uint out_var_PACKED_EYE_INDEX : PACKED_EYE_INDEX;
    nointerpolation uint out_var_PRIMITIVE_ID : PRIMITIVE_ID;
    float out_var_TEXCOORD6 : TEXCOORD6;
    float3 out_var_TEXCOORD7 : TEXCOORD7;
    precise float4 gl_Position : SV_Position;
};

static float3x3 _154 = float3x3(0.0f.xxx, 0.0f.xxx, 0.0f.xxx);
static float2 _155 = 0.0f.xx;
static float2 _156 = 0.0f.xx;

void vert_main()
{
    uint _185 = 0u;
    if ((in_var_ATTRIBUTE13 & 2147483648u) != 0u)
    {
        _185 = uint(int(asuint(asfloat(View_PrimitiveSceneData.Load4(((in_var_ATTRIBUTE13 & 2147483647u) * 40u) * 16 + 0)).y))) + uint(gl_InstanceIndex);
    }
    else
    {
        _185 = InstanceCulling_InstanceIdsBuffer.Load((in_var_ATTRIBUTE13 + uint(gl_InstanceIndex)) * 4 + 0) & 268435455u;
    }
    uint _191 = asuint(asfloat(View_InstanceSceneData.Load4(_185 * 16 + 0)).x);
    uint _193 = (_191 << 12u) >> 12u;
    float3 _307 = 0.0f.xxx;
    float4x4 _308 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _309 = 0.0f.xxx;
    float _310 = 0.0f;
    [branch]
    if (false || (_193 != 1048575u))
    {
        uint4 _207 = asuint(asfloat(View_InstanceSceneData.Load4((View_View_InstanceSceneDataSOAStride + _185) * 16 + 0)));
        uint _209 = (2u * View_View_InstanceSceneDataSOAStride) + _185;
        float4x4 _213 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
        _213[3] = float4(asfloat(View_InstanceSceneData.Load4(_209 * 16 + 0)).x, asfloat(View_InstanceSceneData.Load4(_209 * 16 + 0)).y, asfloat(View_InstanceSceneData.Load4(_209 * 16 + 0)).z, 0.0f.xxxx.w);
        float4x4 _214 = _213;
        _214[3].w = 1.0f;
        uint _215 = _207.x;
        uint _222 = _207.y;
        float _225 = float((_222 >> 0u) & 32767u);
        float2 _229 = (float3(float((_215 >> 0u) & 65535u), float((_215 >> 16u) & 65535u), _225).xy - 32768.0f.xx) * 3.0518509447574615478515625e-05f;
        float _231 = (_225 - 16384.0f) * 4.3161006033187732100486755371094e-05f;
        bool _233 = (_222 & 32768u) != 0u;
        float _234 = _229.x;
        float _235 = _229.y;
        float _236 = _234 + _235;
        float _237 = _234 - _235;
        float3 _243 = normalize(float3(_236, _237, 2.0f - dot(1.0f.xx, abs(float2(_236, _237)))));
        float4 _244 = float4(_243.x, _243.y, _243.z, 0.0f.xxxx.w);
        float4x4 _245 = _214;
        _245[2] = _244;
        float _248 = 1.0f / (1.0f + _243.z);
        float _249 = _243.x;
        float _250 = -_249;
        float _251 = _243.y;
        float _253 = (_250 * _251) * _248;
        float _265 = sqrt(1.0f - (_231 * _231));
        float3 _270 = (float3(1.0f - ((_249 * _249) * _248), _253, _250) * (_233 ? _231 : _265)) + (float3(_253, 1.0f - ((_251 * _251) * _248), -_251) * (_233 ? _265 : _231));
        float4 _271 = float4(_270.x, _270.y, _270.z, 0.0f.xxxx.w);
        float4x4 _272 = _245;
        _272[0] = _271;
        float3 _275 = cross(_243.xyz, _270.xyz);
        float4 _276 = float4(_275.x, _275.y, _275.z, 0.0f.xxxx.w);
        float4x4 _277 = _272;
        _277[1] = _276;
        uint _278 = _207.w;
        uint _283 = _207.z;
        float3 _291 = (float3(uint3(_283 >> 0u, _283 >> 16u, _278 >> 0u) & uint3(65535u, 65535u, 65535u)) - 32768.0f.xxx) * asfloat(((_278 >> 16u) - 15u) << 23u);
        float4x4 _294 = _277;
        _294[0] = _271 * _291.x;
        float4x4 _297 = _294;
        _297[1] = _276 * _291.y;
        float4x4 _300 = _297;
        _300[2] = _244 * _291.z;
        _307 = 1.0f.xxx / abs(_291).xyz;
        _308 = _300;
        _309 = asfloat(View_PrimitiveSceneData.Load4(((_193 * 40u) + 1u) * 16 + 0)).xyz;
        _310 = (((_191 >> 20u) & 1u) != 0u) ? (-1.0f) : 1.0f;
    }
    else
    {
        _307 = 0.0f.xxx;
        _308 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
        _309 = 0.0f.xxx;
        _310 = 0.0f;
    }
    uint _311 = _193 * 40u;
    uint _336 = uint(LocalVF_LocalVF_VertexFetch_Parameters.w) + uint(gl_VertexIndex);
    float4 _342 = LocalVF_VertexFetch_ColorComponentsBuffer.Load(_336 & uint(LocalVF_LocalVF_VertexFetch_Parameters.x));
    uint _344 = 2u * _336;
    float4 _349 = LocalVF_VertexFetch_PackedTangentsBuffer.Load(_344 + 1u);
    float _350 = _349.w;
    float3 _351 = _349.xyz;
    float3 _353 = cross(_351, LocalVF_VertexFetch_PackedTangentsBuffer.Load(_344).xyz) * _350;
    float3x3 _356 = _154;
    _356[0] = cross(_353, _351) * _350;
    float3x3 _357 = _356;
    _357[1] = _353;
    float3x3 _358 = _357;
    _358[2] = _351;
    float3x3 _368 = float3x3(_308[0].xyz, _308[1].xyz, _308[2].xyz);
    _368[0] = _308[0].xyz * _307.x;
    float3x3 _371 = _368;
    _371[1] = _308[1].xyz * _307.y;
    float3x3 _374 = _371;
    _374[2] = _308[2].xyz * _307.z;
    float3x3 _375 = mul(_358, _374);
    float4 _395 = float4(((_309 + (-View_View_ViewTilePosition)) * 2097152.0f) + (((((in_var_ATTRIBUTE0.xxx * _308[0].xyz) + (in_var_ATTRIBUTE0.yyy * _308[1].xyz)) + (in_var_ATTRIBUTE0.zzz * _308[2].xyz)) + _308[3].xyz) + View_View_RelativePreViewTranslation), 1.0f);
    float3 _396 = _395.xyz;
    uint _399 = uint(LocalVF_LocalVF_VertexFetch_Parameters.y);
    float4 _405 = LocalVF_VertexFetch_TexCoordBuffer.Load((_399 * _336) + min(0u, (_399 - 1u)));
    float3 _406 = _375[2];
    float3 _414 = normalize(float3(0.0f, 1.0f, 0.0f));
    float3 _415 = ((View_View_GameTime * MaterialCollection0_MaterialCollection0_Vectors[0].z) * (-0.5f)).xxx;
    float3 _417 = _396 - View_View_RelativePreViewTranslation;
    float3 _428 = abs((frac(frac((View_View_ViewTilePosition * 0.0009765625f.xxx) * 2097152.0f) + (((_414 * _415) + (_417 * 0.0009765625f.xxx)) + 0.5f.xxx)) * 2.0f.xxx) + (-1.0f).xxx);
    float3 _444 = abs((frac(frac((View_View_ViewTilePosition * 0.004999999888241291046142578125f.xxx) * 2097152.0f) + ((_415 + (_417 * 0.004999999888241291046142578125f.xxx)) + 0.5f.xxx)) * 2.0f.xxx) + (-1.0f).xxx);
    float _451 = (dot(_414, ((3.0f.xxx - (_428 * 2.0f.xxx)) * _428) * _428) + length(((3.0f.xxx - (_444 * 2.0f.xxx)) * _444) * _444)) * 6.283185482025146484375f;
    float3 _457 = float4(cross(_414, float3(0.0f, 0.0f, 1.0f)), _451).xyz;
    float3 _459 = _457 * dot(_457, float3(0.0f, 0.0f, 10.0f));
    float3 _461 = float3(0.0f, 0.0f, 10.0f) - _459;
    precise float _40 = _342.z * Material_Material_PreshaderBuffer[6].y;
    precise float3 _41 = (((float3(1.0f, 1.0f, -9.0f) + _459) + ((_461 * cos(_451)) + (cross(_457, _461) * sin(_451)))) - 1.0f.xxx) * _40.xxx;
    precise float3 _42 = _41 * MaterialCollection0_MaterialCollection0_Vectors[0].x.xxx;
    precise float3 _43 = _42 + 1.0f.xxx;
    float3 _476 = _396 + _43;
    float4 _482 = mul(float4(_476.x, _476.y, _476.z, _395.w), ShadowDepthPass_ShadowDepthPass_ProjectionMatrix);
    float4 _494 = 0.0f.xxxx;
    if ((ShadowDepthPass_ShadowDepthPass_bClampToNearPlane > 0.0f) && (_482.z > _482.w))
    {
        float4 _492 = _482;
        _492.z = 0.999998986721038818359375f;
        float4 _493 = _492;
        _493.w = 1.0f;
        _494 = _493;
    }
    else
    {
        _494 = _482;
    }
    float _499 = abs(dot(float3(ShadowDepthPass_ShadowDepthPass_ViewMatrix[0].z, ShadowDepthPass_ShadowDepthPass_ViewMatrix[1].z, ShadowDepthPass_ShadowDepthPass_ViewMatrix[2].z), _406));
    precise float _45 = _499 * _499;
    precise float _46 = 1.0f - _45;
    precise float _47 = sqrt(clamp(_46, 0.0f, 1.0f)) / _499;
    precise float _48 = ShadowDepthPass_ShadowDepthPass_ShadowParams.y * clamp((abs(_499) > 0.0f) ? _47 : ShadowDepthPass_ShadowDepthPass_ShadowParams.z, 0.0f, ShadowDepthPass_ShadowDepthPass_ShadowParams.z);
    precise float _49 = _48 + ShadowDepthPass_ShadowDepthPass_ShadowParams.x;
    precise float _50 = _494.z * ShadowDepthPass_ShadowDepthPass_ShadowParams.w;
    precise float _51 = 1.0f - _50;
    precise float _52 = _51 + _49;
    float4 _515 = _494;
    _515.z = _52;
    float3 _520 = mul(float3(0.0f, 0.0f, 1.0f), float3x3(float4(asfloat(View_PrimitiveSceneData.Load4((_311 + 2u) * 16 + 0)).xyz, 0.0f).xyz, float4(asfloat(View_PrimitiveSceneData.Load4((_311 + 3u) * 16 + 0)).xyz, 0.0f).xyz, float4(asfloat(View_PrimitiveSceneData.Load4((_311 + 4u) * 16 + 0)).xyz, 0.0f).xyz));
    float2 _522 = _156;
    _522.x = _520.x;
    float2 _524 = _522;
    _524.y = _520.y;
    float2 _526 = _155;
    _526.x = _520.z;
    float4 _538[2] = { float4(_405.x, _405.y, _524.x, _524.y), float4(_526.x, _526.y, 0.0f.xxxx.z, 0.0f.xxxx.w) };
    out_var_TEXCOORD10_centroid = float4(_375[0], 0.0f);
    out_var_TEXCOORD11_centroid = float4(_406, _350 * _310);
    out_var_COLOR0 = _342.zyxw;
    out_var_TEXCOORD0 = _538;
    out_var_PACKED_EYE_INDEX = 0u;
    out_var_PRIMITIVE_ID = _193;
    out_var_TEXCOORD6 = 0.0f;
    out_var_TEXCOORD7 = _476.xyz;
    gl_Position = _515;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_VertexIndex = int(stage_input.gl_VertexIndex);
    gl_InstanceIndex = int(stage_input.gl_InstanceIndex);
    in_var_ATTRIBUTE0 = stage_input.in_var_ATTRIBUTE0;
    in_var_ATTRIBUTE13 = stage_input.in_var_ATTRIBUTE13;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.out_var_TEXCOORD10_centroid = out_var_TEXCOORD10_centroid;
    stage_output.out_var_TEXCOORD11_centroid = out_var_TEXCOORD11_centroid;
    stage_output.out_var_COLOR0 = out_var_COLOR0;
    stage_output.out_var_TEXCOORD0 = out_var_TEXCOORD0;
    stage_output.out_var_PACKED_EYE_INDEX = out_var_PACKED_EYE_INDEX;
    stage_output.out_var_PRIMITIVE_ID = out_var_PRIMITIVE_ID;
    stage_output.out_var_TEXCOORD6 = out_var_TEXCOORD6;
    stage_output.out_var_TEXCOORD7 = out_var_TEXCOORD7;
    return stage_output;
}
