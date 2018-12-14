Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHg-00005b-1M
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:17:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:25 +0100
Message-Id: <20181214141730.26181-19-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/23] ARM: omap3: Add support for reset reason detection
To: Barebox List <barebox@lists.infradead.org>
Cc: Oleg Karfich <oleg.karfich@wago.com>

From: Oleg Karfich <oleg.karfich@wago.com>

Due to the Errata i520, the reset code in the linux kernel aswell in barebox
triggers a cpu reset by setting the bit RST_DPLL3 in the PRM_RSTCTRL register.
This induces a global cold reset on the chip. So we will always detect a POR as
reset source when a reboot of the chip is triggerd. Other states like WDG, JTAG
were tested successfully.

Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
---
 arch/arm/mach-omap/omap3_generic.c | 49 ++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 348a00cdff..cff4a4fb11 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -44,6 +44,7 @@
 #include <mach/sys_info.h>
 #include <mach/syslib.h>
 #include <mach/omap3-generic.h>
+#include <reset_source.h>
 
 /**
  * @brief Reset the CPU
@@ -490,12 +491,60 @@ static int omap3_bootsource(void)
 	return 0;
 }
 
+#define OMAP3_PRM_RSTST_OFF 0x8
+#define OMAP3_REG_PRM_RSTST (OMAP3_PRM_REG(RSTCTRL) + OMAP3_PRM_RSTST_OFF)
+
+#define OMAP3_ICECRUSHER_RST	BIT(10)
+#define OMAP3_ICEPICK_RST	BIT(9)
+#define OMAP3_EXTERNAL_WARM_RST	BIT(6)
+#define OMAP3_SECURE_WD_RST	BIT(5)
+#define OMAP3_MPU_WD_RST	BIT(4)
+#define OMAP3_SECURITY_VIOL_RST	BIT(3)
+#define OMAP3_GLOBAL_SW_RST	BIT(1)
+#define OMAP3_GLOBAL_COLD_RST	BIT(0)
+
+static void omap3_detect_reset_reason(void)
+{
+	uint32_t val = 0;
+
+	val = readl(OMAP3_REG_PRM_RSTST);
+	/* clear OMAP3_PRM_RSTST - must be cleared by software */
+	writel(val, OMAP3_REG_PRM_RSTST);
+
+	switch (val) {
+	case OMAP3_ICECRUSHER_RST:
+	case OMAP3_ICEPICK_RST:
+		reset_source_set(RESET_JTAG);
+		break;
+	case OMAP3_EXTERNAL_WARM_RST:
+		reset_source_set(RESET_EXT);
+		break;
+	case OMAP3_SECURE_WD_RST:
+	case OMAP3_MPU_WD_RST:
+	case OMAP3_SECURITY_VIOL_RST:
+		reset_source_set(RESET_WDG);
+		break;
+	case OMAP3_GLOBAL_SW_RST:
+		reset_source_set(RESET_RST);
+		break;
+	case OMAP3_GLOBAL_COLD_RST:
+		reset_source_set(RESET_POR);
+		break;
+	default:
+		reset_source_set(RESET_UKWN);
+		break;
+	}
+}
+
 int omap3_init(void)
 {
 	omap_gpmc_base = (void *)OMAP3_GPMC_BASE;
 
 	restart_handler_register_fn(omap3_restart_soc);
 
+	if (IS_ENABLED(CONFIG_RESET_SOURCE))
+		omap3_detect_reset_reason();
+
 	return omap3_bootsource();
 }
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
