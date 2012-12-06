Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tgbaz-00081R-3Z
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:34:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Dec 2012 14:34:29 +0100
Message-Id: <1354800870-28385-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
References: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] ata: Add i.MX AHCI driver
To: barebox@lists.infradead.org

This adds the glue code for the i.MX SATA controller. This controller
needs some i.MX specific setup and some SoC specific setting outside
the controller itself. The code for setting up the correct clock source
for the SATA phy has been taken from U-Boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/Kconfig    |    4 ++
 drivers/ata/Makefile   |    1 +
 drivers/ata/sata-imx.c |  155 ++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 160 insertions(+)
 create mode 100644 drivers/ata/sata-imx.c

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index 3eca390..b10c5c7 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -38,6 +38,10 @@ config DISK_AHCI
 	select DISK_ATA
 	select DISK_DRIVE
 
+config DISK_AHCI_IMX
+	depends on DISK_AHCI
+	bool "i.MX AHCI support"
+
 comment "interface types"
 
 config DISK_INTF_PLATFORM_IDE
diff --git a/drivers/ata/Makefile b/drivers/ata/Makefile
index 7fbef32..c444c4d 100644
--- a/drivers/ata/Makefile
+++ b/drivers/ata/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_DISK_BIOS) += disk_bios_drive.o
 obj-$(CONFIG_DISK_IDE_SFF) += ide-sff.o
 obj-$(CONFIG_DISK_ATA) += disk_ata_drive.o
 obj-$(CONFIG_DISK_AHCI) += ahci.o
+obj-$(CONFIG_DISK_AHCI_IMX) += sata-imx.o
 
 # interface types
 
diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
new file mode 100644
index 0000000..fc57f5f
--- /dev/null
+++ b/drivers/ata/sata-imx.c
@@ -0,0 +1,155 @@
+#include <common.h>
+#include <ata_drive.h>
+#include <io.h>
+#include <clock.h>
+#include <disks.h>
+#include <driver.h>
+#include <init.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <malloc.h>
+#include <mach/imx53-regs.h>
+#include <mach/imx6-regs.h>
+#include <mfd/imx6q-iomuxc-gpr.h>
+#include "ahci.h"
+
+#define HOST_TIMER1MS 0xe0 /* Timer 1-ms */
+
+struct imx_ahci {
+	struct ahci_device ahci;
+	struct clk *clk;
+};
+
+struct imx_sata_data {
+	int (*init)(struct imx_ahci *imx_ahci);
+};
+
+static int imx6_sata_init(struct imx_ahci *imx_ahci)
+{
+	u32 val;
+	void __iomem *base = (void *)MX6_IOMUXC_BASE_ADDR;
+
+	val = 0x11 << IMX6Q_GPR13_SATA_PHY_2_OFF | IMX6Q_GPR13_SATA_PHY_4_9_16 |
+		IMX6Q_GPR13_SATA_SPEED_MASK | 0x3 << IMX6Q_GPR13_SATA_PHY_6_OFF |
+		IMX6Q_GPR13_SATA_PHY_7_SATA2I | IMX6Q_GPR13_SATA_PHY_8_3_0_DB;
+
+	writel(val, base + IOMUXC_GPR13);
+	writel(val | 2, base + IOMUXC_GPR13);
+
+	return 0;
+}
+
+static int imx53_sata_init(struct imx_ahci *imx_ahci)
+{
+	u32 val;
+	void __iomem *base = (void *)MX53_IIM_BASE_ADDR;
+
+	/*
+	 * The clock for the external interface can be set to use internal clock
+	 * if fuse bank 4, row 3, bit 2 is set.
+	 * This is an undocumented feature and it was confirmed by Freescale's support:
+	 * Fuses (but not pins) may be used to configure SATA clocks.
+	 * Particularly the i.MX53 Fuse_Map contains the next information
+	 * about configuring SATA clocks :  SATA_ALT_REF_CLK[1:0] (offset 0x180C)
+	 * '00' - 100MHz (External)
+	 * '01' - 50MHz (External)
+	 * '10' - 120MHz, internal (USB PHY)
+	 * '11' - Reserved
+	 */
+	val = readl(base + 0x180c);
+	val &= (0x3 << 1);
+	val |= (0x1 << 1);
+	writel(val, base + 0x180c);
+
+	return 0;
+}
+
+static int imx_sata_init_1ms(struct imx_ahci *imx_ahci)
+{
+	void __iomem *base = imx_ahci->ahci.mmio_base;
+	u32 val;
+
+	val = readl(base + HOST_PORTS_IMPL);
+	writel(val | 1, base + HOST_PORTS_IMPL);
+
+	val = clk_get_rate(imx_ahci->clk) / 1000;
+
+	writel(val, base + HOST_TIMER1MS);
+
+	return 0;
+}
+
+static int imx_sata_probe(struct device_d *dev)
+{
+	struct imx_ahci *imx_ahci;
+	struct imx_sata_data *data;
+	int ret;
+
+	ret = dev_get_drvdata(dev, (unsigned long *)&data);
+	if (ret)
+		return ret;
+
+	imx_ahci = xzalloc(sizeof(*imx_ahci));
+
+	imx_ahci->clk = clk_get(dev, NULL);
+	if (IS_ERR(imx_ahci->clk)) {
+		ret = PTR_ERR(imx_ahci->clk);
+		goto err_free;
+	}
+
+	imx_ahci->ahci.mmio_base = dev_request_mem_region(dev, 0);
+	if (!imx_ahci->ahci.mmio_base)
+		return -ENODEV;
+
+	data->init(imx_ahci);
+
+	imx_sata_init_1ms(imx_ahci);
+
+	imx_ahci->ahci.dev = dev;
+	dev->priv = &imx_ahci->ahci;
+
+	ret = ahci_add_host(&imx_ahci->ahci);
+	if (ret)
+		goto err_free;
+
+	return 0;
+
+err_free:
+	free(imx_ahci);
+
+	return ret;
+}
+
+struct imx_sata_data data_imx6 = {
+	.init = imx6_sata_init,
+};
+
+struct imx_sata_data data_imx53 = {
+	.init = imx53_sata_init,
+};
+
+static struct platform_device_id imx_sata_ids[] = {
+	{
+		.name = "imx6-sata",
+		.driver_data = (unsigned long)&data_imx6,
+	}, {
+		.name = "imx53-sata",
+		.driver_data = (unsigned long)&data_imx53,
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver_d imx_sata_driver = {
+	.name   = "imx-sata",
+	.probe  = imx_sata_probe,
+	.info	= ahci_info,
+	.id_table = imx_sata_ids,
+};
+
+static int ahci_init(void)
+{
+	return platform_driver_register(&imx_sata_driver);
+}
+
+device_initcall(ahci_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
