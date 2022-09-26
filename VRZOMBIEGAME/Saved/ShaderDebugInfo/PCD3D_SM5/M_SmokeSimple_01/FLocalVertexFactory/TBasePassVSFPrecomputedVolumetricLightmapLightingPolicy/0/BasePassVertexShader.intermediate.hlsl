static const float _138[2] = { -1.0f, 1.0f };
static const float4 _141[2] = { float4(-1.0f, 0.0f, 0.0f, 1.0f), float4(1.0f, 0.0f, 0.0f, 1.0f) };

cbuffer TranslucentBasePass
{
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters : packoffset(c109);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2 : packoffset(c110);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogColorParameter : packoffset(c111);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3 : packoffset(c112);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Fog_InscatteringLightDirection : packoffset(c113);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Fog_DirectionalInscatteringColor : packoffset(c114);
    float2 TranslucentBasePass_TranslucentBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation : packoffset(c115);
    float3 TranslucentBasePass_TranslucentBasePass_Shared_Fog_FogInscatteringTextureParameters : packoffset(c116);
};

cbuffer View
{
    row_major float4x4 View_View_TranslatedWorldToClip : packoffset(c0);
    float3 View_View_ViewTilePosition : packoffset(c60);
    float3 View_View_ViewForward : packoffset(c62);
    float3 View_View_RelativeWorldCameraOrigin : packoffset(c69);
    float3 View_View_TranslatedWorldCameraOrigin : packoffset(c70);
    float3 View_View_RelativePreViewTranslation : packoffset(c72);
    float View_View_OneOverPreExposure : packoffset(c130.z);
    float4 View_View_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize : packoffset(c175);
    float View_View_SkyAtmosphereAerialPerspectiveStartDepthKm : packoffset(c176);
    float View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution : packoffset(c176.y);
    float View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv : packoffset(c176.z);
    float View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv : packoffset(c177);
    float View_View_SkyAtmosphereApplyCameraAerialPerspectiveVolume : packoffset(c177.y);
    float View_View_RealTimeReflectionCapture : packoffset(c179);
    float View_View_HMDEyePaddingOffset : packoffset(c190.y);
    float View_View_VolumetricFogMaxDistance : packoffset(c225.z);
    uint View_View_InstanceSceneDataSOAStride : packoffset(c277);
};

ByteAddressBuffer View_PrimitiveSceneData;
ByteAddressBuffer View_InstanceSceneData;
cbuffer InstancedView
{
    row_major float4x4 InstancedView_InstancedView_TranslatedWorldToClip : packoffset(c0);
    float3 InstancedView_InstancedView_ViewTilePosition : packoffset(c60);
    float3 InstancedView_InstancedView_TranslatedWorldCameraOrigin : packoffset(c70);
    float3 InstancedView_InstancedView_RelativePreViewTranslation : packoffset(c72);
    float InstancedView_InstancedView_OneOverPreExposure : packoffset(c130.z);
    float4 InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize : packoffset(c175);
    float InstancedView_InstancedView_SkyAtmosphereAerialPerspectiveStartDepthKm : packoffset(c176);
    float InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution : packoffset(c176.y);
    float InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv : packoffset(c176.z);
    float InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv : packoffset(c177);
    float InstancedView_InstancedView_SkyAtmosphereApplyCameraAerialPerspectiveVolume : packoffset(c177.y);
    float InstancedView_InstancedView_RealTimeReflectionCapture : packoffset(c179);
    float InstancedView_InstancedView_HMDEyePaddingOffset : packoffset(c190.y);
    int InstancedView_InstancedView_StereoPassIndex : packoffset(c192.w);
};

ByteAddressBuffer InstanceCulling_InstanceIdsBuffer;
cbuffer LocalVF
{
    int4 LocalVF_LocalVF_VertexFetch_Parameters : packoffset(c0);
};

TextureCube<float4> TranslucentBasePass_Shared_Fog_FogInscatteringColorCubemap;
SamplerState TranslucentBasePass_Shared_Fog_FogInscatteringColorSampler;
Texture3D<float4> View_CameraAerialPerspectiveVolume;
SamplerState View_CameraAerialPerspectiveVolumeSampler;
Buffer<float4> LocalVF_VertexFetch_TexCoordBuffer;
Buffer<float4> LocalVF_VertexFetch_PackedTangentsBuffer;

