Shader "Unlit/sprite_recolour"
{
	Properties
	{
		_MainTex ("Reference Sprite", 2D) = "white" {}
		[NoScaleOffset] _PaletteTex ("Palette", 2D) = "white" {}
	}
	SubShader
	{
		Tags { "Queue" = "Transparent" "RenderType"="Transparent" }
		LOD 100

		Pass
		{
			Blend SrcAlpha OneMinusSrcAlpha
			BlendOp Add

			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
			};

			sampler2D _MainTex;
			sampler2D _PaletteTex;
			float4 _MainTex_ST;

			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				return o;
			}

			fixed4 frag (v2f i) : SV_Target
			{
				// reference texture
				fixed4 ref = tex2D(_MainTex, i.uv);
				fixed4 palette = tex2D(_PaletteTex, ref.rg);

				return fixed4(palette.r, palette.g, palette.b, ref.a);
			}
			ENDCG
		}
	}
}
