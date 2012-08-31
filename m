Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T7Rgo-0003AT-9N
 for barebox@lists.infradead.org; Fri, 31 Aug 2012 13:55:15 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 31 Aug 2012 15:55:08 +0200
Message-Id: <1346421308-24669-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] ARM i.MX6: query silicon revision
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Read silicon revision from ???-register.
This is based on a7683867463481bfea84af4d60af832ddfb3da7f from u-boot.
The address 0x020c8260 is used and decoded. I haven't found that in my
datasheet, so I must trust the code to be correct.
At least on a SabreLite v1.0 I get the correct version though.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c |   36 +++++++++++++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index b6067d7..9c90444 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -19,7 +19,7 @@
 #include <common.h>
 #include <io.h>
 #include <sizes.h>
-#include <mach/imx6-regs.h>
+#include <mach/imx-regs.h>
 
 #include "gpio.h"
 
@@ -35,6 +35,40 @@ void *imx_gpio_base[] = {
 
 int imx_gpio_count = ARRAY_SIZE(imx_gpio_base) * 32;
 
+static u32 mx6_silicon_revision;
+static char *mx6_rev_string = "unknown";
+
+int imx_silicon_revision(void)
+{
+	return mx6_silicon_revision;
+}
+
+static int query_silicon_revision(void)
+{
+	void __iomem *anatop = (void *) MX6_ANATOP_BASE_ADDR;
+	u32 rev, reg;
+
+	reg = readl(anatop + 0x260);
+	/* read mx6 variant: quad, dual, solo */
+	//rev = (reg >> 4) & 0xff000;
+	rev = (reg & 0xff) + 0x10;
+	switch (rev) {
+	case 0x10:
+		mx6_silicon_revision = IMX_CHIP_REV_1_0;
+		mx6_rev_string = "1.0";
+		break;
+	case 0x11:
+		mx6_silicon_revision = IMX_CHIP_REV_1_1;
+		mx6_rev_string = "1.1";
+		break;
+	default:
+		mx6_silicon_revision = 0;
+	}
+
+	return 0;
+}
+core_initcall(query_silicon_revision);
+
 void imx6_init_lowlevel(void)
 {
 	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
