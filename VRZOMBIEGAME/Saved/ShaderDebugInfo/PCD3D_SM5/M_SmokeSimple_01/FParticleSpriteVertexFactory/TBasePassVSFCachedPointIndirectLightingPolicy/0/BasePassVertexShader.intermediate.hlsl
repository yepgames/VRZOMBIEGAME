static const float _131[2] = { -1.0f, 1.0f };
static const float4 _134[2] = { float4(-1.0f, 0.0f, 0.0f, 1.0f), float4(1.0f, 0.0f, 0.0f, 1.0f) };

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
    float3 View_View_ViewUp : packoffset(c63);
    float3 View_View_ViewRight : packoffset(c64);
    float3 View_View_HMDViewNoRollUp : packoffset(c65);
    float3 View_View_HMDViewNoRollRight : packoffset(c66);
    float3 View_View_RelativeWorldCameraOrigin : packoffset(c69);
    float3 View_View_TranslatedWorldCameraOrigin : packoffset(c70);
    float3 View_View_RelativePreViewTranslation : packoffset(c72);
    float View_View_OneOverPreExposure : packoffset(c130.z);
    float4 View_View_TranslucencyLightingVolumeInvSize[2] : packoffset(c145);
    float4 View_View_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize : packoffset(c175);
    float View_View_SkyAtmosphereAerialPerspectiveStartDepthKm : packoffset(c176);
    float View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution : packoffset(c176.y);
    float View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv : packoffset(c176.z);
    float View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv : packoffset(c177);
    float View_View_SkyAtmosphereApplyCameraAerialPerspectiveVolume : packoffset(c177.y);
    float View_View_RealTimeReflectionCapture : packoffset(c179);
    float View_View_HMDEyePaddingOffset : packoffset(c190.y);
    float View_View_VolumetricFogMaxDistance : packoffset(c225.z);
};

