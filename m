Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x243.google.com ([2607:f8b0:400e:c03::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1br4Qv-0008Gl-GX
 for barebox@lists.infradead.org; Mon, 03 Oct 2016 14:41:40 +0000
Received: by mail-pa0-x243.google.com with SMTP id r9so7947348paz.1
 for <barebox@lists.infradead.org>; Mon, 03 Oct 2016 07:41:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Oct 2016 07:40:52 -0700
Message-Id: <1475505657-898-16-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/20] i.MX: esdhc: Do not rely on CPU type for quirks
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

CPU type is not a reliable indicator of the underlying type of IP core
used, since there's no 1:1 mapping between the two. As example of one
such violation consider Vybrid SoC which contains IP block from i.MX53.

Instead port feature flags from corresponding Linux kernel driver and
use the ones that are relevant.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/imx-esdhc.c | 121 +++++++++++++++++++++++++++++++++++++++---------
 1 file changed, 100 insertions(+), 21 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 262a904..764a106 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -35,28 +35,81 @@
 #include <mach/generic.h>
 #include <mach/esdhc.h>
 #include <gpio.h>
+#include <of_device.h>
 
 #include "sdhci.h"
 #include "imx-esdhc.h"
 
+/*
+ * The CMDTYPE of the CMD register (offset 0xE) should be set to
+ * "11" when the STOP CMD12 is issued on imx53 to abort one
+ * open ended multi-blk IO. Otherwise the TC INT wouldn't
+ * be generated.
+ * In exact block transfer, the controller doesn't complete the
+ * operations automatically as required at the end of the
+ * transfer and remains on hold if the abort command is not sent.
+ * As a result, the TC flag is not asserted and SW  received timeout
+ * exeception. Bit1 of Vendor Spec registor is used to fix it.
+ */
+#define ESDHC_FLAG_MULTIBLK_NO_INT	BIT(1)
+/*
+ * The flag enables the workaround for ESDHC errata ENGcm07207 which
+ * affects i.MX25 and i.MX35.
+ */
+#define ESDHC_FLAG_ENGCM07207		BIT(2)
+/*
+ * The flag tells that the ESDHC controller is an USDHC block that is
+ * integrated on the i.MX6 series.
+ */
+#define ESDHC_FLAG_USDHC		BIT(3)
+/* The IP supports manual tuning process */
+#define ESDHC_FLAG_MAN_TUNING		BIT(4)
+/* The IP supports standard tuning process */
+#define ESDHC_FLAG_STD_TUNING		BIT(5)
+/* The IP has SDHCI_CAPABILITIES_1 register */
+#define ESDHC_FLAG_HAVE_CAP1		BIT(6)
+/*
+ * The IP has errata ERR004536
+ * uSDHC: ADMA Length Mismatch Error occurs if the AHB read access is slow,
+ * when reading data from the card
+ */
+#define ESDHC_FLAG_ERR004536		BIT(7)
+/* The IP supports HS200 mode */
+#define ESDHC_FLAG_HS200		BIT(8)
+/* The IP supports HS400 mode */
+#define ESDHC_FLAG_HS400		BIT(9)
+
+
 #define IMX_SDHCI_WML		0x44
 #define IMX_SDHCI_MIXCTRL	0x48
 #define IMX_SDHCI_DLL_CTRL	0x60
 #define IMX_SDHCI_MIX_CTRL_FBCLK_SEL	(BIT(25))
 
+struct esdhc_soc_data {
+	u32 flags;
+};
+
 struct fsl_esdhc_host {
 	struct mci_host		mci;
 	void __iomem		*regs;
 	struct device_d		*dev;
 	struct clk		*clk;
+	const struct esdhc_soc_data *socdata;
 };
 
 #define to_fsl_esdhc(mci)	container_of(mci, struct fsl_esdhc_host, mci)
 
 #define  SDHCI_CMD_ABORTCMD (0xC0 << 16)
 
+static inline int esdhc_is_usdhc(struct fsl_esdhc_host *data)
+{
+	return !!(data->socdata->flags & ESDHC_FLAG_USDHC);
+}
+
+
 /* Return the XFERTYP flags for a given command and data packet */
-static u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
+static u32 esdhc_xfertyp(struct fsl_esdhc_host *host,
+			 struct mci_cmd *cmd, struct mci_data *data)
 {
 	u32 xfertyp = 0;
 
@@ -85,8 +138,8 @@ static u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
 		xfertyp |= COMMAND_RSPTYP_48_BUSY;
 	else if (cmd->resp_type & MMC_RSP_PRESENT)
 		xfertyp |= COMMAND_RSPTYP_48;
-	if ((cpu_is_mx50() || cpu_is_mx51() || cpu_is_mx53()) &&
-			cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
+	if ((host->socdata->flags & ESDHC_FLAG_MULTIBLK_NO_INT) &&
+	    (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION))
 		xfertyp |= SDHCI_CMD_ABORTCMD;
 
 	return COMMAND_CMD(cmd->cmdidx) | xfertyp;
@@ -273,12 +326,12 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	}
 
 	/* Figure out the transfer arguments */
-	xfertyp = esdhc_xfertyp(cmd, data);
+	xfertyp = esdhc_xfertyp(host, cmd, data);
 
 	/* Send the command */
 	esdhc_write32(regs + SDHCI_ARGUMENT, cmd->cmdarg);
 
-	if (cpu_is_mx6()) {
+	if (esdhc_is_usdhc(host)) {
 		/* write lower-half of xfertyp to mixctrl */
 		mixctrl = xfertyp & 0xFFFF;
 		/* Keep the bits 22-25 of the register as is */
@@ -525,7 +578,7 @@ static int esdhc_reset(struct fsl_esdhc_host *host)
 			SYSCTL_RSTA);
 
 	/* extra register reset for i.MX6 Solo/DualLite */
-	if (cpu_is_mx6()) {
+	if (esdhc_is_usdhc(host)) {
 		/* reset bit FBCLK_SEL */
 		val = esdhc_read32(regs + IMX_SDHCI_MIXCTRL);
 		val &= ~IMX_SDHCI_MIX_CTRL_FBCLK_SEL;
@@ -570,6 +623,10 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	host = xzalloc(sizeof(*host));
 	mci = &host->mci;
 
+	host->socdata = of_device_get_match_data(dev);
+	if (!host->socdata)
+		return -EINVAL;
+
 	host->clk = clk_get(dev, NULL);
 	if (IS_ERR(host->clk))
 		return PTR_ERR(host->clk);
@@ -634,22 +691,44 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	return mci_register(&host->mci);
 }
 
+static struct esdhc_soc_data esdhc_imx25_data = {
+	.flags = ESDHC_FLAG_ENGCM07207,
+};
+
+static struct esdhc_soc_data esdhc_imx50_data = {
+	.flags = ESDHC_FLAG_MULTIBLK_NO_INT,
+	/* .flags = 0, */
+};
+
+static struct esdhc_soc_data esdhc_imx51_data = {
+	.flags = ESDHC_FLAG_MULTIBLK_NO_INT,
+	/* .flags = 0, */
+};
+
+static struct esdhc_soc_data esdhc_imx53_data = {
+	.flags = ESDHC_FLAG_MULTIBLK_NO_INT,
+};
+
+static struct esdhc_soc_data usdhc_imx6q_data = {
+	.flags = ESDHC_FLAG_USDHC | ESDHC_FLAG_MAN_TUNING,
+};
+
+static struct esdhc_soc_data usdhc_imx6sl_data = {
+	.flags = ESDHC_FLAG_USDHC | ESDHC_FLAG_STD_TUNING
+	       | ESDHC_FLAG_HAVE_CAP1 | ESDHC_FLAG_ERR004536
+	       | ESDHC_FLAG_HS200,
+};
+
+
 static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
-	{
-		.compatible = "fsl,imx25-esdhc",
-	}, {
-		.compatible = "fsl,imx50-esdhc",
-	}, {
-		.compatible = "fsl,imx51-esdhc",
-	}, {
-		.compatible = "fsl,imx53-esdhc",
-	}, {
-		.compatible = "fsl,imx6q-usdhc",
-	}, {
-		.compatible = "fsl,imx6sl-usdhc",
-	}, {
-		/* sentinel */
-	}
+
+	{ .compatible = "fsl,imx25-esdhc",  .data = &esdhc_imx25_data  },
+	{ .compatible = "fsl,imx50-esdhc",  .data = &esdhc_imx50_data  },
+	{ .compatible = "fsl,imx51-esdhc",  .data = &esdhc_imx51_data  },
+	{ .compatible = "fsl,imx53-esdhc",  .data = &esdhc_imx53_data  },
+	{ .compatible = "fsl,imx6q-usdhc",  .data = &usdhc_imx6q_data  },
+	{ .compatible = "fsl,imx6sl-usdhc", .data = &usdhc_imx6sl_data },
+	{ /* sentinel */ }
 };
 
 static struct driver_d fsl_esdhc_driver = {
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
