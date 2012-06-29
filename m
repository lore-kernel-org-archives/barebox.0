Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkaiA-0004OJ-5t
 for barebox@lists.infradead.org; Fri, 29 Jun 2012 12:54:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jun 2012 14:54:02 +0200
Message-Id: <1340974442-1687-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM mxs: Clear USB boot mode during startup
To: barebox@lists.infradead.org
Cc: wsa@pengutronix.de

When the i.MX28 boots from USB, the ROM code sets this bit. When
after a reset the ROM code detects that this bit is set it will
boot from USB again. This means that if we boot once from USB the
chip will continue to boot from USB until the next power cycle.

To prevent this (and boot from the configured bootsource instead)
clear this bit here. This bit is not documented in the datasheets,
it was figured out the hard way. Whether this is the same on i.MX23
is currently not known.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/imx.c |   26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/mach-mxs/imx.c b/arch/arm/mach-mxs/imx.c
index c64f23c..63b8889 100644
--- a/arch/arm/mach-mxs/imx.c
+++ b/arch/arm/mach-mxs/imx.c
@@ -20,6 +20,32 @@
 #include <common.h>
 #include <command.h>
 #include <complete.h>
+#include <init.h>
+#include <io.h>
+#include <mach/imx-regs.h>
+
+#define HW_RTC_PERSISTENT1     0x070
+
+static int imx_reset_usb_bootstrap(void)
+{
+	/*
+	 * Clear USB boot mode.
+	 *
+	 * When the i.MX28 boots from USB, the ROM code sets this bit. When
+	 * after a reset the ROM code detects that this bit is set it will
+	 * boot from USB again. This means that if we boot once from USB the
+	 * chip will continue to boot from USB until the next power cycle.
+	 *
+	 * To prevent this (and boot from the configured bootsource instead)
+	 * clear this bit here. This bit is not documented in the datasheets,
+	 * it was figured out the hard way. Whether this is the same on i.MX23
+	 * is currently not known.
+	 */
+	writel(0x2, IMX_WDT_BASE + HW_RTC_PERSISTENT1 + BIT_CLR);
+
+	return 0;
+}
+device_initcall(imx_reset_usb_bootstrap);
 
 extern void imx_dump_clocks(void);
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
