Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XLHoi-0007pT-UF
 for barebox@lists.infradead.org; Sat, 23 Aug 2014 20:21:41 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Sat, 23 Aug 2014 17:19:22 -0300
Message-Id: <1408825163-6135-2-git-send-email-ezequiel.garcia@free-electrons.com>
In-Reply-To: <1408825163-6135-1-git-send-email-ezequiel.garcia@free-electrons.com>
References: <1408825163-6135-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH 1/2] nand: Add Marvell Orion NAND driver
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

This commit adds NAND support for the controller present in Kirkwood SoCs.

Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 drivers/mtd/nand/Kconfig      |   7 ++
 drivers/mtd/nand/Makefile     |   1 +
 drivers/mtd/nand/nand_orion.c | 162 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 170 insertions(+)
 create mode 100644 drivers/mtd/nand/nand_orion.c

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 04fe3c8..ccf1f9c 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -90,6 +90,13 @@ config NAND_OMAP_GPMC
 	  Support for NAND flash using GPMC. GPMC is a common memory
 	  interface found on Texas Instrument's OMAP platforms
 
+config NAND_ORION
+	bool
+	prompt "Orion NAND driver"
+	depends on ARCH_MVEBU
+	help
+	  Support for the Orion NAND controller, present in Kirkwood SoCs.
+
 config NAND_ATMEL
 	bool
 	prompt "Atmel (AT91SAM9xxx) NAND driver"
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index a1414e1..02dacde 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -10,6 +10,7 @@ obj-$(CONFIG_MTD_NAND_NOMADIK)		+= nomadik_nand.o
 obj-$(CONFIG_NAND_IMX)			+= nand_imx.o
 obj-$(CONFIG_NAND_IMX_BBM)		+= nand_imx_bbm.o
 obj-$(CONFIG_NAND_OMAP_GPMC)		+= nand_omap_gpmc.o nand_omap_bch_decoder.o
+obj-$(CONFIG_NAND_ORION)		+= nand_orion.o
 obj-$(CONFIG_NAND_ATMEL)		+= atmel_nand.o
 obj-$(CONFIG_NAND_S3C24XX)		+= nand_s3c24xx.o
 pbl-$(CONFIG_NAND_S3C24XX)		+= nand_s3c24xx.o
diff --git a/drivers/mtd/nand/nand_orion.c b/drivers/mtd/nand/nand_orion.c
new file mode 100644
index 0000000..9bdd3b4
--- /dev/null
+++ b/drivers/mtd/nand/nand_orion.c
@@ -0,0 +1,162 @@
+/*
+ * (C) Copyright 2014, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
+ *
+ * Based on Orion NAND driver from Linux (drivers/mtd/nand/orion_nand.c):
+ * Author: Tzachi Perelstein <tzachi@marvell.com>
+ *
+ * This file is licensed under  the terms of the GNU General Public
+ * License version 2. This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <init.h>
+#include <io.h>
+#include <of_mtd.h>
+#include <errno.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
+#include <linux/clk.h>
+
+struct orion_nand {
+	struct mtd_info mtd;
+	struct nand_chip chip;
+
+	u8 ale;         /* address line number connected to ALE */
+	u8 cle;         /* address line number connected to CLE */
+};
+
+static void orion_nand_cmd_ctrl(struct mtd_info *mtd, int cmd, unsigned int ctrl)
+{
+	struct nand_chip *chip = mtd->priv;
+	struct orion_nand *priv = chip->priv;
+	u32 offs;
+
+	if (cmd == NAND_CMD_NONE)
+		return;
+
+	if (ctrl & NAND_CLE)
+		offs = (1 << priv->cle);
+	else if (ctrl & NAND_ALE)
+		offs = (1 << priv->ale);
+	else
+		return;
+
+	if (chip->options & NAND_BUSWIDTH_16)
+		offs <<= 1;
+
+	writeb(cmd, chip->IO_ADDR_W + offs);
+}
+
+static void orion_nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
+{
+	struct nand_chip *chip = mtd->priv;
+	void __iomem *io_base = chip->IO_ADDR_R;
+	uint64_t *buf64;
+	int i = 0;
+
+	while (len && (unsigned long)buf & 7) {
+		*buf++ = readb(io_base);
+		len--;
+	}
+	buf64 = (uint64_t *)buf;
+	while (i < len/8) {
+		/*
+		 * Since GCC has no proper constraint (PR 43518)
+		 * force x variable to r2/r3 registers as ldrd instruction
+		 * requires first register to be even.
+		 */
+		register uint64_t x asm ("r2");
+
+		asm volatile ("ldrd\t%0, [%1]" : "=&r" (x) : "r" (io_base));
+		buf64[i++] = x;
+	}
+	i *= 8;
+	while (i < len)
+		buf[i++] = readb(io_base);
+}
+
+static int orion_nand_probe(struct device_d *dev)
+{
+	struct device_node *dev_node = dev->device_node;
+	struct orion_nand *priv;
+	struct mtd_info *mtd;
+	struct nand_chip *chip;
+	struct clk *clk;
+	void __iomem *io_base;
+	int width, ret;
+	u32 val = 0;
+
+	priv = xzalloc(sizeof(struct orion_nand));
+	if (!priv) {
+		ret = -ENOMEM;
+		goto no_res;
+	}
+	mtd = &priv->mtd;
+	chip = &priv->chip;
+
+	io_base = dev_request_mem_region(dev, 0);
+
+	if (!of_property_read_u32(dev_node, "cle", &val))
+		priv->cle = (u8)val;
+	else
+		priv->cle = 0;
+
+	if (!of_property_read_u32(dev_node, "ale", &val))
+		priv->ale = (u8)val;
+	else
+		priv->ale = 1;
+
+	if (!of_property_read_u32(dev_node, "bank-width", &val))
+		width = (u8)val * 8;
+	else
+		width = 8;
+
+	if (!of_property_read_u32(dev_node, "chip-delay", &val))
+		chip->chip_delay = (u8)val;
+
+	mtd->parent = dev;
+	mtd->priv = chip;
+	chip->priv = priv;
+	chip->IO_ADDR_R = chip->IO_ADDR_W = io_base;
+	chip->cmd_ctrl = orion_nand_cmd_ctrl;
+	chip->read_buf = orion_nand_read_buf;
+	chip->ecc.mode = NAND_ECC_SOFT;
+
+	WARN(width > 16, "%d bit bus width out of range", width);
+	if (width == 16)
+		chip->options |= NAND_BUSWIDTH_16;
+
+	/* Not all platforms can gate the clock, so this is optional */
+	clk = clk_get(dev, 0);
+	if (!IS_ERR(clk))
+		clk_enable(clk);
+
+	if (nand_scan(mtd, 1)) {
+		ret = -ENXIO;
+		goto no_dev;
+	}
+
+	add_mtd_nand_device(mtd, "orion_nand");
+	return 0;
+no_dev:
+	if (!IS_ERR(clk))
+		clk_disable(clk);
+no_res:
+	free(priv);
+	return ret;
+}
+
+static __maybe_unused struct of_device_id orion_nand_compatible[] = {
+	{ .compatible = "marvell,orion-nand", },
+	{},
+};
+
+static struct driver_d orion_nand_driver = {
+	.name  = "orion_nand",
+	.probe = orion_nand_probe,
+	.of_compatible = DRV_OF_COMPAT(orion_nand_compatible),
+};
+device_platform_driver(orion_nand_driver);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
