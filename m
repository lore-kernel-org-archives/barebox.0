Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i91PU-0002sC-Jj
 for barebox@lists.infradead.org; Sat, 14 Sep 2019 06:19:53 +0000
Received: by mail-pg1-x541.google.com with SMTP id u72so16411080pgb.10
 for <barebox@lists.infradead.org>; Fri, 13 Sep 2019 23:19:52 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 13 Sep 2019 23:19:38 -0700
Message-Id: <20190914061943.4715-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190914061943.4715-1-andrew.smirnov@gmail.com>
References: <20190914061943.4715-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/8] ARM: zii-vf610-dev: Swith to using compressed DTB
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Reduces image size by ~150K (from 765K to 612K) on my test
configuration.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/lowlevel.c | 28 ++++++++++++------------
 arch/arm/mach-imx/Kconfig                |  1 +
 2 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boards/zii-vf610-dev/lowlevel.c b/arch/arm/boards/zii-vf610-dev/lowlevel.c
index b320fbc0cf..9b57581d1b 100644
--- a/arch/arm/boards/zii-vf610-dev/lowlevel.c
+++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
@@ -75,13 +75,13 @@ static unsigned int get_system_type(void)
 	return pdir;
 }
 
-extern char __dtb_vf610_zii_dev_rev_b_start[];
-extern char __dtb_vf610_zii_dev_rev_c_start[];
-extern char __dtb_vf610_zii_cfu1_start[];
-extern char __dtb_vf610_zii_ssmb_spu3_start[];
-extern char __dtb_vf610_zii_scu4_aib_start[];
-extern char __dtb_vf610_zii_ssmb_dtu_start[];
-extern char __dtb_vf610_zii_spb4_start[];
+extern char __dtb_z_vf610_zii_dev_rev_b_start[];
+extern char __dtb_z_vf610_zii_dev_rev_c_start[];
+extern char __dtb_z_vf610_zii_cfu1_start[];
+extern char __dtb_z_vf610_zii_ssmb_spu3_start[];
+extern char __dtb_z_vf610_zii_scu4_aib_start[];
+extern char __dtb_z_vf610_zii_ssmb_dtu_start[];
+extern char __dtb_z_vf610_zii_spb4_start[];
 
 ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
 {
@@ -105,25 +105,25 @@ ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
 			puts_ll("*********************************\n");
 		}
 	case ZII_PLATFORM_VF610_DEV_REV_B: /* FALLTHROUGH */
-		fdt = __dtb_vf610_zii_dev_rev_b_start;
+		fdt = __dtb_z_vf610_zii_dev_rev_b_start;
 		break;
 	case ZII_PLATFORM_VF610_SCU4_AIB:
-		fdt = __dtb_vf610_zii_scu4_aib_start;
+		fdt = __dtb_z_vf610_zii_scu4_aib_start;
 		break;
 	case ZII_PLATFORM_VF610_DEV_REV_C:
-		fdt = __dtb_vf610_zii_dev_rev_c_start;
+		fdt = __dtb_z_vf610_zii_dev_rev_c_start;
 		break;
 	case ZII_PLATFORM_VF610_CFU1:
-		fdt = __dtb_vf610_zii_cfu1_start;
+		fdt = __dtb_z_vf610_zii_cfu1_start;
 		break;
 	case ZII_PLATFORM_VF610_SSMB_SPU3:
-		fdt = __dtb_vf610_zii_ssmb_spu3_start;
+		fdt = __dtb_z_vf610_zii_ssmb_spu3_start;
 		break;
 	case ZII_PLATFORM_VF610_SPB4:
-		fdt = __dtb_vf610_zii_spb4_start;
+		fdt = __dtb_z_vf610_zii_spb4_start;
 		break;
 	case ZII_PLATFORM_VF610_SSMB_DTU:
-		fdt = __dtb_vf610_zii_ssmb_dtu_start;
+		fdt = __dtb_z_vf610_zii_ssmb_dtu_start;
 		break;
 	}
 
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index b61c44a07a..db072caad9 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -468,6 +468,7 @@ config MACH_ZII_VF610_DEV
 	bool "ZII VF610 Dev Family"
 	select ARCH_VF610
 	select CLKDEV_LOOKUP
+	select ARM_USE_COMPRESSED_DTB
 
 config MACH_ZII_IMX7D_DEV
 	bool "ZII i.MX7D based devices"
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
