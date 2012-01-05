Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Riixj-0002Pq-R8
 for barebox@lists.infradead.org; Thu, 05 Jan 2012 08:46:16 +0000
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Thu, 5 Jan 2012 09:46:08 +0100
Message-Id: <1325753168-14772-1-git-send-email-J.Kilb@phytec.de>
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
Subject: [PATCH] arm: update mach-types
To: barebox@lists.infradead.org
Cc: Juergen Kilb <J.Kilb@phytec.de>

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 arch/arm/tools/mach-types |   66 ++++++++++++++++++++++++++++++++++++++++++--
 1 files changed, 63 insertions(+), 3 deletions(-)

diff --git a/arch/arm/tools/mach-types b/arch/arm/tools/mach-types
index d593026..38e901d 100644
--- a/arch/arm/tools/mach-types
+++ b/arch/arm/tools/mach-types
@@ -12,7 +12,7 @@
 #
 #   http://www.arm.linux.org.uk/developer/machines/?action=new
 #
-# Last update: Tue Dec 6 15:54:16 2011
+# Last update: Thu Jan 5 07:57:22 2012
 #
 # machine_is_xxx	CONFIG_xxxx		MACH_TYPE_xxx		number
 #
@@ -2814,7 +2814,7 @@ omap3_braillo		MACH_OMAP3_BRAILLO	OMAP3_BRAILLO		2839
 spyplug			MACH_SPYPLUG		SPYPLUG			2840
 ginger			MACH_GINGER		GINGER			2841
 tny_t3530		MACH_TNY_T3530		TNY_T3530		2842
-pca102			MACH_PCA102		PCA102			2843
+pcaal1			MACH_PCAAL1		PCAAL1			2843
 spade			MACH_SPADE		SPADE			2844
 mxc25_topaz		MACH_MXC25_TOPAZ	MXC25_TOPAZ		2845
 t5325			MACH_T5325		T5325			2846
@@ -3664,7 +3664,7 @@ promwad_jade		MACH_PROMWAD_JADE	PROMWAD_JADE		3708
 amp			MACH_AMP		AMP			3709
 gnet_amp		MACH_GNET_AMP		GNET_AMP		3710
 toques			MACH_TOQUES		TOQUES			3711
-apx4devkit		MACH_APX4		APX4			3712
+apx4devkit		MACH_APX4DEVKIT		APX4DEVKIT		3712
 dct_storm		MACH_DCT_STORM		DCT_STORM		3713
 dm8168z3		MACH_Z3			Z3			3714
 owl			MACH_OWL		OWL			3715
@@ -3843,3 +3843,63 @@ elite_ulk		MACH_ELITE_ULK		ELITE_ULK		3888
 pov2			MACH_POV2		POV2			3889
 ipod_touch_2g		MACH_IPOD_TOUCH_2G	IPOD_TOUCH_2G		3890
 da850_pqab		MACH_DA850_PQAB		DA850_PQAB		3891
+fermi			MACH_FERMI		FERMI			3892
+ccardwmx28		MACH_CCARDWMX28		CCARDWMX28		3893
+ccardmx28		MACH_CCARDMX28		CCARDMX28		3894
+fs20_fcm2050		MACH_FS20_FCM2050	FS20_FCM2050		3895
+kinetis			MACH_KINETIS		KINETIS			3896
+kai			MACH_KAI		KAI			3897
+bcthb2			MACH_BCTHB2		BCTHB2			3898
+inels3_cu		MACH_INELS3_CU		INELS3_CU		3899
+da850_juniper		MACH_JUNIPER		JUNIPER			3900
+da850_apollo		MACH_DA850_APOLLO	DA850_APOLLO		3901
+tracnas			MACH_TRACNAS		TRACNAS			3902
+mityarm335x		MACH_MITYARM335X	MITYARM335X		3903
+xcgz7x			MACH_XCGZ7X		XCGZ7X			3904
+cubox			MACH_CUBOX		CUBOX			3905
+terminator		MACH_TERMINATOR		TERMINATOR		3906
+eye03			MACH_EYE03		EYE03			3907
+kota3			MACH_KOTA3		KOTA3			3908
+mx53_nitrogen_k		MACH_MX5		MX5			3909
+pscpe			MACH_PSCPE		PSCPE			3910
+akt1100			MACH_AKT1100		AKT1100			3911
+pcaaxl2			MACH_PCAAXL2		PCAAXL2			3912
+primodd_ct		MACH_PRIMODD_CT		PRIMODD_CT		3913
+nsbc			MACH_NSBC		NSBC			3914
+meson2_skt		MACH_MESON2_SKT		MESON2_SKT		3915
+meson2_ref		MACH_MESON2_REF		MESON2_REF		3916
+ccardwmx28js		MACH_CCARDWMX28JS	CCARDWMX28JS		3917
+ccardmx28js		MACH_CCARDMX28JS	CCARDMX28JS		3918
+indico			MACH_INDICO		INDICO			3919
+msm8960dt		MACH_MSM8960DT		MSM8960DT		3920
+primods			MACH_PRIMODS		PRIMODS			3921
+beluga_m1388		MACH_BELUGA_M1388	BELUGA_M1388		3922
+primotd			MACH_PRIMOTD		PRIMOTD			3923
+varan_master		MACH_VARAN_MASTER	VARAN_MASTER		3924
+primodd			MACH_PRIMODD		PRIMODD			3925
+jetduo			MACH_JETDUO		JETDUO			3926
+mx53_umobo		MACH_MX53_UMOBO		MX53_UMOBO		3927
+trats			MACH_TRATS		TRATS			3928
+starcraft		MACH_STARCRAFT		STARCRAFT		3929
+qseven_tegra2		MACH_QSEVEN_TEGRA2	QSEVEN_TEGRA2		3930
+lichee_sun4i_devbd	MACH_LICHEE_SUN4I_DEVBD	LICHEE_SUN4I_DEVBD	3931
+movenow			MACH_MOVENOW		MOVENOW			3932
+golf_u			MACH_GOLF_U		GOLF_U			3933
+msm7627a_evb		MACH_MSM7627A_EVB	MSM7627A_EVB		3934
+rambo			MACH_RAMBO		RAMBO			3935
+golfu			MACH_GOLFU		GOLFU			3936
+mango310		MACH_MANGO310		MANGO310		3937
+dns343			MACH_DNS343		DNS343			3938
+var_som_om44		MACH_VAR_SOM_OM44	VAR_SOM_OM44		3939
+naon			MACH_NAON		NAON			3940
+vp4000			MACH_VP4000		VP4000			3941
+impcard			MACH_IMPCARD		IMPCARD			3942
+smoovcam		MACH_SMOOVCAM		SMOOVCAM		3943
+cobham3725		MACH_COBHAM3725		COBHAM3725		3944
+cobham3730		MACH_COBHAM3730		COBHAM3730		3945
+cobham3703		MACH_COBHAM3703		COBHAM3703		3946
+quetzal			MACH_QUETZAL		QUETZAL			3947
+apq8064_cdp		MACH_APQ8064_CDP	APQ8064_CDP		3948
+apq8064_mtp		MACH_APQ8064_MTP	APQ8064_MTP		3949
+apq8064_fluid		MACH_APQ8064_FLUID	APQ8064_FLUID		3950
+apq8064_liquid		MACH_APQ8064_LIQUID	APQ8064_LIQUID		3951
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
