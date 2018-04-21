Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f9hfb-00076K-Qe
 for barebox@lists.infradead.org; Sat, 21 Apr 2018 01:50:33 +0000
Received: by mail-pg0-x243.google.com with SMTP id f132so4701113pgc.10
 for <barebox@lists.infradead.org>; Fri, 20 Apr 2018 18:50:21 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 20 Apr 2018 18:50:13 -0700
Message-Id: <20180421015013.11620-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: imx_v7_defconfig: Select various missing v7 boards by
 default
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add the following boards:

    - ZII RDU2 (all variants)
    - ZII Vybrid Dev Board (and its derivatives)
    - Freescale/NXP i.MX7D SabreSD
    - NXP i.MX6ULL EVK
    - element 14 WaRP7

to be selected by default by imx_v7_defconfig.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/configs/imx_v7_defconfig | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 13135f2b3..8aef9d6ef 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -33,10 +33,15 @@ CONFIG_MACH_VARISCITE_MX6=y
 CONFIG_MACH_GW_VENTANA=y
 CONFIG_MACH_CM_FX6=y
 CONFIG_MACH_ADVANTECH_ROM_742X=y
+CONFIG_MACH_WARP7=y
+CONFIG_MACH_VF610_TWR=y
+CONFIG_MACH_ZII_RDU2=y
+CONFIG_MACH_ZII_VF610_DEV=y
 CONFIG_MACH_PHYTEC_PHYCORE_IMX7=y
+CONFIG_MACH_FREESCALE_MX7_SABRESD=y
+CONFIG_MACH_NXP_IMX6ULL_EVK=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
-CONFIG_IMX_OCOTP=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