cbuffer InstancedView
{
    row_major float4x4 InstancedView_InstancedView_TranslatedWorldToClip : packoffset(c0);
    float3 InstancedView_InstancedView_ViewTilePosition : packoffset(c60);
    float3 InstancedView_InstancedView_ViewUp : packoffset(c63);
    float3 InstancedView_InstancedView_ViewRight : packoffset(c64);
    float3 InstancedView_InstancedView_HMDViewNoRollUp : packoffset(c65);
    float3 InstancedView_InstancedView_HMDViewNoRollRight : packoffset(c66);
    float3 InstancedView_InstancedView_RelativeWorldCameraOrigin : packoffset(c69);
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

cbuffer Primitive
{
    float3 Primitive_Primitive_TilePosition : packoffset(c1);
    row_major float4x4 Primitive_Primitive_LocalToRelativeWorld : packoffset(c2);
};

cbuffer SpriteVF
{
    float4 SpriteVF_SpriteVF_AxisLockRight : packoffset(c0);
    float4 SpriteVF_SpriteVF_AxisLockUp : packoffset(c1);
    float4 SpriteVF_SpriteVF_TangentSelector : packoffset(c2);
    float4 SpriteVF_SpriteVF_NormalsSphereCenter : packoffset(c3);
    float4 SpriteVF_SpriteVF_NormalsCylinderUnitDirection : packoffset(c4);
    float4 SpriteVF_SpriteVF_SubImageSize : packoffset(c5);
    float3 SpriteVF_SpriteVF_CameraFacingBlend : packoffset(c6);
    float SpriteVF_SpriteVF_RemoveHMDRoll : packoffset(c6.w);
    float SpriteVF_SpriteVF_RotationScale : packoffset(c8);
    float SpriteVF_SpriteVF_RotationBias : packoffset(c8.y);
    float SpriteVF_SpriteVF_NormalsType : packoffset(c8.z);
    float2 SpriteVF_SpriteVF_PivotOffset : packoffset(c9);
};

uint NumCutoutVerticesPerFrame;

TextureCube<float4> TranslucentBasePass_Shared_Fog_FogInscatteringColorCubemap;
SamplerState TranslucentBasePass_Shared_Fog_FogInscatteringColorSampler;
Texture3D<float4> View_CameraAerialPerspectiveVolume;
SamplerState View_CameraAerialPerspectiveVolumeSampler;
Buffer<float4> CutoutGeometry;

static float4 gl_Position;
static float gl_ClipDistance[1];
static int gl_VertexIndex;
static int gl_InstanceIndex;
static float4 in_var_ATTRIBUTE0;
static float4 in_var_ATTRIBUTE1;
static float4 in_var_ATTRIBUTE2;
static float4 in_var_ATTRIBUTE3;
static float2 in_var_ATTRIBUTE4;
static float4 out_var_TEXCOORD10;
static float4 out_var_TEXCOORD11;
static float4 out_var_TEXCOORD2;
static float4 out_var_TEXCOORD3[1];
static float3 out_var_PARTICLE_LIGHTING_OFFSET;
static uint out_var_PACKED_EYE_INDEX;
static float4 out_var_TEXCOORD7;

struct SPIRV_Cross_Input
{
    float4 in_var_ATTRIBUTE0 : ATTRIBUTE0;
    float4 in_var_ATTRIBUTE1 : ATTRIBUTE1;
    float4 in_var_ATTRIBUTE2 : ATTRIBUTE2;
    float4 in_var_ATTRIBUTE3 : ATTRIBUTE3;
    float2 in_var_ATTRIBUTE4 : ATTRIBUTE4;
    uint gl_VertexIndex : SV_VertexID;
    uint gl_InstanceIndex : SV_InstanceID;
};

struct SPIRV_Cross_Output
{
    float4 out_var_TEXCOORD10 : TEXCOORD10;
    float4 out_var_TEXCOORD11 : TEXCOORD11;
    float4 out_var_TEXCOORD2 : TEXCOORD2;
    float4 out_var_TEXCOORD3[1] : TEXCOORD3;
    float3 out_var_PARTICLE_LIGHTING_OFFSET : PARTICLE_LIGHTING_OFFSET;
    nointerpolation uint out_var_PACKED_EYE_INDEX : PACKED_EYE_INDEX;
    float4 out_var_TEXCOORD7 : TEXCOORD7;
    precise float4 gl_Position : SV_Position;
    float gl_ClipDistance0 : SV_ClipDistance0;
};

static float3x3 _140 = float3x3(0.0f.xxx, 0.0f.xxx, 0.0f.xxx);
static float4 _141 = 0.0f.xxxx;
static float2 _142 = 0.0f.xx;

void vert_main()
{
    bool _168 = InstancedView_InstancedView_StereoPassIndex > 0;
    uint _170 = _168 ? (uint(gl_InstanceIndex) & 1u) : 0u;
    float4x4 _251 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _252 = 0.0f.xxx;
    float3 _253 = 0.0f.xxx;
    float3 _254 = 0.0f.xxx;
    float3 _255 = 0.0f.xxx;
    float3 _256 = 0.0f.xxx;
    float _257 = 0.0f;
    float4 _258 = 0.0f.xxxx;
    float _259 = 0.0f;
    float _260 = 0.0f;
    float _261 = 0.0f;
    float _262 = 0.0f;
    float _263 = 0.0f;
    float _264 = 0.0f;
    float _265 = 0.0f;
    float3 _266 = 0.0f.xxx;
    float3 _267 = 0.0f.xxx;
    float3 _268 = 0.0f.xxx;
    float3 _269 = 0.0f.xxx;
    do
    {
        if (_170 == 0u)
        {
            _251 = View_View_TranslatedWorldToClip;
            _252 = View_View_ViewUp;
            _253 = View_View_ViewRight;
            _254 = View_View_HMDViewNoRollUp;
            _255 = View_View_HMDViewNoRollRight;
            _256 = View_View_TranslatedWorldCameraOrigin;
            _257 = View_View_OneOverPreExposure;
            _258 = View_View_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize;
            _259 = View_View_SkyAtmosphereAerialPerspectiveStartDepthKm;
            _260 = View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution;
            _261 = View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv;
            _262 = View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv;
            _263 = View_View_SkyAtmosphereApplyCameraAerialPerspectiveVolume;
            _264 = View_View_RealTimeReflectionCapture;
            _265 = View_View_HMDEyePaddingOffset;
            _266 = View_View_ViewTilePosition;
            _267 = View_View_RelativeWorldCameraOrigin;
            _268 = -View_View_ViewTilePosition;
            _269 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _251 = InstancedView_InstancedView_TranslatedWorldToClip;
            _252 = InstancedView_InstancedView_ViewUp;
            _253 = InstancedView_InstancedView_ViewRight;
            _254 = InstancedView_InstancedView_HMDViewNoRollUp;
            _255 = InstancedView_InstancedView_HMDViewNoRollRight;
            _256 = InstancedView_InstancedView_TranslatedWorldCameraOrigin;
            _257 = InstancedView_InstancedView_OneOverPreExposure;
            _258 = InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize;
            _259 = InstancedView_InstancedView_SkyAtmosphereAerialPerspectiveStartDepthKm;
            _260 = InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution;
            _261 = InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv;
            _262 = InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv;
            _263 = InstancedView_InstancedView_SkyAtmosphereApplyCameraAerialPerspectiveVolume;
            _264 = InstancedView_InstancedView_RealTimeReflectionCapture;
            _265 = InstancedView_InstancedView_HMDEyePaddingOffset;
            _266 = InstancedView_InstancedView_ViewTilePosition;
            _267 = InstancedView_InstancedView_RelativeWorldCameraOrigin;
            _268 = -InstancedView_InstancedView_ViewTilePosition;
            _269 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float3 _295 = float4(Primitive_Primitive_LocalToRelativeWorld[0].xyz, 0.0f).xyz;
    float3 _298 = float4(Primitive_Primitive_LocalToRelativeWorld[1].xyz, 0.0f).xyz;
    float3 _302 = float4(Primitive_Primitive_LocalToRelativeWorld[2].xyz, 0.0f).xyz;
    float3 _305 = float4(Primitive_Primitive_LocalToRelativeWorld[3].xyz, 1.0f).xyz;
    float3 _307 = Primitive_Primitive_TilePosition * 2097152.0f;
    float3 _308 = _307 + ((((in_var_ATTRIBUTE0.xxx * _295) + (in_var_ATTRIBUTE0.yyy * _298)) + (in_var_ATTRIBUTE0.zzz * _302)) + _305);
    float3 _321 = SpriteVF_SpriteVF_RemoveHMDRoll.xxx;
    float3 _330 = lerp(lerp(_253, _255, _321), SpriteVF_SpriteVF_AxisLockRight.xyz, SpriteVF_SpriteVF_AxisLockRight.w.xxx);
    float3 _338 = lerp(-lerp(_252, _254, _321), SpriteVF_SpriteVF_AxisLockUp.xyz, SpriteVF_SpriteVF_AxisLockUp.w.xxx);
    float3 _341 = ((_266 * 2097152.0f) + _267) - _308;
    float _342 = dot(_341, _341);
    float3 _345 = _341 * rsqrt(max(_342, 9.9999999392252902907785028219223e-09f));
    float3 _415 = 0.0f.xxx;
    float3 _416 = 0.0f.xxx;
    [branch]
    if (SpriteVF_SpriteVF_CameraFacingBlend.x > 0.0f)
    {
        float3 _404 = cross(_345, float3(0.0f, 0.0f, 1.0f));
        float3 _408 = _404 * rsqrt(max(dot(_404, _404), 9.9999999392252902907785028219223e-09f));
        float3 _410 = clamp((_342 * SpriteVF_SpriteVF_CameraFacingBlend.y) - SpriteVF_SpriteVF_CameraFacingBlend.z, 0.0f, 1.0f).xxx;
        _415 = normalize(lerp(_330, _408, _410));
        _416 = normalize(lerp(_338, cross(_345, _408), _410));
    }
    else
    {
        float3 _395 = 0.0f.xxx;
        float3 _396 = 0.0f.xxx;
        [flatten]
        if (SpriteVF_SpriteVF_TangentSelector.y > 0.0f)
        {
            float3 _384 = _308 - (_307 + ((((in_var_ATTRIBUTE1.xxx * _295) + (in_var_ATTRIBUTE1.yyy * _298)) + (in_var_ATTRIBUTE1.zzz * _302)) + _305));
            float3 _388 = _384 * rsqrt(max(dot(_384, _384), 9.9999999392252902907785028219223e-09f));
            float3 _389 = cross(_345, _388);
            _395 = _389 * rsqrt(max(dot(_389, _389), 9.9999999392252902907785028219223e-09f));
            _396 = -_388;
        }
        else
        {
            float3 _382 = 0.0f.xxx;
            float3 _383 = 0.0f.xxx;
            if (SpriteVF_SpriteVF_TangentSelector.z > 0.0f)
            {
                float3 _376 = cross(SpriteVF_SpriteVF_AxisLockRight.xyz, _345);
                _382 = SpriteVF_SpriteVF_AxisLockRight.xyz;
                _383 = -(_376 * rsqrt(max(dot(_376, _376), 9.9999999392252902907785028219223e-09f)));
            }
            else
            {
                float3 _374 = 0.0f.xxx;
                float3 _375 = 0.0f.xxx;
                if (SpriteVF_SpriteVF_TangentSelector.w > 0.0f)
                {
                    float3 _368 = cross(_345, float3(0.0f, 0.0f, 1.0f));
                    float3 _372 = _368 * rsqrt(max(dot(_368, _368), 9.9999999392252902907785028219223e-09f));
                    _374 = _372;
                    _375 = cross(_345, _372);
                }
                else
                {
                    _374 = _330;
                    _375 = _338;
                }
                _382 = _374;
                _383 = _375;
            }
            _395 = _382;
            _396 = _383;
        }
        _415 = _395;
        _416 = _396;
    }
    float _423 = (in_var_ATTRIBUTE2.z * SpriteVF_SpriteVF_RotationScale) + SpriteVF_SpriteVF_RotationBias;
    float _424 = sin(_423);
    float _425 = cos(_423);
    float3 _428 = (_416 * _424) + (_415 * _425);
    float3 _431 = (_416 * _425) - (_415 * _424);
    float2 _435 = float2(int2(sign(in_var_ATTRIBUTE2.xy)));
    float2 _490 = 0.0f.xx;
    float2 _491 = 0.0f.xx;
    [branch]
    if (NumCutoutVerticesPerFrame > 0u)
    {
        uint _457 = uint(fmod(float(uint(gl_VertexIndex)), float(NumCutoutVerticesPerFrame)));
        float _466 = _435.x;
        float _467 = _435.y;
        uint _474 = 0u;
        [flatten]
        if ((_466 * _467) < 0.0f)
        {
            _474 = (NumCutoutVerticesPerFrame - 1u) - _457;
        }
        else
        {
            _474 = _457;
        }
        float4 _478 = CutoutGeometry.Load((uint(fmod(in_var_ATTRIBUTE2.w, SpriteVF_SpriteVF_SubImageSize.x * SpriteVF_SpriteVF_SubImageSize.y)) * NumCutoutVerticesPerFrame) + _474);
        float _481 = _478.x;
        float2 _484 = _142;
        _484.x = (_466 < 0.0f) ? (1.0f - _481) : _481;
        float _486 = _478.y;
        float2 _489 = _484;
        _489.y = (_467 < 0.0f) ? (1.0f - _486) : _486;
        _490 = _478.xy;
        _491 = _489;
    }
    else
    {
        float2 _447 = _142;
        _447.x = (_435.x < 0.0f) ? (1.0f - in_var_ATTRIBUTE4.x) : in_var_ATTRIBUTE4.x;
        float2 _453 = _447;
        _453.y = (_435.y < 0.0f) ? (1.0f - in_var_ATTRIBUTE4.y) : in_var_ATTRIBUTE4.y;
        _490 = _453;
        _491 = in_var_ATTRIBUTE4;
    }
    float2 _499 = abs(in_var_ATTRIBUTE2.xy);
    float _525 = frac(in_var_ATTRIBUTE2.w);
    float _527 = (in_var_ATTRIBUTE2.w - _525) + 0.5f;
    float2 _541 = (float2(floor(fmod(_527, SpriteVF_SpriteVF_SubImageSize.x)), floor(_527 * SpriteVF_SpriteVF_SubImageSize.z)) + _490) * SpriteVF_SpriteVF_SubImageSize.zw;
    float3x3 _542 = _140;
    _542[0] = _428;
    float3x3 _543 = _542;
    _543[1] = _431;
    float3x3 _577 = float3x3(0.0f.xxx, 0.0f.xxx, 0.0f.xxx);
    if (SpriteVF_SpriteVF_NormalsType < 0.5f)
    {
        float3x3 _576 = _543;
        _576[2] = normalize(cross(_428, _431));
        _577 = _576;
    }
    else
    {
        float3x3 _573 = float3x3(0.0f.xxx, 0.0f.xxx, 0.0f.xxx);
        if (SpriteVF_SpriteVF_NormalsType < 1.5f)
        {
            float3x3 _572 = _543;
            _572[2] = normalize(_308 - SpriteVF_SpriteVF_NormalsSphereCenter.xyz);
            _573 = _572;
        }
        else
        {
            float3x3 _566 = _543;
            _566[2] = normalize(_308 - (SpriteVF_SpriteVF_NormalsSphereCenter.xyz + (SpriteVF_SpriteVF_NormalsCylinderUnitDirection.xyz * dot(SpriteVF_SpriteVF_NormalsCylinderUnitDirection.xyz, _308 - SpriteVF_SpriteVF_NormalsSphereCenter.xyz))));
            _573 = _566;
        }
        _577 = _573;
    }
    float _579 = in_var_ATTRIBUTE1.w + 10.0f;
    float4 _592 = float4(((float4(_308 + ((_268 * 2097152.0f) + _269), 1.0f) + (float4(_428, 0.0f) * (_499.x * (_491.x + SpriteVF_SpriteVF_PivotOffset.x)))) + (float4(_431, 0.0f) * (_499.y * (_491.y + SpriteVF_SpriteVF_PivotOffset.y)))).xyz, 1.0f);
    float4 _594 = mul(float4(_592.x, _592.y, _592.z, _592.w), _251);
    float4 _611 = 0.0f.xxxx;
    float _612 = 0.0f;
    [branch]
    if (_168)
    {
        float _600 = 0.5f * _265;
        float4 _610 = _594;
        _610.x = (_594.x * _600) + ((_131[_170] * _594.w) * (1.0f - _600));
        _611 = _610;
        _612 = dot(_594, _134[_170]);
    }
    else
    {
        _611 = _594;
        _612 = 0.0f;
    }
    float4 _616 = float4(_577[0].x, _577[0].y, _577[0].z, 0.0f.xxxx.w);
    _616.w = _525;
    float4 _626[1] = { float4(_541.x, _541.y, 0.0f.xxxx.z, 0.0f.xxxx.w) };
    float3 _627 = _592.xyz;
    float3 _628 = _627 - _256;
    float3 _648 = (View_View_ViewTilePosition * 2097152.0f) + View_View_RelativeWorldCameraOrigin;
    float _649 = _648.z;
    float _650 = min(_649, TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters.z);
    float _653 = _628.z + (_649 - _650);
    float3 _654 = _628;
    _654.z = _653;
    float _655 = dot(_654, _654);
    float _656 = rsqrt(_655);
    float _657 = _655 * _656;
    float _665 = max(max(View_View_VolumetricFogMaxDistance * (length(_628) / dot(_628, View_View_ViewForward)), 0.0f), TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters.w);
    float _699 = 0.0f;
    float _700 = 0.0f;
    float _701 = 0.0f;
    float _702 = 0.0f;
    if (_665 > 0.0f)
    {
        float _669 = _665 * _656;
        float _670 = _669 * _653;
        float _671 = _650 + _670;
        _699 = (1.0f - _669) * _657;
        _700 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2.z * exp2(-max(-127.0f, TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2.y * (_671 - TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2.w)));
        _701 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.x * exp2(-max(-127.0f, TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters.y * (_671 - TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.y)));
        _702 = _653 - _670;
    }
    else
    {
        _699 = _657;
        _700 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2.x;
        _701 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters.x;
        _702 = _653;
    }
    float _706 = max(-127.0f, TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters.y * _702);
    float _720 = max(-127.0f, TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters2.y * _702);
    float _731 = (_701 * ((abs(_706) > 0.00999999977648258209228515625f) ? ((1.0f - exp2(-_706)) / _706) : (0.693147182464599609375f - (0.2402265071868896484375f * _706)))) + (_700 * ((abs(_720) > 0.00999999977648258209228515625f) ? ((1.0f - exp2(-_720)) / _720) : (0.693147182464599609375f - (0.2402265071868896484375f * _720))));
    float3 _773 = 0.0f.xxx;
    [branch]
    if (TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.z > 0.0f)
    {
        float2 _758 = float2(dot(_654.xy, float2(TranslucentBasePass_TranslucentBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation.y, -TranslucentBasePass_TranslucentBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation.x)), dot(_654.xy, TranslucentBasePass_TranslucentBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation));
        float3 _759 = float3(_758.x, _758.y, _654.z);
        _773 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogColorParameter.xyz * lerp(TranslucentBasePass_Shared_Fog_FogInscatteringColorCubemap.SampleLevel(TranslucentBasePass_Shared_Fog_FogInscatteringColorSampler, _759, TranslucentBasePass_TranslucentBasePass_Shared_Fog_FogInscatteringTextureParameters.z).xyz, TranslucentBasePass_Shared_Fog_FogInscatteringColorCubemap.SampleLevel(TranslucentBasePass_Shared_Fog_FogInscatteringColorSampler, _759, 0.0f).xyz, clamp((_657 * TranslucentBasePass_TranslucentBasePass_Shared_Fog_FogInscatteringTextureParameters.x) + TranslucentBasePass_TranslucentBasePass_Shared_Fog_FogInscatteringTextureParameters.y, 0.0f, 1.0f).xxx);
    }
    else
    {
        _773 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogColorParameter.xyz;
    }
    float3 _801 = 0.0f.xxx;
    [branch]
    if ((TranslucentBasePass_TranslucentBasePass_Shared_Fog_InscatteringLightDirection.w >= 0.0f) && (TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.z == 0.0f))
    {
        _801 = (TranslucentBasePass_TranslucentBasePass_Shared_Fog_DirectionalInscatteringColor.xyz * pow(clamp(dot(_654 * _656, TranslucentBasePass_TranslucentBasePass_Shared_Fog_InscatteringLightDirection.xyz), 0.0f, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Fog_DirectionalInscatteringColor.w)) * (1.0f - clamp(exp2(-(_731 * max(_699 - TranslucentBasePass_TranslucentBasePass_Shared_Fog_InscatteringLightDirection.w, 0.0f))), 0.0f, 1.0f));
    }
    else
    {
        _801 = 0.0f.xxx;
    }
    bool _810 = (TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.w > 0.0f) && (_657 > TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogParameters3.w);
    bool3 _811 = _810.xxx;
    float _813 = _810 ? 1.0f : max(clamp(exp2(-(_731 * _699)), 0.0f, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_Fog_ExponentialFogColorParameter.w);
    float4 _820 = float4((_773 * (1.0f - _813)) + float3(_811.x ? 0.0f.xxx.x : _801.x, _811.y ? 0.0f.xxx.y : _801.y, _811.z ? 0.0f.xxx.z : _801.z), _813);
    float4 _897 = 0.0f.xxxx;
    if (_263 > 0.0f)
    {
        float3 _834 = (_627 * 9.9999997473787516355514526367188e-06f) - (_256 * 9.9999997473787516355514526367188e-06f);
        float _840 = sqrt((max(0.0f, length(_834) - _259) * _262) * _261);
        float _841 = _840 * _260;
        float _848 = 0.0f;
        if (_841 < 0.707106769084930419921875f)
        {
            _848 = clamp((_841 * _841) * 2.0f, 0.0f, 1.0f);
        }
        else
        {
            _848 = 1.0f;
        }
        float2 _876 = 0.0f.xx;
        if (_264 != 0.0f)
        {
            float3 _851 = normalize(_834);
            float _852 = _851.z;
            float _855 = sqrt(1.0f - (_852 * _852));
            float2 _858 = _142;
            _858.y = (_852 * 0.5f) + 0.5f;
            float _863 = acos(_851.x / _855);
            float2 _868 = _858;
            _868.x = (((_851.y / _855) < 0.0f) ? (6.283185482025146484375f - _863) : _863) * 0.15915493667125701904296875f;
            _876 = (_868 + (_258.zw * 0.5f)) * (_258.xy / (_258.xy + 1.0f.xx));
        }
        else
        {
            _876 = ((_611.xy / _611.ww) * float2(0.5f, -0.5f)) + 0.5f.xx;
        }
        float4 _881 = View_CameraAerialPerspectiveVolume.SampleLevel(View_CameraAerialPerspectiveVolumeSampler, float3(_876, _840), 0.0f);
        float3 _893 = _820.xyz + (((_881.xyz * _848).xyz * _257).xyz * _813);
        float4 _896 = float4(_893.x, _893.y, _893.z, _141.w);
        _896.w = _813 * (1.0f - (_848 * (1.0f - _881.w)));
        _897 = _896;
    }
    else
    {
        _897 = _820;
    }
    out_var_TEXCOORD10 = _616;
    out_var_TEXCOORD11 = float4(_577[2], float(int(sign(determinant(_577)))));
    out_var_TEXCOORD2 = in_var_ATTRIBUTE3;
    out_var_TEXCOORD3 = _626;
    out_var_PARTICLE_LIGHTING_OFFSET = ((frac(float3(1361.456298828125f, 2333.577880859375f, 3623.98291015625f) * (_579 * _579)) * 2.0f) - 1.0f.xxx) * (0.5f * View_View_TranslucencyLightingVolumeInvSize[0].w);
    out_var_PACKED_EYE_INDEX = _170;
    out_var_TEXCOORD7 = _897;
    gl_Position = _611;
    gl_ClipDistance[0u] = _612;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_VertexIndex = int(stage_input.gl_VertexIndex);
    gl_InstanceIndex = int(stage_input.gl_InstanceIndex);
    in_var_ATTRIBUTE0 = stage_input.in_var_ATTRIBUTE0;
    in_var_ATTRIBUTE1 = stage_input.in_var_ATTRIBUTE1;
    in_var_ATTRIBUTE2 = stage_input.in_var_ATTRIBUTE2;
    in_var_ATTRIBUTE3 = stage_input.in_var_ATTRIBUTE3;
    in_var_ATTRIBUTE4 = stage_input.in_var_ATTRIBUTE4;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_ClipDistance0.x = gl_ClipDistance[0];
    stage_output.out_var_TEXCOORD10 = out_var_TEXCOORD10;
    stage_output.out_var_TEXCOORD11 = out_var_TEXCOORD11;
    stage_output.out_var_TEXCOORD2 = out_var_TEXCOORD2;
    stage_output.out_var_TEXCOORD3 = out_var_TEXCOORD3;
    stage_output.out_var_PARTICLE_LIGHTING_OFFSET = out_var_PARTICLE_LIGHTING_OFFSET;
    stage_output.out_var_PACKED_EYE_INDEX = out_var_PACKED_EYE_INDEX;
    stage_output.out_var_TEXCOORD7 = out_var_TEXCOORD7;
    return stage_output;
}
