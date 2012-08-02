Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwsMq-0002Oj-Es
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 10:11:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Aug 2012 12:10:14 +0200
Message-Id: <1343902216-13262-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1343902216-13262-1-git-send-email-s.hauer@pengutronix.de>
References: <1343902216-13262-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] mtd OMAP NAND: Use prefetch engine
To: barebox@lists.infradead.org

Use the prefetch engine to improve NAND performance. The howto
is derived from the Kernel. Unlike the kernel we do not make
the access mode configurable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/gpmc.c              |   61 +++++++++++++++++++
 arch/arm/mach-omap/include/mach/gpmc.h |   16 ++++-
 drivers/mtd/nand/nand_omap_gpmc.c      |  100 ++++++++++++++++++++++++++++++++
 3 files changed, 174 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap/gpmc.c b/arch/arm/mach-omap/gpmc.c
index 92a8ae0..5b4daaf 100644
--- a/arch/arm/mach-omap/gpmc.c
+++ b/arch/arm/mach-omap/gpmc.c
@@ -31,6 +31,7 @@
 #include <clock.h>
 #include <init.h>
 #include <io.h>
+#include <errno.h>
 #include <mach/silicon.h>
 #include <mach/gpmc.h>
 #include <mach/sys_info.h>
@@ -125,3 +126,63 @@ void gpmc_cs_config(char cs, struct gpmc_config *config)
 	mdelay(1);		/* Settling time */
 }
 EXPORT_SYMBOL(gpmc_cs_config);
+
+#define CS_NUM_SHIFT		24
+#define ENABLE_PREFETCH		(0x1 << 7)
+#define DMA_MPU_MODE		2
+
+/**
+ * gpmc_prefetch_enable - configures and starts prefetch transfer
+ * @cs: cs (chip select) number
+ * @fifo_th: fifo threshold to be used for read/ write
+ * @dma_mode: dma mode enable (1) or disable (0)
+ * @u32_count: number of bytes to be transferred
+ * @is_write: prefetch read(0) or write post(1) mode
+ */
+int gpmc_prefetch_enable(int cs, int fifo_th, int dma_mode,
+				unsigned int u32_count, int is_write)
+{
+	if (fifo_th > PREFETCH_FIFOTHRESHOLD_MAX) {
+		pr_err("gpmc: fifo threshold is not supported\n");
+		return -EINVAL;
+	}
+
+	/* Set the amount of bytes to be prefetched */
+	writel(u32_count, GPMC_REG(PREFETCH_CONFIG2));
+
+	/* Set dma/mpu mode, the prefetch read / post write and
+	 * enable the engine. Set which cs is has requested for.
+	 */
+	writel(((cs << CS_NUM_SHIFT) | PREFETCH_FIFOTHRESHOLD(fifo_th) |
+				ENABLE_PREFETCH | (dma_mode << DMA_MPU_MODE) |
+				(0x1 & is_write)),
+			GPMC_REG(PREFETCH_CONFIG1));
+
+	/*  Start the prefetch engine */
+	writel(0x1, GPMC_REG(PREFETCH_CONTROL));
+
+	return 0;
+}
+EXPORT_SYMBOL(gpmc_prefetch_enable);
+
+/**
+ * gpmc_prefetch_reset - disables and stops the prefetch engine
+ */
+int gpmc_prefetch_reset(int cs)
+{
+	u32 config1;
+
+	/* check if the same module/cs is trying to reset */
+	config1 = readl(GPMC_REG(PREFETCH_CONFIG1));
+	if (((config1 >> CS_NUM_SHIFT) & 0x7) != cs)
+		return -EINVAL;
+
+	/* Stop the PFPW engine */
+	writel(0x0, GPMC_REG(PREFETCH_CONTROL));
+
+	/* Reset/disable the PFPW engine */
+	writel(0x0, GPMC_REG(PREFETCH_CONFIG1));
+
+	return 0;
+}
+EXPORT_SYMBOL(gpmc_prefetch_reset);
diff --git a/arch/arm/mach-omap/include/mach/gpmc.h b/arch/arm/mach-omap/include/mach/gpmc.h
index 3ddc5f5..ed4e82d 100644
--- a/arch/arm/mach-omap/include/mach/gpmc.h
+++ b/arch/arm/mach-omap/include/mach/gpmc.h
@@ -51,9 +51,10 @@
 #define GPMC_TIMEOUT_CONTROL	(0x40)
 #define GPMC_CFG		(0x50)
 #define GPMC_STATUS		(0x54)
-#define GPMC_PREFETCH_CONFIG_1	(0x1E0)
-#define GPMC_PREFETCH_CONFIG_2	(0x1E4)
-#define GPMC_PREFETCH_CTRL	(0x1EC)
+#define GPMC_PREFETCH_CONFIG1	(0x1E0)
+#define GPMC_PREFETCH_CONFIG2	(0x1E4)
+#define GPMC_PREFETCH_CONTROL	(0x1EC)
+#define GPMC_PREFETCH_STATUS	(0x1f0)
 #define GPMC_ECC_CONFIG		(0x1F4)
 #define GPMC_ECC_CONTROL	(0x1F8)
 #define GPMC_ECC_SIZE_CONFIG	(0x1FC)
@@ -138,6 +139,15 @@
 #define GPMC_SIZE_32M		0x0E
 #define GPMC_SIZE_16M		0x0F
 
