Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i91PX-0002sB-H3
 for barebox@lists.infradead.org; Sat, 14 Sep 2019 06:19:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id x15so16423561pgg.8
 for <barebox@lists.infradead.org>; Fri, 13 Sep 2019 23:19:51 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 13 Sep 2019 23:19:37 -0700
Message-Id: <20190914061943.4715-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/8] ARM: zii-imx8mq-dev: Switch to using compressed DTB
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Reduces image size by ~50K (from 547K to 496K) on my test
configuration.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c | 8 ++++----
 arch/arm/mach-imx/Kconfig                 | 1 +
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index 8442beb4f4..795c98cb66 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -117,8 +117,8 @@ static unsigned int get_system_type(void)
 	return FIELD_GET(SYSTEM_TYPE, dr);
 }
 
-extern char __dtb_imx8mq_zii_ultra_rmb3_start[];
-extern char __dtb_imx8mq_zii_ultra_zest_start[];
+extern char __dtb_z_imx8mq_zii_ultra_rmb3_start[];
+extern char __dtb_z_imx8mq_zii_ultra_zest_start[];
 
 static __noreturn noinline void zii_imx8mq_dev_start(void)
 {
@@ -163,10 +163,10 @@ static __noreturn noinline void zii_imx8mq_dev_start(void)
 		}
 		/* FALLTHROUGH */
 	case ZII_PLATFORM_IMX8MQ_ULTRA_RMB3:
-		fdt = __dtb_imx8mq_zii_ultra_rmb3_start;
+		fdt = __dtb_z_imx8mq_zii_ultra_rmb3_start;
 		break;
 	case ZII_PLATFORM_IMX8MQ_ULTRA_ZEST:
-		fdt = __dtb_imx8mq_zii_ultra_zest_start;
+		fdt = __dtb_z_imx8mq_zii_ultra_zest_start;
 		break;
 	}
 
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index e7721621ab..b61c44a07a 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -462,6 +462,7 @@ config MACH_ZII_IMX8MQ_DEV
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 	select MACH_ZII_COMMON
+	select ARM_USE_COMPRESSED_DTB
 
 config MACH_ZII_VF610_DEV
 	bool "ZII VF610 Dev Family"
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
