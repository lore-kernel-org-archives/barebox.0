Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RwtKy-0008Rj-8z
 for barebox@lists.infradead.org; Mon, 13 Feb 2012 10:40:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Feb 2012 11:40:34 +0100
Message-Id: <1329129636-22269-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329129636-22269-1-git-send-email-s.hauer@pengutronix.de>
References: <1329129636-22269-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: update mach-types
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/tools/mach-types |   62 ++++++++++++++++++++++++++++++++++++++++++++-
 1 files changed, 61 insertions(+), 1 deletions(-)

diff --git a/arch/arm/tools/mach-types b/arch/arm/tools/mach-types
index 38e901d..ff97af4 100644
--- a/arch/arm/tools/mach-types
+++ b/arch/arm/tools/mach-types
@@ -12,7 +12,7 @@
 #
 #   http://www.arm.linux.org.uk/developer/machines/?action=new
 #
-# Last update: Thu Jan 5 07:57:22 2012
+# Last update: Thu Feb 9 12:00:12 2012
 #
 # machine_is_xxx	CONFIG_xxxx		MACH_TYPE_xxx		number
 #
@@ -3903,3 +3903,63 @@ apq8064_cdp		MACH_APQ8064_CDP	APQ8064_CDP		3948
 apq8064_mtp		MACH_APQ8064_MTP	APQ8064_MTP		3949
 apq8064_fluid		MACH_APQ8064_FLUID	APQ8064_FLUID		3950
 apq8064_liquid		MACH_APQ8064_LIQUID	APQ8064_LIQUID		3951
+mango210		MACH_MANGO210		MANGO210		3952
+mango100		MACH_MANGO100		MANGO100		3953
+mango24			MACH_MANGO24		MANGO24			3954
+mango64			MACH_MANGO64		MANGO64			3955
+nsa320			MACH_NSA320		NSA320			3956
+elv_ccu2		MACH_ELV_CCU2		ELV_CCU2		3957
+triton_x00		MACH_TRITON_X00		TRITON_X00		3958
+triton_1500_2000	MACH_TRITON_1500_2000	TRITON_1500_2000	3959
+pogoplugv4		MACH_POGOPLUGV4		POGOPLUGV4		3960
+venus_cl		MACH_VENUS_CL		VENUS_CL		3961
+vulcano_g20		MACH_VULCANO_G20	VULCANO_G20		3962
+sgs_i9100		MACH_SGS_I9100		SGS_I9100		3963
+stsv2			MACH_STSV2		STSV2			3964
+csb1724			MACH_CSB1724		CSB1724			3965
+omapl138_lcdk		MACH_OMAPL138_LCDK	OMAPL138_LCDK		3966
+jel_dd			MACH_JEWEL_DD		JEWEL_DD		3967
+pvd_mx25		MACH_PVD_MX25		PVD_MX25		3968
+meson6_skt		MACH_MESON6_SKT		MESON6_SKT		3969
+meson6_ref		MACH_MESON6_REF		MESON6_REF		3970
+pxm			MACH_PXM		PXM			3971
+stuttgart		MACH_S3			S3			3972
+pogoplugv3		MACH_POGOPLUGV3		POGOPLUGV3		3973
+mlp89626		MACH_MLP89626		MLP89626		3974
+iomegahmndce		MACH_IOMEGAHMNDCE	IOMEGAHMNDCE		3975
+pogoplugv3pci		MACH_POGOPLUGV3PCI	POGOPLUGV3PCI		3976
+bntv250			MACH_BNTV250		BNTV250			3977
+mx53_qseven		MACH_MX53_QSEVEN	MX53_QSEVEN		3978
+gtl_it1100		MACH_GTL_IT1100		GTL_IT1100		3979
+mx6q_sabresd		MACH_MX6Q_SABRESD	MX6Q_SABRESD		3980
+mt4			MACH_MT4		MT4			3981
+jumbo_d			MACH_JUMBO_D		JUMBO_D			3982
+jumbo_i			MACH_JUMBO_I		JUMBO_I			3983
+fs20_dmp		MACH_FS20_DMP		FS20_DMP		3984
+dns320			MACH_DNS320		DNS320			3985
+mx28bacos		MACH_MX28BACOS		MX28BACOS		3986
+tl80			MACH_TL80		TL80			3987
+polatis_nic_1001	MACH_POLATIS_NIC_1001	POLATIS_NIC_1001	3988
+tely			MACH_TELY		TELY			3989
+u8520			MACH_U8520		U8520			3990
+manta			MACH_MANTA		MANTA			3991
+spear1340_lcad		MACH_SPEAR_EM_S900	SPEAR_EM_S900		3992
+mpq8064_cdp		MACH_MPQ8064_CDP	MPQ8064_CDP		3993
+mpq8064_stb		MACH_MPQ8064_STB	MPQ8064_STB		3994
+mpq8064_dtv		MACH_MPQ8064_DTV	MPQ8064_DTV		3995
+dm368som		MACH_DM368SOM		DM368SOM		3996
+gprisb2			MACH_GPRISB2		GPRISB2			3997
+chammid			MACH_CHAMMID		CHAMMID			3998
+seoul2			MACH_SEOUL2		SEOUL2			3999
+omap4_nooktablet	MACH_OMAP4_NOOKTABLET	OMAP4_NOOKTABLET	4000
+aalto			MACH_AALTO		AALTO			4001
+metro			MACH_METRO		METRO			4002
+cydm3730		MACH_CYDM3730		CYDM3730		4003
+tqma53			MACH_TQMA53		TQMA53			4004
+msm7627a_qrd3		MACH_MSM7627A_QRD3	MSM7627A_QRD3		4005
+mx28_canby		MACH_MX28_CANBY		MX28_CANBY		4006
+tiger			MACH_TIGER		TIGER			4007
+pcats_9307_type_a	MACH_PCATS_9307_TYPE_A	PCATS_9307_TYPE_A	4008
+pcats_9307_type_o	MACH_PCATS_9307_TYPE_O	PCATS_9307_TYPE_O	4009
+pcats_9307_type_r	MACH_PCATS_9307_TYPE_R	PCATS_9307_TYPE_R	4010
+streamplug		MACH_STREAMPLUG		STREAMPLUG		4011
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
