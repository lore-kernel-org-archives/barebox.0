Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo6-p00-ob.rzone.de ([2a01:238:20a:202:5300::1])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK2TE-0000cA-CW
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 07:37:18 +0000
From: Gregory Hermant <gregory.hermant@calao-systems.com>
Date: Fri,  5 Oct 2012 09:37:04 +0200
Message-Id: <1349422624-5278-2-git-send-email-gregory.hermant@calao-systems.com>
In-Reply-To: <1349422624-5278-1-git-send-email-gregory.hermant@calao-systems.com>
References: <1349422624-5278-1-git-send-email-gregory.hermant@calao-systems.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] mach-types file updated
To: barebox@lists.infradead.org

Signed-off-by: Gregory Hermant <gregory.hermant@calao-systems.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/tools/mach-types |  184 ++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 182 insertions(+), 2 deletions(-)

diff --git a/arch/arm/tools/mach-types b/arch/arm/tools/mach-types
index 325513f..6578b8d 100644
--- a/arch/arm/tools/mach-types
+++ b/arch/arm/tools/mach-types
@@ -12,7 +12,7 @@
 #
 #   http://www.arm.linux.org.uk/developer/machines/?action=new
 #
-# Last update: Mon May 14 09:28:07 2012
+# Last update: Thu Oct 4 10:27:45 2012
 #
 # machine_is_xxx	CONFIG_xxxx		MACH_TYPE_xxx		number
 #
@@ -3006,6 +3006,7 @@ armada_xp_db		MACH_ARMADA_XP_DB	ARMADA_XP_DB		3036
 spdm			MACH_SPDM		SPDM			3037
 gtib			MACH_GTIB		GTIB			3038
 dgm3240			MACH_DGM3240		DGM3240			3039
+iv_atlas_i_lpe		MACH_ATLAS_I_LPE	ATLAS_I_LPE		3040
 htcmega			MACH_HTCMEGA		HTCMEGA			3041
 tricorder		MACH_TRICORDER		TRICORDER		3042
 tx28			MACH_TX28		TX28			3043
@@ -4071,7 +4072,7 @@ tam335x			MACH_TAM335X		TAM335X			4116
 grouper			MACH_GROUPER		GROUPER			4117
 mpcsa21_9g20		MACH_MPCSA21_9G20	MPCSA21_9G20		4118
 m6u_cpu			MACH_M6U_CPU		M6U_CPU			4119
-davinci_dp10		MACH_DAVINCI_DP10	DAVINCI_DP10		4120
+davinci_dp7		MACH_DAVINCI_DP10	DAVINCI_DP10		4120
 ginkgo			MACH_GINKGO		GINKGO			4121
 cgt_qmx6		MACH_CGT_QMX6		CGT_QMX6		4122
 profpga			MACH_PROFPGA		PROFPGA			4123
@@ -4148,3 +4149,182 @@ msm8625_evt		MACH_MSM8625_EVT	MSM8625_EVT		4193
 mx53_sellwood		MACH_MX53_SELLWOOD	MX53_SELLWOOD		4194
 somiq_am35		MACH_SOMIQ_AM35		SOMIQ_AM35		4195
 somiq_am37		MACH_SOMIQ_AM37		SOMIQ_AM37		4196