static float4 gl_Position;
static float gl_ClipDistance[1];
static int gl_VertexIndex;
static int gl_InstanceIndex;
static float4 in_var_ATTRIBUTE0;
static uint in_var_ATTRIBUTE13;
static float4 out_var_TEXCOORD10_centroid;
static float4 out_var_TEXCOORD11_centroid;
static float4 out_var_TEXCOORD0[1];
static uint out_var_PACKED_EYE_INDEX;
static uint out_var_PRIMITIVE_ID;
static float4 out_var_TEXCOORD7;

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
    float4 out_var_TEXCOORD0[1] : TEXCOORD0;
    nointerpolation uint out_var_PACKED_EYE_INDEX : PACKED_EYE_INDEX;
    nointerpolation uint out_var_PRIMITIVE_ID : PRIMITIVE_ID;
    float4 out_var_TEXCOORD7 : TEXCOORD7;
    precise float4 gl_Position : SV_Position;
    float gl_ClipDistance0 : SV_ClipDistance0;
};

static float3x3 _154 = float3x3(0.0f.xxx, 0.0f.xxx, 0.0f.xxx);
static float4 _155 = 0.0f.xxxx;
static float2 _156 = 0.0f.xx;

void vert_main()
{
    bool _172 = InstancedView_InstancedView_StereoPassIndex > 0;
    uint _174 = _172 ? (uint(gl_InstanceIndex) & 1u) : 0u;
    float4x4 _235 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _236 = 0.0f.xxx;
    float _237 = 0.0f;
    float4 _238 = 0.0f.xxxx;
    float _239 = 0.0f;
    float _240 = 0.0f;
    float _241 = 0.0f;
    float _242 = 0.0f;
    float _243 = 0.0f;
    float _244 = 0.0f;
    float _245 = 0.0f;
    float3 _246 = 0.0f.xxx;
    float3 _247 = 0.0f.xxx;
    do
    {
        if (_174 == 0u)
        {
            _235 = View_View_TranslatedWorldToClip;
            _236 = View_View_TranslatedWorldCameraOrigin;
            _237 = View_View_OneOverPreExposure;
            _238 = View_View_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize;
            _239 = View_View_SkyAtmosphereAerialPerspectiveStartDepthKm;
            _240 = View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution;
            _241 = View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv;
            _242 = View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv;
            _243 = View_View_SkyAtmosphereApplyCameraAerialPerspectiveVolume;
            _244 = View_View_RealTimeReflectionCapture;
            _245 = View_View_HMDEyePaddingOffset;
            _246 = -View_View_ViewTilePosition;
            _247 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _235 = InstancedView_InstancedView_TranslatedWorldToClip;
            _236 = InstancedView_InstancedView_TranslatedWorldCameraOrigin;
            _237 = InstancedView_InstancedView_OneOverPreExposure;
            _238 = InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize;
            _239 = InstancedView_InstancedView_SkyAtmosphereAerialPerspectiveStartDepthKm;
            _240 = InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution;
            _241 = InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv;
            _242 = InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv;
            _243 = InstancedView_InstancedView_SkyAtmosphereApplyCameraAerialPerspectiveVolume;
            _244 = InstancedView_InstancedView_RealTimeReflectionCapture;
            _245 = InstancedView_InstancedView_HMDEyePaddingOffset;
            _246 = -InstancedView_InstancedView_ViewTilePosition;
            _247 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    uint _266 = 0u;
    if ((in_var_ATTRIBUTE13 & 2147483648u) != 0u)
    {
        _266 = uint(int(asuint(asfloat(View_PrimitiveSceneData.Load4(((in_var_ATTRIBUTE13 & 2147483647u) * 40u) * 16 + 0)).y))) + uint(gl_InstanceIndex);
    }
    else
    {
        _266 = InstanceCulling_InstanceIdsBuffer.Load((in_var_ATTRIBUTE13 + uint(gl_InstanceIndex)) * 4 + 0) & 268435455u;
    }
    uint _272 = asuint(asfloat(View_InstanceSceneData.Load4(_266 * 16 + 0)).x);
    uint _274 = (_272 << 12u) >> 12u;
    float3 _388 = 0.0f.xxx;
    float4x4 _389 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _390 = 0.0f.xxx;
    float _391 = 0.0f;
    [branch]
    if (false || (_274 != 1048575u))
    {
        uint4 _288 = asuint(asfloat(View_InstanceSceneData.Load4((View_View_InstanceSceneDataSOAStride + _266) * 16 + 0)));
        uint _290 = (2u * View_View_InstanceSceneDataSOAStride) + _266;
        float4x4 _294 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
        _294[3] = float4(asfloat(View_InstanceSceneData.Load4(_290 * 16 + 0)).x, asfloat(View_InstanceSceneData.Load4(_290 * 16 + 0)).y, asfloat(View_InstanceSceneData.Load4(_290 * 16 + 0)).z, 0.0f.xxxx.w);
        float4x4 _295 = _294;
        _295[3].w = 1.0f;
        uint _296 = _288.x;
        uint _303 = _288.y;
        float _306 = float((_303 >> 0u) & 32767u);
        float2 _310 = (float3(float((_296 >> 0u) & 65535u), float((_296 >> 16u) & 65535u), _306).xy - 32768.0f.xx) * 3.0518509447574615478515625e-05f;
        float _312 = (_306 - 16384.0f) * 4.3161006033187732100486755371094e-05f;
        bool _314 = (_303 & 32768u) != 0u;
        float _315 = _310.x;
        float _316 = _310.y;
        float _317 = _315 + _316;
        float _318 = _315 - _316;
        float3 _324 = normalize(float3(_317, _318, 2.0f - dot(1.0f.xx, abs(float2(_317, _318)))));
        float4 _325 = float4(_324.x, _324.y, _324.z, 0.0f.xxxx.w);
        float4x4 _326 = _295;
        _326[2] = _325;
        float _329 = 1.0f / (1.0f + _324.z);
        float _330 = _324.x;
        float _331 = -_330;
        float _332 = _324.y;
        float _334 = (_331 * _332) * _329;
        float _346 = sqrt(1.0f - (_312 * _312));
        float3 _351 = (float3(1.0f - ((_330 * _330) * _329), _334, _331) * (_314 ? _312 : _346)) + (float3(_334, 1.0f - ((_332 * _332) * _329), -_332) * (_314 ? _346 : _312));
        float4 _352 = float4(_351.x, _351.y, _351.z, 0.0f.xxxx.w);
        float4x4 _353 = _326;
        _353[0] = _352;
        float3 _356 = cross(_324.xyz, _351.xyz);
        float4 _357 = float4(_356.x, _356.y, _356.z, 0.0f.xxxx.w);
        float4x4 _358 = _353;
        _358[1] = _357;
        uint _359 = _288.w;
        uint _364 = _288.z;
        float3 _372 = (float3(uint3(_364 >> 0u, _364 >> 16u, _359 >> 0u) & uint3(65535u, 65535u, 65535u)) - 32768.0f.xxx) * asfloat(((_359 >> 16u) - 15u) << 23u);
        float4x4 _375 = _358;
        _375[0] = _352 * _372.x;
        float4x4 _378 = _375;
        _378[1] = _357 * _372.y;
        float4x4 _381 = _378;
        _381[2] = _325 * _372.z;
        _388 = 1.0f.xxx / abs(_372).xyz;
        _389 = _381;
        _390 = asfloat(View_PrimitiveSceneData.Load4(((_274 * 40u) + 1u) * 16 + 0)).xyz;
        _391 = (((_272 >> 20u) & 1u) != 0u) ? (-1.0f) : 1.0f;
    }
    else
    {
        _388 = 0.0f.xxx;
        _389 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
        _390 = 0.0f.xxx;
        _391 = 0.0f;
    }
    uint _395 = uint(LocalVF_LocalVF_VertexFetch_Parameters.w) + uint(gl_VertexIndex);
    uint _396 = 2u * _395;
    float4 _401 = LocalVF_VertexFetch_PackedTangentsBuffer.Load(_396 + 1u);
    float _402 = _401.w;
    float3 _403 = _401.xyz;
    float3 _405 = cross(_403, LocalVF_VertexFetch_PackedTangentsBuffer.Load(_396).xyz) * _402;
    float3x3 _408 = _154;
    _408[0] = cross(_405, _403) * _402;
    float3x3 _409 = _408;
    _409[1] = _405;
    float3x3 _410 = _409;
    _410[2] = _403;
    float3x3 _420 = float3x3(_389[0].xyz, _389[1].xyz, _389[2].xyz);
    _420[0] = _389[0].xyz * _388.x;
    float3x3 _423 = _420;
    _423[1] = _389[1].xyz * _388.y;
    float3x3 _426 = _423;
    _426[2] = _389[2].xyz * _388.z;
    float3x3 _427 = mul(_410, _426);
    float4 _447 = float4(((_390 + _246) * 2097152.0f) + (((((in_var_ATTRIBUTE0.xxx * _389[0].xyz) + (in_var_ATTRIBUTE0.yyy * _389[1].xyz)) + (in_var_ATTRIBUTE0.zzz * _389[2].xyz)) + _389[3].xyz) + _247), 1.0f);
    uint _450 = uint(LocalVF_LocalVF_VertexFetch_Parameters.y);
    float4 _456 = LocalVF_VertexFetch_TexCoordBuffer.Load((_450 * _395) + min(0u, (_450 - 1u)));
    float4 _458 = mul(float4(_447.x, _447.y, _447.z, _447.w), _235);
    float4 _475 = 0.0f.xxxx;
    float _476 = 0.0f;
    [branch]
    if (_172)
    {
        float _464 = 0.5f * _245;
        float4 _474 = _458;
        _474.x = (_458.x * _464) + ((_138[_174] * _458.w) * (1.0f - _464));
        _475 = _474;
        _476 = dot(_458, _141[_174]);
    }
    else
    {
        _475 = _458;
        _476 = 0.0f;
    }
    float4 _488[1] = { float4(_456.x, _456.y, 0.0f.xxxx.z, 0.0f.xxxx.w) };
    float3 _489 = _447.xyz;
    float3 _490 = _489 - _236;
    float3 _510 = (View_View_ViewTilePosition * 2097152.0f) + View_View_RelativeWorldCameraOrigin;
    float _511 = _510.z;
    float _512 = min(_511, TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters.z);
    float _515 = _490.z + (_511 - _512);
    float3 _516 = _490;
    _516.z = _515;
    float _517 = dot(_516, _516);
    float _518 = rsqrt(_517);
    float _519 = _517 * _518;
    float _527 = max(max(View_View_VolumetricFogMaxDistance * (length(_490) / dot(_490, View_View_ViewForward)), 0.0f), TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters.w);
    float _561 = 0.0f;
    float _562 = 0.0f;
    float _563 = 0.0f;
    float _564 = 0.0f;
    if (_527 > 0.0f)
    {
        float _531 = _527 * _518;
        float _532 = _531 * _515;
        float _533 = _512 + _532;
        _561 = (1.0f - _531) * _519;
        _562 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2.z * exp2(-max(-127.0f, TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2.y * (_533 - TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2.w)));
        _563 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.x * exp2(-max(-127.0f, TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters.y * (_533 - TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.y)));
        _564 = _515 - _532;
    }
    else
    {
        _561 = _519;
        _562 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2.x;
        _563 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters.x;
        _564 = _515;
    }
    float _568 = max(-127.0f, TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters.y * _564);
    float _582 = max(-127.0f, TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2.y * _564);
    float _593 = (_563 * ((abs(_568) > 0.00999999977648258209228515625f) ? ((1.0f - exp2(-_568)) / _568) : (0.693147182464599609375f - (0.2402265071868896484375f * _568)))) + (_562 * ((abs(_582) > 0.00999999977648258209228515625f) ? ((1.0f - exp2(-_582)) / _582) : (0.693147182464599609375f - (0.2402265071868896484375f * _582))));
    float3 _635 = 0.0f.xxx;
    [branch]
    if (TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.z > 0.0f)
    {
        float2 _620 = float2(dot(_516.xy, float2(TranslucentBasePass_TranslucentBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation.y, -TranslucentBasePass_TranslucentBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation.x)), dot(_516.xy, TranslucentBasePass_TranslucentBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation));
        float3 _621 = float3(_620.x, _620.y, _516.z);
        _635 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogColorParameter.xyz * lerp(TranslucentBasePass_Shared_Fog_FogInscatteringColorCubemap.SampleLevel(TranslucentBasePass_Shared_Fog_FogInscatteringColorSampler, _621, TranslucentBasePass_TranslucentBasePass_Shared_Fog_FogInscatteringTextureParameters.z).xyz, TranslucentBasePass_Shared_Fog_FogInscatteringColorCubemap.SampleLevel(TranslucentBasePass_Shared_Fog_FogInscatteringColorSampler, _621, 0.0f).xyz, clamp((_519 * TranslucentBasePass_TranslucentBasePass_Shared_Fog_FogInscatteringTextureParameters.x) + TranslucentBasePass_TranslucentBasePass_Shared_Fog_FogInscatteringTextureParameters.y, 0.0f, 1.0f).xxx);
    }
    else
    {
        _635 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogColorParameter.xyz;
    }
    float3 _663 = 0.0f.xxx;
    [branch]
    if ((TranslucentBasePass_TranslucentBasePass_Shared_Fog_InscatteringLightDirection.w >= 0.0f) && (TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.z == 0.0f))
    {
        _663 = (TranslucentBasePass_TranslucentBasePass_Shared_Fog_DirectionalInscatteringColor.xyz * pow(clamp(dot(_516 * _518, TranslucentBasePass_TranslucentBasePass_Shared_Fog_InscatteringLightDirection.xyz), 0.0f, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Fog_DirectionalInscatteringColor.w)) * (1.0f - clamp(exp2(-(_593 * max(_561 - TranslucentBasePass_TranslucentBasePass_Shared_Fog_InscatteringLightDirection.w, 0.0f))), 0.0f, 1.0f));
    }
    else
    {
        _663 = 0.0f.xxx;
    }
    bool _672 = (TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.w > 0.0f) && (_519 > TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.w);
    bool3 _673 = _672.xxx;
    float _675 = _672 ? 1.0f : max(clamp(exp2(-(_593 * _561)), 0.0f, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogColorParameter.w);
    float4 _682 = float4((_635 * (1.0f - _675)) + float3(_673.x ? 0.0f.xxx.x : _663.x, _673.y ? 0.0f.xxx.y : _663.y, _673.z ? 0.0f.xxx.z : _663.z), _675);
    float4 _759 = 0.0f.xxxx;
    if (_243 > 0.0f)
    {
        float3 _696 = (_489 * 9.9999997473787516355514526367188e-06f) - (_236 * 9.9999997473787516355514526367188e-06f);
        float _702 = sqrt((max(0.0f, length(_696) - _239) * _242) * _241);
        float _703 = _702 * _240;
        float _710 = 0.0f;
        if (_703 < 0.707106769084930419921875f)
        {
            _710 = clamp((_703 * _703) * 2.0f, 0.0f, 1.0f);
        }
        else
        {
            _710 = 1.0f;
        }
        float2 _738 = 0.0f.xx;
        if (_244 != 0.0f)
        {
            float3 _713 = normalize(_696);
            float _714 = _713.z;
            float _717 = sqrt(1.0f - (_714 * _714));
            float2 _720 = _156;
            _720.y = (_714 * 0.5f) + 0.5f;
            float _725 = acos(_713.x / _717);
            float2 _730 = _720;
            _730.x = (((_713.y / _717) < 0.0f) ? (6.283185482025146484375f - _725) : _725) * 0.15915493667125701904296875f;
            _738 = (_730 + (_238.zw * 0.5f)) * (_238.xy / (_238.xy + 1.0f.xx));
        }
        else
        {
            _738 = ((_475.xy / _475.ww) * float2(0.5f, -0.5f)) + 0.5f.xx;
        }
        float4 _743 = View_CameraAerialPerspectiveVolume.SampleLevel(View_CameraAerialPerspectiveVolumeSampler, float3(_738, _702), 0.0f);
        float3 _755 = _682.xyz + (((_743.xyz * _710).xyz * _237).xyz * _675);
        float4 _758 = float4(_755.x, _755.y, _755.z, _155.w);
        _758.w = _675 * (1.0f - (_710 * (1.0f - _743.w)));
        _759 = _758;
    }
    else
    {
        _759 = _682;
    }
    out_var_TEXCOORD10_centroid = float4(_427[0], 0.0f);
    out_var_TEXCOORD11_centroid = float4(_427[2], _402 * _391);
    out_var_TEXCOORD0 = _488;
    out_var_PACKED_EYE_INDEX = _174;
    out_var_PRIMITIVE_ID = _274;
    out_var_TEXCOORD7 = _759;
    gl_Position = _475;
    gl_ClipDistance[0u] = _476;
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
    stage_output.gl_ClipDistance0.x = gl_ClipDistance[0];
    stage_output.out_var_TEXCOORD10_centroid = out_var_TEXCOORD10_centroid;
    stage_output.out_var_TEXCOORD11_centroid = out_var_TEXCOORD11_centroid;
    stage_output.out_var_TEXCOORD0 = out_var_TEXCOORD0;
    stage_output.out_var_PACKED_EYE_INDEX = out_var_PACKED_EYE_INDEX;
    stage_output.out_var_PRIMITIVE_ID = out_var_PRIMITIVE_ID;
    stage_output.out_var_TEXCOORD7 = out_var_TEXCOORD7;
    return stage_output;
}