+#define PREFETCH_FIFOTHRESHOLD_MAX	0x40
+#define PREFETCH_FIFOTHRESHOLD(val)	((val) << 8)
+#define GPMC_PREFETCH_STATUS_FIFO_CNT(val)	((val >> 24) & 0x7F)
+#define GPMC_PREFETCH_STATUS_COUNT(val)	(val & 0x00003fff)
+
+int gpmc_prefetch_enable(int cs, int fifo_th, int dma_mode,
+				unsigned int u32_count, int is_write);
+int gpmc_prefetch_reset(int cs);
+
 #define NAND_WP_BIT		0x00000010
 
 #ifndef __ASSEMBLY__
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 08008e7..39b4dd9 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -112,6 +112,7 @@ struct gpmc_nand_info {
 	unsigned inuse:1;
 	unsigned char ecc_parity_pairs;
 	enum gpmc_ecc_mode ecc_mode;
+	void *cs_base;
 };
 
 /* Typical BOOTROM oob layouts-requires hwecc **/
@@ -583,6 +584,101 @@ static int omap_gpmc_read_buf_manual(struct mtd_info *mtd, struct nand_chip *chi
 	return bytes;
 }
 
+/**
+ * omap_read_buf_pref - read data from NAND controller into buffer
+ * @mtd: MTD device structure
+ * @buf: buffer to store date
+ * @len: number of bytes to read
+ */
+static void omap_read_buf_pref(struct mtd_info *mtd, u_char *buf, int len)
+{
+	struct gpmc_nand_info *info = container_of(mtd,
+						struct gpmc_nand_info, minfo);
+	u32 r_count = 0;
+	u32 *p = (u32 *)buf;
+
+	/* take care of subpage reads */
+	if (len % 4) {
+		if (info->nand.options & NAND_BUSWIDTH_16)
+			readsw(info->cs_base, buf, (len % 4) / 2);
+		else
+			readsb(info->cs_base, buf, len % 4);
+		p = (u32 *) (buf + len % 4);
+		len -= len % 4;
+	}
+
+	/* configure and start prefetch transfer */
+	gpmc_prefetch_enable(info->gpmc_cs,
+			PREFETCH_FIFOTHRESHOLD_MAX, 0x0, len, 0x0);
+
+	do {
+		r_count = readl(info->gpmc_base + GPMC_PREFETCH_STATUS);
+		r_count = GPMC_PREFETCH_STATUS_FIFO_CNT(r_count);
+		r_count = r_count >> 2;
+		readsl(info->cs_base, p, r_count);
+		p += r_count;
+		len -= r_count << 2;
+	} while (len);
+
+	/* disable and stop the PFPW engine */
+	gpmc_prefetch_reset(info->gpmc_cs);
+}
+
+/**
+ * omap_write_buf_pref - write buffer to NAND controller
+ * @mtd: MTD device structure
+ * @buf: data buffer
+ * @len: number of bytes to write
+ */
+static void omap_write_buf_pref(struct mtd_info *mtd,
+					const u_char *buf, int len)
+{
+	struct gpmc_nand_info *info = container_of(mtd,
+						struct gpmc_nand_info, minfo);
+	u32 w_count = 0;
+	u_char *buf1 = (u_char *)buf;
+	u32 *p32 = (u32 *)buf;
+	uint64_t start;
+
+	/* take care of subpage writes */
+	while (len % 4 != 0) {
+		writeb(*buf, info->nand.IO_ADDR_W);
+		buf1++;
+		p32 = (u32 *)buf1;
+		len--;
+	}
+
+	/*  configure and start prefetch transfer */
+	gpmc_prefetch_enable(info->gpmc_cs,
+			PREFETCH_FIFOTHRESHOLD_MAX, 0x0, len, 0x1);
+
+	while (len >= 0) {
+		w_count = readl(info->gpmc_base + GPMC_PREFETCH_STATUS);
+		w_count = GPMC_PREFETCH_STATUS_FIFO_CNT(w_count);
+		w_count = w_count >> 2;
+		writesl(info->cs_base, p32, w_count);
+		p32 += w_count;
+		len -= w_count << 2;
+	}
+
+	/* wait for data to flushed-out before reset the prefetch */
+	start = get_time_ns();
+	while (1) {
+		u32 regval, status;
+		regval = readl(info->gpmc_base + GPMC_PREFETCH_STATUS);
+		status = GPMC_PREFETCH_STATUS_COUNT(regval);
+		if (!status)
+			break;
+		if (is_timeout(start, 100 * MSECOND)) {
+			dev_err(mtd->dev, "prefetch flush timed out\n");
+			break;
+		}
+	}
+
+	/* disable and stop the PFPW engine */
+	gpmc_prefetch_reset(info->gpmc_cs);
+}
+
 /*
  * read a page with the ecc layout used by the OMAP4 romcode. The
  * romcode expects an unusual ecc layout (f = free, e = ecc):
@@ -833,6 +929,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	oinfo->gpmc_command = (void *)(cs_base + GPMC_CS_NAND_COMMAND);
 	oinfo->gpmc_address = (void *)(cs_base + GPMC_CS_NAND_ADDRESS);
 	oinfo->gpmc_data = (void *)(cs_base + GPMC_CS_NAND_DATA);
+	oinfo->cs_base = (void *)pdata->nand_cfg->base;
 	dev_dbg(pdev, "GPMC base=0x%p cmd=0x%p address=0x%p data=0x%p cs_base=0x%p\n",
 		oinfo->gpmc_base, oinfo->gpmc_command, oinfo->gpmc_address,
 		oinfo->gpmc_data, cs_base);
@@ -933,6 +1030,9 @@ static int gpmc_nand_probe(struct device_d *pdev)
 		goto out_release_mem;
 	}
 
+	nand->read_buf   = omap_read_buf_pref;
+	nand->write_buf  = omap_write_buf_pref;
+
 	nand->options |= NAND_SKIP_BBTSCAN;
 
 	dev_add_param(pdev, "eccmode", omap_gpmc_eccmode_set, NULL, 0);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
