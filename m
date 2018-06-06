Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQdRH-0000Sd-7P
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 18:45:44 +0000
Received: by mail-pl0-x243.google.com with SMTP id w17-v6so4360741pll.9
 for <barebox@lists.infradead.org>; Wed, 06 Jun 2018 11:45:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Jun 2018 11:44:18 -0700
Message-Id: <20180606184431.10348-26-andrew.smirnov@gmail.com>
In-Reply-To: <20180606184431.10348-1-andrew.smirnov@gmail.com>
References: <20180606184431.10348-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 25/38] ARM: i.MX: xload-esdhc: Add support for i.MX8
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/xload.h |  1 +
 arch/arm/mach-imx/xload-esdhc.c        | 33 ++++++++++++++++++++++++++
 2 files changed, 34 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index 4e38ac7e2..8f141bc37 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -5,6 +5,7 @@ int imx53_nand_start_image(void);
 int imx6_spi_load_image(int instance, unsigned int flash_offset, void *buf, int len);
 int imx6_spi_start_image(int instance);
 int imx6_esdhc_start_image(int instance);
+int imx8_esdhc_start_image(int instance);
 
 int imx_image_size(void);
 
diff --git a/arch/arm/mach-imx/xload-esdhc.c b/arch/arm/mach-imx/xload-esdhc.c
index 6ab4cabb7..08ba9b08d 100644
--- a/arch/arm/mach-imx/xload-esdhc.c
+++ b/arch/arm/mach-imx/xload-esdhc.c
@@ -15,6 +15,7 @@
 #include <io.h>
 #include <mci.h>
 #include <mach/imx6-regs.h>
+#include <mach/imx8mq-regs.h>
 #include <mach/xload.h>
 #include <linux/sizes.h>
 #include "../../../drivers/mci/sdhci.h"
@@ -292,3 +293,35 @@ int imx6_esdhc_start_image(int instance)
 
 	return esdhc_start_image(&esdhc, 0x10000000, 0);
 }
+
+/**
+ * imx8_esdhc_start_image - Load and start an image from USDHC controller
+ * @instance: The USDHC controller instance (0..2)
+ *
+ * This uses esdhc_start_image() to load an image from SD/MMC.  It is
+ * assumed that the image is the currently running barebox image (This
+ * information is used to calculate the length of the image). The
+ * image is started afterwards.
+ *
+ * Return: If successful, this function does not return. A negative error
+ * code is returned when this function fails.
+ */
+int imx8_esdhc_start_image(int instance)
+{
+	struct esdhc esdhc;
+
+	switch (instance) {
+	case 0:
+		esdhc.regs = IOMEM(MX8MQ_USDHC1_BASE_ADDR);
+		break;
+	case 1:
+		esdhc.regs = IOMEM(MX8MQ_USDHC2_BASE_ADDR);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	esdhc.is_mx6 = 1;
+
+	return esdhc_start_image(&esdhc, MX8MQ_DDR_CSD1_BASE_ADDR, SZ_32K);
+}
\ No newline at end of file
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
