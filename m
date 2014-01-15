Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3KsL-0005FS-QA
 for barebox@lists.infradead.org; Wed, 15 Jan 2014 07:26:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Jan 2014 08:26:33 +0100
Message-Id: <1389770794-20487-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: rename imx6q-dmo-realq7.dts to
 imx6q-dmo-edmqmx6.dts
To: barebox@lists.infradead.org

As this name is used in the Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/Makefile                                        | 4 ++--
 arch/arm/dts/{imx6q-dmo-realq7.dts => imx6q-dmo-edmqmx6.dts} | 0
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename arch/arm/dts/{imx6q-dmo-realq7.dts => imx6q-dmo-edmqmx6.dts} (100%)

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index add4dc0..67804ab 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -9,7 +9,7 @@ dtb-$(CONFIG_ARCH_IMX53) += imx53-qsb.dtb \
 dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6dl-dfi-fs700-m60-6s.dtb \
 	imx6q-dfi-fs700-m60-6q.dtb \
-	imx6q-dmo-realq7.dtb \
+	imx6q-dmo-edmqmx6.dtb \
 	imx6q-sabrelite.dtb \
 	imx6dl-sabrelite.dtb \
 	imx6q-sabresd.dtb \
@@ -37,7 +37,7 @@ pbl-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
 pbl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
 pbl-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore.dtb.o
 pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6q-phytec-pbab01.dtb.o
-pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-realq7.dtb.o
+pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 pbl-$(CONFIG_MACH_TORADEX_COLIBRI_T20_IRIS) += tegra20-colibri-iris.dtb.o
diff --git a/arch/arm/dts/imx6q-dmo-realq7.dts b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
similarity index 100%
rename from arch/arm/dts/imx6q-dmo-realq7.dts
rename to arch/arm/dts/imx6q-dmo-edmqmx6.dts
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
