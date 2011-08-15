Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QstAR-0006Tv-Om
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 09:09:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Aug 2011 11:09:04 +0200
Message-Id: <1313399344-21259-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1313399344-21259-1-git-send-email-s.hauer@pengutronix.de>
References: <1313399344-21259-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM i.MX51: set barebox_loc according to boot source
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx51.c |   87 +++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 87 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 8b7c807..f2c886e 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -18,6 +18,7 @@
 #include <init.h>
 #include <common.h>
 #include <sizes.h>
+#include <environment.h>
 #include <asm/io.h>
 #include <mach/imx51-regs.h>
 
@@ -89,3 +90,89 @@ static int imx51_init(void)
 	return 0;
 }
 coredevice_initcall(imx51_init);
+
+/*
+ * Saves the boot source media into the $barebox_loc enviroment variable
+ *
+ * This information is useful for barebox init scripts as we can then easily
+ * use a kernel image stored on the same media that we launch barebox with
+ * (for example).
+ *
+ * imx25 and imx35 can boot into barebox from several media such as
+ * nand, nor, mmc/sd cards, serial roms. "mmc" is used to represent several
+ * sources as its impossible to distinguish between them.
+ *
+ * Some sources such as serial roms can themselves have 3 different boot
+ * possibilities (i2c1, i2c2 etc). It is assumed that any board will
+ * only be using one of these at any one time.
+ *
+ * Note also that I suspect that the boot source pins are only sampled at
+ * power up.
+ */
+
+#define SRC_SBMR	0x4
+#define SBMR_BT_MEM_TYPE_SHIFT	7
+#define SBMR_BT_MEM_CTL_SHIFT	0
+#define SBMR_BMOD_SHIFT		14
+
+static int imx51_boot_save_loc(void)
+{
+	const char *bareboxloc = NULL;
+	uint32_t reg;
+	unsigned int ctrl, type;
+
+	/* [CTRL][TYPE] */
+	const char *const locations[4][4] = {
+		{ /* CTRL = WEIM */
+			"nor",
+			NULL,
+			"onenand",
+			NULL,
+		}, { /* CTRL == NAND */
+			"nand",
+			"nand",
+			"nand",
+			"nand",
+		}, { /* CTRL == reserved */
+			NULL,
+			NULL,
+			NULL,
+			NULL,
+		}, { /* CTRL == expansion */
+			"mmc",
+			NULL,
+			"i2c",
+			"spi",
+		}
+	};
+
+	reg = readl(MX51_SRC_BASE_ADDR + SRC_SBMR);
+
+	switch ((reg >> SBMR_BMOD_SHIFT) & 0x3) {
+	case 0:
+	case 2:
+		/* internal boot */
+		ctrl = (reg >> SBMR_BT_MEM_CTL_SHIFT) & 0x3;
+		type = (reg >> SBMR_BT_MEM_TYPE_SHIFT) & 0x3;
+
+		bareboxloc = locations[ctrl][type];
+		break;
+	case 1:
+		/* reserved */
+		bareboxloc = "unknown";
+		break;
+	case 3:
+		bareboxloc = "serial";
+		break;
+
+	}
+
+	if (bareboxloc) {
+		setenv("barebox_loc", bareboxloc);
+		export("barebox_loc");
+	}
+
+	return 0;
+}
+
+coredevice_initcall(imx51_boot_save_loc);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
