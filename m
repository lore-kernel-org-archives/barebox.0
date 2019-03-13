Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h40Oj-0001Xs-GU
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 09:42:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Mar 2019 10:41:52 +0100
Message-Id: <20190313094202.14901-6-s.hauer@pengutronix.de>
In-Reply-To: <20190313094202.14901-1-s.hauer@pengutronix.de>
References: <20190313094202.14901-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/15] esdhc-xload: Add support for Layerscape
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/include/mach/xload.h |  6 ++
 drivers/mci/imx-esdhc-pbl.c                   | 60 ++++++++++++++++++-
 2 files changed, 65 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-layerscape/include/mach/xload.h

diff --git a/arch/arm/mach-layerscape/include/mach/xload.h b/arch/arm/mach-layerscape/include/mach/xload.h
new file mode 100644
index 0000000000..fedd36e020
--- /dev/null
+++ b/arch/arm/mach-layerscape/include/mach/xload.h
@@ -0,0 +1,6 @@
+#ifndef __MACH_XLOAD_H
+#define __MACH_XLOAD_H
+
+int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long r2);
+
+#endif /* __MACH_XLOAD_H */
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index f77530d310..c37ebe0141 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -15,11 +15,12 @@
 #include <io.h>
 #include <mci.h>
 #include <linux/sizes.h>
+#include <asm-generic/sections.h>
+#include <mach/xload.h>
 #ifdef CONFIG_ARCH_IMX
 #include <mach/atf.h>
 #include <mach/imx6-regs.h>
 #include <mach/imx8mq-regs.h>
-#include <mach/xload.h>
 #include <mach/imx-header.h>
 #endif
 #include "sdhci.h"
@@ -404,3 +405,60 @@ int imx8_esdhc_start_image(int instance)
 				 MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K);
 }
 #endif
+
+#ifdef CONFIG_ARCH_LS1046
+
+/*
+ * The image on the SD card starts at 0x1000. We reserved 128KiB for the PBL,
+ * so the 2nd stage image starts here:
+ */
+#define LS1046A_SD_IMAGE_OFFSET (SZ_4K + SZ_128K)
+
+/**
+ * ls1046a_esdhc_start_image - Load and start a 2nd stage from the ESDHC controller
+ *
+ * This loads and starts a 2nd stage barebox from an SD card and starts it. We
+ * assume the image has been generated with scripts/pblimage.c which puts the
+ * second stage to an offset of 128KiB in the image.
+ *
+ * Return: If successful, this function does not return. A negative error
+ * code is returned when this function fails.
+ */
+int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long r2)
+{
+	int ret;
+	uint32_t val;
+	struct esdhc esdhc = {
+		.regs = IOMEM(0x01560000),
+		.is_be = true,
+	};
+	unsigned long sdram = 0x80000000;
+	void (*barebox)(unsigned long, unsigned long, unsigned long) =
+		(void *)(sdram + LS1046A_SD_IMAGE_OFFSET);
+
+	/*
+	 * The ROM leaves us here with a clock frequency of around 400kHz. Speed
+	 * this up a bit. FIXME: The resulting frequency has not yet been verified
+	 * to work on all cards.
+	 */
+	val = esdhc_read32(&esdhc, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
+	val &= ~0x0000fff0;
+	val |= (2 << 8) | (6 << 4);
+	esdhc_write32(&esdhc, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET, val);
+
+	esdhc_write32(&esdhc, ESDHC_DMA_SYSCTL, ESDHC_SYSCTL_DMA_SNOOP);
+
+	ret = esdhc_read_blocks(&esdhc, (void *)sdram,
+			ALIGN(barebox_image_size + LS1046A_SD_IMAGE_OFFSET, 512));
+	if (ret) {
+		pr_err("%s: reading blocks failed with: %d\n", __func__, ret);
+		return ret;
+	}
+
+	printf("Starting barebox\n");
+
+	barebox(r0, r1, r2);
+
+	return -EINVAL;
+}
+#endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
