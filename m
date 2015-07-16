Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFesV-0005kU-PS
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:50:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 10:50:26 +0200
Message-Id: <1437036628-29439-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
References: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/11] ARM: i.MX: Add SPI xload code
To: Barebox List <barebox@lists.infradead.org>

Add PBL xload code to load an image from SPI NOR flash. Currently implemented
for i.MX6.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile             |   1 +
 arch/arm/mach-imx/include/mach/xload.h |   7 ++
 arch/arm/mach-imx/xload-spi.c          | 160 +++++++++++++++++++++++++++++++++
 3 files changed, 168 insertions(+)
 create mode 100644 arch/arm/mach-imx/include/mach/xload.h
 create mode 100644 arch/arm/mach-imx/xload-spi.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 9e21429..578676d 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -23,3 +23,4 @@ obj-pbl-y += esdctl.o boot.o
 obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
 lwl-y += cpu_init.o
+pbl-y += xload-spi.o
diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
new file mode 100644
index 0000000..278d148
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -0,0 +1,7 @@
+#ifndef __MACH_XLOAD_H
+#define __MACH_XLOAD_H
+
+int imx6_spi_load_image(int instance, unsigned int flash_offset, void *buf, int len);
+int imx6_spi_start_image(int instance);
+
+#endif /* __MACH_XLOAD_H */
diff --git a/arch/arm/mach-imx/xload-spi.c b/arch/arm/mach-imx/xload-spi.c
new file mode 100644
index 0000000..a7556b1
--- /dev/null
+++ b/arch/arm/mach-imx/xload-spi.c
@@ -0,0 +1,160 @@
+#include <common.h>
+#include <io.h>
+#include <spi/imx-spi.h>
+#include <mach/imx6-regs.h>
+#include <mach/generic.h>
+#include <bootsource.h>
+#include <asm/sections.h>
+#include <linux/sizes.h>
+
+static int cspi_2_3_read_data(void __iomem *base, u32 *data)
+{
+	u32 r;
+
+	while (1) {
+		if (readl(base + CSPI_2_3_STAT) & CSPI_2_3_STAT_RR)
+			break;
+	}
+
+	r = swab32(readl(base + CSPI_2_3_RXDATA));
+	if (data)
+		*data = r;
+
+	return 0;
+}
+
+static int cspi_2_3_load(void __iomem *base, unsigned int flash_offset, void *buf, int len)
+{
+	int transfer_size = 256;
+	u32 val;
+	int words, adr = 0;
+	int ret;
+
+	val = readl(base + CSPI_2_3_CTRL);
+	val &= ~(0xfff << CSPI_2_3_CTRL_BL_OFFSET);
+	val |= CSPI_2_3_CTRL_ENABLE;
+	writel(val, base + CSPI_2_3_CTRL);
+
+	writel(val, base + CSPI_2_3_CTRL);
+
+	for (adr = 0; adr < len; adr += transfer_size) {
+
+		val |= ((transfer_size + 4) * 8 - 1) << CSPI_2_3_CTRL_BL_OFFSET;
+		writel(val, base + CSPI_2_3_CTRL);
+
+		/* address */
+		writel(swab32(0x3) | (adr + flash_offset), base + CSPI_2_3_TXDATA);
+		writel(val | CSPI_2_3_CTRL_XCH, base + CSPI_2_3_CTRL);
+
+		ret = cspi_2_3_read_data(base, NULL);
+		if (ret)
+			return ret;
+
+		words = 0;
+
+		for (words = 0; words < transfer_size >> 2; words++) {
+			writel(0, base + CSPI_2_3_TXDATA);
+			cspi_2_3_read_data(base, buf);
+			buf += 4;
+		}
+	}
+
+	return 0;
+}
+
+static int imx_image_size(void)
+{
+	uint32_t *image_end = (void *)ld_var(__image_end);
+	uint32_t payload_len, pbl_len, imx_header_len, sizep;
+	void *pg_start;
+
+	pg_start = image_end + 1;
+
+	/* i.MX header is 4k */
+	imx_header_len = SZ_4K;
+
+	/* The length of the PBL image */
+	pbl_len = ld_var(__image_end) - ld_var(_text);
+
+	sizep = 4;
+
+	/* The length of the payload is appended directly behind the PBL */
+	payload_len = *(image_end);
+
+	pr_debug("%s: payload_len: 0x%08x pbl_len: 0x%08x\n",
+			__func__, payload_len, pbl_len);
+
+	return imx_header_len + pbl_len + sizep + payload_len;
+}
+
+/**
+ * imx6_spi_load_image - load an image from SPI NOR
+ * @instance: The SPI controller instance (0..4)
+ * @flash_offset: The offset in flash where the image starts
+ * @buf: The buffer to load the image to
+ * @len: The size to load
+ *
+ * This function loads data from SPI NOR flash on i.MX6. This assumes the
+ * SPI controller has already been initialized and the pinctrl / clocks are
+ * configured correctly. This is the case when the ROM has loaded the initial
+ * portion of the boot loader from exactly this controller.
+ *
+ * Return: 0 if successful, negative error code otherwise
+ */
+int imx6_spi_load_image(int instance, unsigned int flash_offset, void *buf, int len)
+{
+	void *base;
+
+	switch (instance) {
+	case 0:
+		base = IOMEM(MX6_ECSPI1_BASE_ADDR);
+		break;
+	case 1:
+		base = IOMEM(MX6_ECSPI2_BASE_ADDR);
+		break;
+	case 2:
+		base = IOMEM(MX6_ECSPI3_BASE_ADDR);
+		break;
+	case 3:
+		base = IOMEM(MX6_ECSPI4_BASE_ADDR);
+		break;
+	case 4:
+		base = IOMEM(MX6_ECSPI5_BASE_ADDR);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	cspi_2_3_load(base, flash_offset, buf, len);
+
+	return 0;
+}
+
+/**
+ * imx6_spi_start_image - Load and start an image from SPI NOR flash
+ * @instance: The SPI controller instance (0..4)
+ *
+ * This uses imx6_spi_load_image() to load an image from SPI NOR flash.
+ * It is assumed that the image is the currently running barebox image
+ * (This information is used to calculate the length of the image). The
+ * image is started afterwards.
+ *
+ * Return: If successul, this function does not return. A negative error
+ * code is returned when this function fails.
+ */
+int imx6_spi_start_image(int instance)
+{
+	void *buf = (void *)0x10000000;
+	int ret, len;
+	void __noreturn (*bb)(void);
+
+	len = imx_image_size();
+
+	ret = imx6_spi_load_image(instance, 0, buf, len);
+	if (ret)
+		return ret;
+
+	bb = buf;
+
+	bb();
+}
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
