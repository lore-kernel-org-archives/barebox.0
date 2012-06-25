Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjDFB-0002Ny-NY
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 17:38:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 19:38:19 +0200
Message-Id: <1340645910-15668-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
References: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/12] MMC i.MX esdhc: Fix sparse warnings
To: barebox@lists.infradead.org

mostly by moving the registers into the correct address space.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c |   20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index ae3c805..585cab9 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -70,7 +70,7 @@ struct fsl_esdhc {
 
 struct fsl_esdhc_host {
 	struct mci_host		mci;
-	struct fsl_esdhc	*regs;
+	struct fsl_esdhc __iomem	*regs;
 	u32			no_snoop;
 	unsigned long		cur_clock;
 	struct device_d		*dev;
@@ -81,7 +81,7 @@ struct fsl_esdhc_host {
 #define  SDHCI_CMD_ABORTCMD (0xC0 << 16)
 
 /* Return the XFERTYP flags for a given command and data packet */
-u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
+static u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
 {
 	u32 xfertyp = 0;
 
@@ -185,7 +185,7 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	struct fsl_esdhc *regs = host->regs;
+	struct fsl_esdhc __iomem *regs = host->regs;
 #ifndef CONFIG_MCI_IMX_ESDHC_PIO
 	u32 wml_value;
 
@@ -237,7 +237,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	u32	xfertyp, mixctrl;
 	u32	irqstat;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	struct fsl_esdhc *regs = host->regs;
+	struct fsl_esdhc __iomem *regs = host->regs;
 	int ret;
 
 	esdhc_write32(&regs->irqstat, -1);
@@ -353,11 +353,11 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	return 0;
 }
 
-void set_sysctl(struct mci_host *mci, u32 clock)
+static void set_sysctl(struct mci_host *mci, u32 clock)
 {
 	int div, pre_div;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	struct fsl_esdhc *regs = host->regs;
+	struct fsl_esdhc __iomem *regs = host->regs;
 	int sdhc_clk = imx_get_mmcclk();
 	u32 clk;
 
@@ -400,7 +400,7 @@ void set_sysctl(struct mci_host *mci, u32 clock)
 static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	struct fsl_esdhc *regs = host->regs;
+	struct fsl_esdhc __iomem *regs = host->regs;
 
 	/* Set the clock speed */
 	set_sysctl(mci, ios->clock);
@@ -425,7 +425,7 @@ static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 
 static int esdhc_card_detect(struct fsl_esdhc_host *host)
 {
-	struct fsl_esdhc *regs = host->regs;
+	struct fsl_esdhc __iomem *regs = host->regs;
 	struct esdhc_platform_data *pdata = host->dev->platform_data;
 	int ret;
 
@@ -451,7 +451,7 @@ static int esdhc_card_detect(struct fsl_esdhc_host *host)
 static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	struct fsl_esdhc *regs = host->regs;
+	struct fsl_esdhc __iomem *regs = host->regs;
 	int timeout = 1000;
 	int ret = 0;
 
@@ -493,7 +493,7 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 	return ret;
 }
 
-static int esdhc_reset(struct fsl_esdhc *regs)
+static int esdhc_reset(struct fsl_esdhc __iomem *regs)
 {
 	uint64_t start;
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
