Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k34hZ-0002eM-9s
 for barebox@lists.infradead.org; Tue, 04 Aug 2020 21:42:30 +0000
Received: by mail-lj1-x243.google.com with SMTP id v4so35625000ljd.0
 for <barebox@lists.infradead.org>; Tue, 04 Aug 2020 14:42:29 -0700 (PDT)
From: Anees Rehman <anees.r3hman@gmail.com>
Date: Tue,  4 Aug 2020 23:41:57 +0200
Message-Id: <20200804214158.25721-2-anees.r3hman@gmail.com>
In-Reply-To: <20200804214158.25721-1-anees.r3hman@gmail.com>
References: <20200804214158.25721-1-anees.r3hman@gmail.com>
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
Subject: [PATCH v2 1/2] mci: imx-esdhc-pbl: Add support for IMX7
To: barebox@lists.infradead.org
Cc: Anees Rehman <anees.rehman@atlascopco.com>, Anees Rehman <anees.r3hman@gmail.com>

From: Anees Rehman <anees.rehman@atlascopco.com>

Signed-off-by: Anees Rehman <anees.r3hman@gmail.com>
---
 arch/arm/mach-imx/include/mach/xload.h |  1 +
 drivers/mci/imx-esdhc-pbl.c            | 37 ++++++++++++++++++++++++++
 2 files changed, 38 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index 05022e9d0..94b2f3761 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -5,6 +5,7 @@ int imx53_nand_start_image(void);
 int imx6_spi_load_image(int instance, unsigned int flash_offset, void *buf, int len);
 int imx6_spi_start_image(int instance);
 int imx6_esdhc_start_image(int instance);
+int imx7_esdhc_start_image(int instance);
 int imx8m_esdhc_load_image(int instance, bool start);
 int imx8mp_esdhc_load_image(int instance, bool start);
 
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 5c382bbcc..10a008280 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -21,6 +21,7 @@
 #ifdef CONFIG_ARCH_IMX
 #include <mach/atf.h>
 #include <mach/imx6-regs.h>
+#include <mach/imx7-regs.h>
 #include <mach/imx8mq-regs.h>
 #include <mach/imx8mm-regs.h>
 #include <mach/imx-header.h>
@@ -265,6 +266,42 @@ int imx6_esdhc_start_image(int instance)
 	return esdhc_load_image(&host, 0x10000000, 0x10000000, 0, SZ_1K, true);
 }
 
+/**
+ * imx7_esdhc_start_image - Load and start an image from USDHC controller
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
+int imx7_esdhc_start_image(int instance)
+{
+	struct esdhc_soc_data data;
+	struct fsl_esdhc_host host;
+
+	switch (instance) {
+	case 0:
+		host.regs = IOMEM(MX7_USDHC1_BASE_ADDR);
+		break;
+	case 1:
+		host.regs = IOMEM(MX7_USDHC2_BASE_ADDR);
+		break;
+	case 2:
+		host.regs = IOMEM(MX7_USDHC3_BASE_ADDR);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	imx_esdhc_init(&host, &data);
+
+	return esdhc_load_image(&host, 0x80000000, 0x80000000, 0, SZ_1K, true);
+}
+
 /**
  * imx8m_esdhc_load_image - Load and optionally start an image from USDHC controller
  * @instance: The USDHC controller instance (0..2)
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
