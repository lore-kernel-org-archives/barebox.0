Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1biO0m-0006B7-Ao
 for barebox@lists.infradead.org; Fri, 09 Sep 2016 15:46:43 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Fri,  9 Sep 2016 17:43:42 +0200
Message-Id: <1473435824-7830-4-git-send-email-akurz@blala.de>
In-Reply-To: <1473435824-7830-1-git-send-email-akurz@blala.de>
References: <1473435824-7830-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 4/6] ARM: i.MX drivers: enable i.MX50 where already supported
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The i.MX50 SOC includes one ESDHCv3, three ESDHCv2, one cspi and
two ecspi instances which are supported by existing drivers.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 drivers/mci/imx-esdhc.c        | 4 +++-
 drivers/spi/Kconfig            | 4 ++--
 drivers/usb/imx/imx-usb-misc.c | 6 ++++++
 3 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 66786ff..262a904 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -85,7 +85,7 @@ static u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
 		xfertyp |= COMMAND_RSPTYP_48_BUSY;
 	else if (cmd->resp_type & MMC_RSP_PRESENT)
 		xfertyp |= COMMAND_RSPTYP_48;
-	if ((cpu_is_mx51() || cpu_is_mx53()) &&
+	if ((cpu_is_mx50() || cpu_is_mx51() || cpu_is_mx53()) &&
 			cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
 		xfertyp |= SDHCI_CMD_ABORTCMD;
 
@@ -638,6 +638,8 @@ static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
 	{
 		.compatible = "fsl,imx25-esdhc",
 	}, {
+		.compatible = "fsl,imx50-esdhc",
+	}, {
 		.compatible = "fsl,imx51-esdhc",
 	}, {
 		.compatible = "fsl,imx53-esdhc",
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 9a71b3b..43ba8f4 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -33,12 +33,12 @@ config DRIVER_SPI_IMX_0_0
 
 config DRIVER_SPI_IMX_0_7
 	bool
-	depends on ARCH_IMX25 || ARCH_IMX31 || ARCH_IMX35 || ARCH_IMX53
+	depends on ARCH_IMX25 || ARCH_IMX31 || ARCH_IMX35 || ARCH_IMX50 || ARCH_IMX53
 	default y
 
 config DRIVER_SPI_IMX_2_3
 	bool
-	depends on ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6
+	depends on ARCH_IMX50 || ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6
 	default y
 
 config DRIVER_SPI_MXS
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index d938a2c..7c18ca2 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -447,6 +447,12 @@ static struct platform_device_id imx_usbmisc_ids[] = {
 		.driver_data = (unsigned long)&mx35_data,
 	},
 #endif
+#ifdef CONFIG_ARCH_IMX50
+	{
+		.name = "imx50-usb-misc",
+		.driver_data = (unsigned long)&mx5_data,
+	},
+#endif
 #ifdef CONFIG_ARCH_IMX51
 	{
 		.name = "imx51-usb-misc",
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
