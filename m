Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i91Pb-0002sk-FV
 for barebox@lists.infradead.org; Sat, 14 Sep 2019 06:20:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id w22so19417035pfi.9
 for <barebox@lists.infradead.org>; Fri, 13 Sep 2019 23:19:54 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 13 Sep 2019 23:19:40 -0700
Message-Id: <20190914061943.4715-5-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/8] ARM: zii-imx7d-dev: Swith to using compressed DTB
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Reduces image size by 68K (from 652K to 584K) on my test
configuration.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx7d-dev/lowlevel.c | 8 ++++----
 arch/arm/mach-imx/Kconfig                | 1 +
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/zii-imx7d-dev/lowlevel.c b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
index 3ad4940da8..3bacfd0c7d 100644
--- a/arch/arm/boards/zii-imx7d-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
@@ -18,8 +18,8 @@
 #include <asm/cache.h>
 #include <mach/esdctl.h>
 
-extern char __dtb_imx7d_zii_rpu2_start[];
-extern char __dtb_imx7d_zii_rmu2_start[];
+extern char __dtb_z_imx7d_zii_rpu2_start[];
+extern char __dtb_z_imx7d_zii_rmu2_start[];
 
 static inline void setup_uart(void)
 {
@@ -97,10 +97,10 @@ ENTRY_FUNCTION(start_zii_imx7d_dev, r0, r1, r2)
 		}
 		/* FALLTHROUGH */
 	case ZII_PLATFORM_IMX7D_RPU2:
-		fdt = __dtb_imx7d_zii_rpu2_start;
+		fdt = __dtb_z_imx7d_zii_rpu2_start;
 		break;
 	case ZII_PLATFORM_IMX7D_RMU2:
-		fdt = __dtb_imx7d_zii_rmu2_start;
+		fdt = __dtb_z_imx7d_zii_rmu2_start;
 		break;
 	}
 
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index a84a8abc21..e0ec1f8e2b 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -474,6 +474,7 @@ config MACH_ZII_VF610_DEV
 config MACH_ZII_IMX7D_DEV
 	bool "ZII i.MX7D based devices"
 	select ARCH_IMX7
+	select ARM_USE_COMPRESSED_DTB
 
 config MACH_PHYTEC_PHYCORE_IMX7
 	bool "Phytec phyCORE i.MX7"
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
