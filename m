Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK0Ar-00063q-38
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 09:28:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Jul 2016 11:27:32 +0200
Message-Id: <1467624459-16448-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1467624459-16448-1-git-send-email-s.hauer@pengutronix.de>
References: <1467624459-16448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/12] ARM: i.MX53: Implement NAND xload
To: Barebox List <barebox@lists.infradead.org>

Some i.MX53 want to setup the SDRAM from C code rather than
from DCD tables. The image size for these boards is limited
to the internal SRAM size. To overcome this limitation for
i.MX53 boards booting from NAND implement an xload mechanism
to load only the PBL to SRAM and let barebox load the rest
of the image itself after SDRAM has been initialized.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile             |   2 +-
 arch/arm/mach-imx/include/mach/xload.h |   1 +
 arch/arm/mach-imx/xload-imx-nand.c     | 308 +++++++++++++++++++++++++++++++++
 3 files changed, 310 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-imx/xload-imx-nand.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index db1cf7d..7a29b6d 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -23,4 +23,4 @@ obj-pbl-y += esdctl.o boot.o
 obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
 lwl-y += cpu_init.o
-pbl-y += xload-spi.o xload-esdhc.o xload-common.o
+pbl-y += xload-spi.o xload-esdhc.o xload-common.o xload-imx-nand.o
diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index 997522e..3898d66 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -1,6 +1,7 @@
 #ifndef __MACH_XLOAD_H
 #define __MACH_XLOAD_H
 
+int imx53_nand_start_image(void);
 int imx6_spi_load_image(int instance, unsigned int flash_offset, void *buf, int len);
 int imx6_spi_start_image(int instance);
 int imx6_esdhc_load_image(int instance, void *buf, int len);
