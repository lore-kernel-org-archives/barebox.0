Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i91Pb-0002sr-Aa
 for barebox@lists.infradead.org; Sat, 14 Sep 2019 06:20:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id h195so19424186pfe.5
 for <barebox@lists.infradead.org>; Fri, 13 Sep 2019 23:19:55 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 13 Sep 2019 23:19:41 -0700
Message-Id: <20190914061943.4715-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/8] ARM: zii-imx51-rdu1: Swith to using compressed DTB
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Reduces image size by 58K (from 642K to 584K) on my test
configuration.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx51-rdu1/lowlevel.c | 12 ++++++------
 arch/arm/mach-imx/Kconfig                 |  1 +
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
index da05b0564c..c7bb044e0d 100644
--- a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
+++ b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
@@ -68,9 +68,9 @@ static unsigned int get_system_type(void)
 	return FIELD_GET(SYSTEM_TYPE, dr);
 }
 
-extern char __dtb_imx51_zii_rdu1_start[];
-extern char __dtb_imx51_zii_scu2_mezz_start[];
-extern char __dtb_imx51_zii_scu3_esb_start[];
+extern char __dtb_z_imx51_zii_rdu1_start[];
+extern char __dtb_z_imx51_zii_scu2_mezz_start[];
+extern char __dtb_z_imx51_zii_scu3_esb_start[];
 
 ENTRY_FUNCTION(start_imx51_zii_rdu1, r0, r1, r2)
 {
@@ -96,13 +96,13 @@ ENTRY_FUNCTION(start_imx51_zii_rdu1, r0, r1, r2)
 		/* FALLTHROUGH */
 	case ZII_PLATFORM_IMX51_RDU_REV_B:
 	case ZII_PLATFORM_IMX51_RDU_REV_C:
-		fdt = __dtb_imx51_zii_rdu1_start;
+		fdt = __dtb_z_imx51_zii_rdu1_start;
 		break;
 	case ZII_PLATFORM_IMX51_SCU2_MEZZ:
-		fdt = __dtb_imx51_zii_scu2_mezz_start;
+		fdt = __dtb_z_imx51_zii_scu2_mezz_start;
 		break;
 	case ZII_PLATFORM_IMX51_SCU3_ESB:
-		fdt = __dtb_imx51_zii_scu3_esb_start;
+		fdt = __dtb_z_imx51_zii_scu3_esb_start;
 		break;
 	}
 
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index e0ec1f8e2b..dfbe59c20b 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -447,6 +447,7 @@ config MACH_ZII_RDU1
 	select MACH_FREESCALE_MX51_PDK_POWER
 	select CRC8
 	select MACH_ZII_COMMON
+	select ARM_USE_COMPRESSED_DTB
 
 config MACH_ZII_RDU2
 	bool "ZII i.MX6Q(+) RDU2"
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