+k2_plc_cl		MACH_K2_PLC_CL		K2_PLC_CL		4197
+tc2			MACH_TC2		TC2			4198
+dulex_j			MACH_DULEX_J		DULEX_J			4199
+stm_b2044		MACH_STM_B2044		STM_B2044		4200
+deluxe_j		MACH_DELUXE_J		DELUXE_J		4201
+mango2443		MACH_MANGO2443		MANGO2443		4202
+cp2dcg			MACH_CP2DCG		CP2DCG			4203
+cp2dtg			MACH_CP2DTG		CP2DTG			4204
+cp2dug			MACH_CP2DUG		CP2DUG			4205
+var_som_am33		MACH_VAR_SOM_AM33	VAR_SOM_AM33		4206
+pepper			MACH_PEPPER		PEPPER			4207
+mango2450		MACH_MANGO2450		MANGO2450		4208
+valente_wx_c9		MACH_VALENTE_WX_C9	VALENTE_WX_C9		4209
+minitv			MACH_MINITV		MINITV			4210
+u8540			MACH_U8540		U8540			4211
+iv_atlas_i_z7e		MACH_IV_ATLAS_I_Z7E	IV_ATLAS_I_Z7E		4212
+mx53_csb1733		MACH_COGENT_CSB1733	COGENT_CSB1733		4213
+mach_type_sky		MACH_MACH_TYPE_SKY	MACH_TYPE_SKY		4214
+bluesky			MACH_BLUESKY		BLUESKY			4215
+ngrouter		MACH_NGROUTER		NGROUTER		4216
+mx53_denetim		MACH_MX53_DENETIM	MX53_DENETIM		4217
+opal			MACH_OPAL		OPAL			4218
+gnet_us3gref		MACH_GNET_US3GREF	GNET_US3GREF		4219
+gnet_nc3g		MACH_GNET_NC3G		GNET_NC3G		4220
+gnet_ge3g		MACH_GNET_GE3G		GNET_GE3G		4221
+adp2			MACH_ADP2		ADP2			4222
+tqma28			MACH_TQMA28		TQMA28			4223
+kacom3			MACH_KACOM3		KACOM3			4224
+rrhdemo			MACH_RRHDEMO		RRHDEMO			4225
+protodug		MACH_PROTODUG		PROTODUG		4226
+lago			MACH_LAGO		LAGO			4227
+ktt30			MACH_KTT30		KTT30			4228
+ts43xx			MACH_TS43XX		TS43XX			4229
+mx6q_denso		MACH_MX6Q_DENSO		MX6Q_DENSO		4230
+comsat_gsmumts8		MACH_COMSAT_GSMUMTS8	COMSAT_GSMUMTS8		4231
+dreamx			MACH_DREAMX		DREAMX			4232
+thunderstonem		MACH_THUNDERSTONEM	THUNDERSTONEM		4233
+yoyopad			MACH_YOYOPAD		YOYOPAD			4234
+yoyopatient		MACH_YOYOPATIENT	YOYOPATIENT		4235
+a10l			MACH_A10L		A10L			4236
+mq60			MACH_MQ60		MQ60			4237
+linkstation_lsql	MACH_LINKSTATION_LSQL	LINKSTATION_LSQL	4238
+am3703gateway		MACH_AM3703GATEWAY	AM3703GATEWAY		4239
+accipiter		MACH_ACCIPITER		ACCIPITER		4240
+e1853			MACH_P1853		P1853			4241
+magnidug		MACH_MAGNIDUG		MAGNIDUG		4242
+hydra			MACH_HYDRA		HYDRA			4243
+sun3i			MACH_SUN3I		SUN3I			4244
+stm_b2078		MACH_STM_B2078		STM_B2078		4245
+at91sam9263deskv2	MACH_AT91SAM9263DESKV2	AT91SAM9263DESKV2	4246
+deluxe_r		MACH_DELUXE_R		DELUXE_R		4247
+p_98_v			MACH_P_98_V		P_98_V			4248
+p_98_c			MACH_P_98_C		P_98_C			4249
+davinci_am18xx_omn	MACH_DAVINCI_AM18XX_OMN	DAVINCI_AM18XX_OMN	4250
+socfpga_cyclone5	MACH_SOCFPGA_CYCLONE5	SOCFPGA_CYCLONE5	4251
+cabatuin		MACH_CABATUIN		CABATUIN		4252
+yoyopad_ft		MACH_YOYOPAD_FT		YOYOPAD_FT		4253
+dan2400evb		MACH_DAN2400EVB		DAN2400EVB		4254
+dan3400evb		MACH_DAN3400EVB		DAN3400EVB		4255
+edm_sf_imx6		MACH_EDM_SF_IMX6	EDM_SF_IMX6		4256
+edm_cf_imx6		MACH_EDM_CF_IMX6	EDM_CF_IMX6		4257
+vpos3xx			MACH_VPOS3XX		VPOS3XX			4258
+vulcano_9x5		MACH_VULCANO_9X5	VULCANO_9X5		4259
+spmp8000		MACH_SPMP8000		SPMP8000		4260
+catalina		MACH_CATALINA		CATALINA		4261
+rd88f5181l_fe		MACH_RD88F5181L_FE	RD88F5181L_FE		4262
+mx535_mx		MACH_MX535_MX		MX535_MX		4263
+armadillo840		MACH_ARMADILLO840	ARMADILLO840		4264
+spc9000baseboard	MACH_SPC9000BASEBOARD	SPC9000BASEBOARD	4265
+iris			MACH_IRIS		IRIS			4266
+protodcg		MACH_PROTODCG		PROTODCG		4267
+palmtree		MACH_PALMTREE		PALMTREE		4268
+novena			MACH_NOVENA		NOVENA			4269
+ma_um			MACH_MA_UM		MA_UM			4270
+ma_am			MACH_MA_AM		MA_AM			4271
+ems348			MACH_EMS348		EMS348			4272
+cm_fx6			MACH_CM_FX6		CM_FX6			4273
+arndale			MACH_ARNDALE		ARNDALE			4274
+q5xr5			MACH_Q5XR5		Q5XR5			4275
+willow			MACH_WILLOW		WILLOW			4276
+omap3621_odyv3		MACH_OMAP3621_ODYV3	OMAP3621_ODYV3		4277
+omapl138_presonus	MACH_OMAPL138_PRESONUS	OMAPL138_PRESONUS	4278
+dvf99			MACH_DVF99		DVF99			4279
+impression_j		MACH_IMPRESSION_J	IMPRESSION_J		4280
+qblissa9		MACH_QBLISSA9		QBLISSA9		4281
+robin_heliview10	MACH_ROBIN_HELIVIEW10	ROBIN_HELIVIEW10	4282
+sun7i			MACH_SUN7I		SUN7I			4283
+mx6q_hdmidongle		MACH_MX6Q_HDMIDONGLE	MX6Q_HDMIDONGLE		4284
+mx6_sid2		MACH_MX6_SID2		MX6_SID2		4285
+helios_v3		MACH_HELIOS_V3		HELIOS_V3		4286
+helios_v4		MACH_HELIOS_V4		HELIOS_V4		4287
+q7_imx6			MACH_Q7_IMX6		Q7_IMX6			4288
+odroidx			MACH_ODROIDX		ODROIDX			4289
+robpro			MACH_ROBPRO		ROBPRO			4290
+research59if_mk1	MACH_RESEARCH59IF_MK1	RESEARCH59IF_MK1	4291
+bobsleigh		MACH_BOBSLEIGH		BOBSLEIGH		4292
+dcshgwt3		MACH_DCSHGWT3		DCSHGWT3		4293
+gld1018			MACH_GLD1018		GLD1018			4294
+ev10			MACH_EV10		EV10			4295
+nitrogen6x		MACH_NITROGEN6X		NITROGEN6X		4296
+p_107_bb		MACH_P_107_BB		P_107_BB		4297
+evita_utl		MACH_EVITA_UTL		EVITA_UTL		4298
+falconwing		MACH_FALCONWING		FALCONWING		4299
+dct3			MACH_DCT3		DCT3			4300
+cpx2e_cell		MACH_CPX2E_CELL		CPX2E_CELL		4301
+amiro			MACH_AMIRO		AMIRO			4302
+mx6q_brassboard		MACH_MX6Q_BRASSBOARD	MX6Q_BRASSBOARD		4303
+dalmore			MACH_DALMORE		DALMORE			4304
+omap3_portal7cp		MACH_OMAP3_PORTAL7CP	OMAP3_PORTAL7CP		4305
+tegra_pluto		MACH_TEGRA_PLUTO	TEGRA_PLUTO		4306
+mx6sl_evk		MACH_MX6SL_EVK		MX6SL_EVK		4307
+m7			MACH_M7			M7			4308
+pxm2			MACH_PXM2		PXM2			4309
+haba_knx_lite		MACH_HABA_KNX_LITE	HABA_KNX_LITE		4310
+tai			MACH_TAI		TAI			4311
+prototd			MACH_PROTOTD		PROTOTD			4312
+dst_tonto		MACH_DST_TONTO		DST_TONTO		4313
+draco			MACH_DRACO		DRACO			4314
+dxr2			MACH_DXR2		DXR2			4315
+rut			MACH_RUT		RUT			4316
+am180x_wsc		MACH_AM180X_WSC		AM180X_WSC		4317
+deluxe_u		MACH_DELUXE_U		DELUXE_U		4318
+deluxe_ul		MACH_DELUXE_UL		DELUXE_UL		4319
+at91sam9260medths	MACH_AT91SAM9260MEDTHS	AT91SAM9260MEDTHS	4320
+matrix516		MACH_MATRIX516		MATRIX516		4321
+vid401x			MACH_VID401X		VID401X			4322
+helios_v5		MACH_HELIOS_V5		HELIOS_V5		4323
+playpaq2		MACH_PLAYPAQ2		PLAYPAQ2		4324
+igam			MACH_IGAM		IGAM			4325
+amico_i			MACH_AMICO_I		AMICO_I			4326
+amico_e			MACH_AMICO_E		AMICO_E			4327
+sentient_mm3_ck		MACH_SENTIENT_MM3_CK	SENTIENT_MM3_CK		4328
+smx6			MACH_SMX6		SMX6			4329
+pango			MACH_PANGO		PANGO			4330
+ns115_stick		MACH_NS115_STICK	NS115_STICK		4331
+bctrm3			MACH_BCTRM3		BCTRM3			4332
+doctorws		MACH_DOCTORWS		DOCTORWS		4333
+m2601			MACH_M2601		M2601			4334
+gco_mgmtt		MACH_GRIDCO_TRINITY	GRIDCO_TRINITY		4335
+pc73032			MACH_PC3032		PC3032			4336
+vgg1111			MACH_VGG1111		VGG1111			4337
+countach		MACH_COUNTACH		COUNTACH		4338
+visstrim_sm20		MACH_VISSTRIM_SM20	VISSTRIM_SM20		4339
+a639			MACH_A639		A639			4340
+spacemonkey		MACH_SPACEMONKEY	SPACEMONKEY		4341
+zpdu_stamp		MACH_ZPDU_STAMP		ZPDU_STAMP		4342
+htc_g7_clone		MACH_HTC_G7_CLONE	HTC_G7_CLONE		4343
+ft2080_corvus		MACH_FT2080_CORVUS	FT2080_CORVUS		4344
+fisland			MACH_FISLAND		FISLAND			4345
+zpdu			MACH_ZPDU		ZPDU			4346
+urt			MACH_URT		URT			4347
+conti_ovip		MACH_CONTI_OVIP		CONTI_OVIP		4348
+omapl138_nagra		MACH_OMAPL138_NAGRA	OMAPL138_NAGRA		4349
+da850_at3kp1		MACH_DA850_AT3KP1	DA850_AT3KP1		4350
+da850_at3kp2		MACH_DA850_AT3KP2	DA850_AT3KP2		4351
+surma			MACH_SURMA		SURMA			4352
+stm_b2092		MACH_STM_B2092		STM_B2092		4353
+mx535_ycr		MACH_MX535_YCR		MX535_YCR		4354
+m7_wl			MACH_M7_WL		M7_WL			4355
+m7_u			MACH_M7_U		M7_U			4356
+omap3_stndt_evm		MACH_OMAP3_STNDT_EVM	OMAP3_STNDT_EVM		4357
+m7_wlv			MACH_M7_WLV		M7_WLV			4358
+xam3517			MACH_XAM3517		XAM3517			4359
+a220			MACH_A220		A220			4360
+aclima_odie		MACH_ACLIMA_ODIE	ACLIMA_ODIE		4361
+vibble			MACH_VIBBLE		VIBBLE			4362
+k2_u			MACH_K2_U		K2_U			4363
+mx53_egf		MACH_MX53_EGF		MX53_EGF		4364
+novpek_imx53		MACH_NOVPEK_IMX53	NOVPEK_IMX53		4365
+novpek_imx6x		MACH_NOVPEK_IMX6X	NOVPEK_IMX6X		4366
+mx25_smartbox		MACH_MX25_SMARTBOX	MX25_SMARTBOX		4367
+eicg6410		MACH_EICG6410		EICG6410		4368
+picasso_e3		MACH_PICASSO_E3		PICASSO_E3		4369
+motonavigator		MACH_MOTONAVIGATOR	MOTONAVIGATOR		4370
+varioconnect2		MACH_VARIOCONNECT2	VARIOCONNECT2		4371
+deluxe_tw		MACH_DELUXE_TW		DELUXE_TW		4372
+visconti3		MACH_VISCONTI3		VISCONTI3		4373
+kore3			MACH_KORE3		KORE3			4374
+mx6s_drs		MACH_MX6S_DRS		MX6S_DRS		4375
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