diff --git a/arch/arm/mach-imx/xload-imx-nand.c b/arch/arm/mach-imx/xload-imx-nand.c
new file mode 100644
index 0000000..22e41fa
--- /dev/null
+++ b/arch/arm/mach-imx/xload-imx-nand.c
@@ -0,0 +1,308 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#define pr_fmt(fmt)	"imx-nand-boot: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <linux/mtd/nand.h>
+#include <mach/imx-nand.h>
+#include <mach/generic.h>
+#include <mach/imx53-regs.h>
+#include <mach/xload.h>
+
+struct imx_nand {
+	void __iomem *base;
+	void __iomem *main_area0;
+	void __iomem *regs_ip;
+	void __iomem *regs_axi;
+	void *spare0;
+	int pagesize;
+	int v1;
+	int pages_per_block;
+};
+
+static void wait_op_done(struct imx_nand *host)
+{
+	u32 r;
+
+	while (1) {
+		r = readl(NFC_V3_IPC);
+		if (r & NFC_V3_IPC_INT)
+			break;
+	};
+
+	r &= ~NFC_V3_IPC_INT;
+
+	writel(r, NFC_V3_IPC);
+}
+
+/*
+ * This function issues the specified command to the NAND device and
+ * waits for completion.
+ *
+ * @param       cmd     command for NAND Flash
+ */
+static void imx_nandboot_send_cmd(struct imx_nand *host, u16 cmd)
+{
+	/* fill command */
+	writel(cmd, NFC_V3_FLASH_CMD);
+
+	/* send out command */
+	writel(NFC_CMD, NFC_V3_LAUNCH);
+
+	/* Wait for operation to complete */
+	wait_op_done(host);
+}
+
+/*
+ * This function sends an address (or partial address) to the
+ * NAND device.  The address is used to select the source/destination for
+ * a NAND command.
+ *
+ * @param       addr    address to be written to NFC.
+ * @param       islast  True if this is the last address cycle for command
+ */
+static void imx_nandboot_send_addr(struct imx_nand *host, u16 addr)
+{
+	/* fill address */
+	writel(addr, NFC_V3_FLASH_ADDR0);
+
+	/* send out address */
+	writel(NFC_ADDR, NFC_V3_LAUNCH);
+
+	wait_op_done(host);
+}
+
+static void imx_nandboot_nfc_addr(struct imx_nand *host, int page)
+{
+	imx_nandboot_send_addr(host, 0);
+
+	if (host->pagesize == 2048)
+		imx_nandboot_send_addr(host, 0);
+
+	imx_nandboot_send_addr(host, page & 0xff);
+	imx_nandboot_send_addr(host, (page >> 8) & 0xff);
+	imx_nandboot_send_addr(host, (page >> 16) & 0xff);
+
+	if (host->pagesize == 2048)
+		imx_nandboot_send_cmd(host, NAND_CMD_READSTART);
+}
+
+static void imx_nandboot_send_page(struct imx_nand *host, unsigned int ops)
+{
+	uint32_t tmp;
+
+	tmp = readl(NFC_V3_CONFIG1);
+	tmp &= ~(7 << 4);
+	writel(tmp, NFC_V3_CONFIG1);
+
+	/* transfer data from NFC ram to nand */
+	writel(ops, NFC_V3_LAUNCH);
+
+	wait_op_done(host);
+}
+
+static void __memcpy32(void *trg, const void *src, int size)
+{
+	int i;
+	unsigned int *t = trg;
+	unsigned const int *s = src;
+
+	for (i = 0; i < (size >> 2); i++)
+		*t++ = *s++;
+}
+
+static void imx_nandboot_get_page(struct imx_nand *host, unsigned int page)
+{
+	imx_nandboot_send_cmd(host, NAND_CMD_READ0);
+	imx_nandboot_nfc_addr(host, page);
+	imx_nandboot_send_page(host, NFC_OUTPUT);
+}
+
+static int imx_nandboot_read_page(struct imx_nand *host, unsigned int page,
+				   void *buf)
+{
+	int nsubpages;
+	u32 eccstat, err;
+
+	imx_nandboot_get_page(host, page);
+
+	__memcpy32(buf, host->main_area0, host->pagesize);
+
+	eccstat = readl(NFC_V3_ECC_STATUS_RESULT);
+	nsubpages = host->pagesize / 512;
+
+	do {
+		err = eccstat & 0xf;
+		if (err == 0xf)
+			return -EBADMSG;
+		eccstat >>= 4;
+	} while (--nsubpages);
+
+	return 0;
+}
+
+static int dbbt_block_is_bad(void *_dbbt, int block)
+{
+	int i;
+	u32 *dbbt = _dbbt;
+	int num_bad_blocks;
+
+	if (!_dbbt)
+		return false;
+
+	dbbt++; /* reserved */
+
+	num_bad_blocks = *dbbt++;
+
+	for (i = 0; i < num_bad_blocks; i++) {
+		if (*dbbt == block)
+			return true;
+		dbbt++;
+	}
+
+	return false;
+}
+
+static int read_firmware(struct imx_nand *host, void *dbbt, int page, void *buf,
+			 int npages)
+{
+	int ret;
+
+	if (dbbt_block_is_bad(dbbt, page / host->pages_per_block))
+		page = ALIGN(page, host->pages_per_block);
+
+	while (npages) {
+		if (!(page % host->pages_per_block)) {
+			if (dbbt_block_is_bad(NULL, page / host->pages_per_block)) {
+				page += host->pages_per_block;
+				continue;
+			}
+		}
+
+		ret = imx_nandboot_read_page(host, page, buf);
+		if (ret)
+			return ret;
+
+		buf += host->pagesize;
+		page++;
+		npages--;
+	}
+
+	return 0;
+}
+
+int imx53_nand_start_image(void)
+{
+	struct imx_nand host;
+	void *buf = IOMEM(MX53_CSD0_BASE_ADDR);
+	void *dbbt = NULL;
+	int page_firmware1, page_firmware2, page_dbbt, image_size, npages;
+	void (*firmware)(void);
+	int ret;
+	u32 cfg1 = readl(IOMEM(MX53_SRC_BASE_ADDR) + 0x4);
+
+	host.base = IOMEM(MX53_NFC_AXI_BASE_ADDR);
+	host.main_area0 = host.base;
+	host.regs_ip = IOMEM(MX53_NFC_BASE_ADDR);
+	host.regs_axi = host.base + 0x1e00;
+	host.spare0 = host.base + 0x1000;
+
+	switch ((cfg1 >> 14) & 0x3) {
+	case 0:
+		host.pagesize = 512;
+		break;
+	case 1:
+		host.pagesize = 2048;
+		break;
+	case 2:
+	case 3:
+		host.pagesize = 4096;
+		break;
+	}
+
+	switch ((cfg1 >> 17) & 0x3) {
+	case 0:
+		host.pages_per_block = 32;
+		break;
+	case 1:
+		host.pages_per_block = 64;
+		break;
+	case 2:
+		host.pages_per_block = 128;
+		break;
+	case 3:
+		host.pages_per_block = 256;
+		break;
+	}
+
+	pr_debug("Using pagesize %d, %d pages per block\n",
+		 host.pagesize, host.pages_per_block);
+
+	ret = imx_nandboot_read_page(&host, 0, buf);
+	if (ret)
+		return ret;
+
+	if (*(u32 *)(buf + 0x4) != 0x20424346) {
+		pr_err("No FCB Found on flash\n");
+		return -EINVAL;
+	}
+
+	page_firmware1 = *(u32 *)(buf + 0x68);
+	page_firmware2 = *(u32 *)(buf + 0x6c);
+	page_dbbt = *(u32 *)(buf + 0x78);
+
+	image_size = ALIGN(imx_image_size(), host.pagesize);
+	npages = image_size / host.pagesize;
+
+	if (page_dbbt) {
+		ret = imx_nandboot_read_page(&host, page_dbbt, buf);
+		if (!ret && *(u32 *)(buf + 0x4) == 0x44424254) {
+			ret = imx_nandboot_read_page(&host, page_dbbt + 4, buf);
+			if (!ret) {
+				pr_debug("Using DBBT from page %d\n", page_dbbt + 4);
+				dbbt = buf;
+				buf += host.pagesize;
+			}
+		}
+	}
+
+	pr_debug("Reading firmware from page %d, size %d\n",
+		 page_firmware1, image_size);
+
+	ret = read_firmware(&host, dbbt, page_firmware1, buf, npages);
+	if (ret) {
+		pr_debug("Reading primary firmware failed\n");
+		if (page_firmware2) {
+			pr_debug("Reading firmware from page %d, size %d\n",
+				 page_firmware2, image_size);
+			ret = read_firmware(&host, dbbt, page_firmware2, buf, npages);
+			if (ret) {
+				pr_err("Could not read firmware\n");
+				return -EINVAL;
+			}
+		} else {
+			pr_err("Reading primary firmware failed, no secondary firmware found\n");
+			return -EINVAL;
+		}
+	}
+
+	pr_debug("Firmware read, starting it\n");
+
+	firmware = buf;
+
+	firmware();
+
+	return 0;
+}
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
