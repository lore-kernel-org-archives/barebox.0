Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnV1-0004nH-7B
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 15:20:34 +0000
Received: by mail-pg1-x544.google.com with SMTP id k13so18508131pgh.3
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2019 07:20:30 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  2 Dec 2019 07:19:54 -0800
Message-Id: <20191202151954.16032-13-andrew.smirnov@gmail.com>
In-Reply-To: <20191202151954.16032-1-andrew.smirnov@gmail.com>
References: <20191202151954.16032-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 12/12] mci: imx-esdhc: Share code for esdhc_send_cmd()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Versions of esdhc_send_cmd() in imx-esdhc.c and imx-esdhc-pbl.c
implement almost the same algorithm. To avoid code repetition, move
that code to imx-esdhc-common.c and adjust all of the users
accordingly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/imx-esdhc-common.c | 131 ++++++++++++++++++++++++++++++++-
 drivers/mci/imx-esdhc-pbl.c    |  87 +---------------------
 drivers/mci/imx-esdhc.c        | 102 +------------------------
 drivers/mci/imx-esdhc.h        |  13 +---
 4 files changed, 131 insertions(+), 202 deletions(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index 5e1f28401..d0bef9470 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -8,6 +8,14 @@
 #include "sdhci.h"
 #include "imx-esdhc.h"
 
+#define PRSSTAT_DAT0  0x01000000
+
+struct fsl_esdhc_dma_transfer {
+	dma_addr_t dma;
+	unsigned int size;
+	enum dma_data_direction dir;
+};
+
 static u32 esdhc_op_read32_le(struct sdhci *sdhci, int reg)
 {
 	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
@@ -51,9 +59,8 @@ static bool esdhc_use_pio_mode(void)
 {
 	return IN_PBL || IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO);
 }
-
-int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
-		     struct fsl_esdhc_dma_transfer *tr)
+static int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
+			    struct fsl_esdhc_dma_transfer *tr)
 {
 	u32 wml_value;
 	void *ptr;
@@ -97,7 +104,7 @@ int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
 	return 0;
 }
 
-int esdhc_do_data(struct fsl_esdhc_host *host, struct mci_data *data,
+static int esdhc_do_data(struct fsl_esdhc_host *host, struct mci_data *data,
 		  struct fsl_esdhc_dma_transfer *tr)
 {
 	u32 irqstat;
@@ -140,6 +147,17 @@ static bool esdhc_match32(struct fsl_esdhc_host *host, unsigned int off,
  */
 #define is_timeout(s, t)	((s)++ > ((t) / 1024))
 
+static void __udelay(int us)
+{
+	volatile int i;
+
+	for (i = 0; i < us * 4; i++);
+}
+
+#define udelay(n)	__udelay(n)
+#undef  dev_err
+#define dev_err(d, ...)	pr_err(__VA_ARGS__)
+
 #endif
 
 int esdhc_poll(struct fsl_esdhc_host *host, unsigned int off,
@@ -150,3 +168,108 @@ int esdhc_poll(struct fsl_esdhc_host *host, unsigned int off,
 			       esdhc_match32(host, off, mask, val));
 }
 
+int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
+		     struct mci_data *data)
+{
+	u32	xfertyp, mixctrl, command;
+	u32	irqstat;
+	struct fsl_esdhc_dma_transfer tr = { 0 };
+	int ret;
+
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
+
+	/* Wait at least 8 SD clock cycles before the next command */
+	udelay(1);
+
+	/* Set up for a data transfer if we have one */
+	if (data) {
+		ret = esdhc_setup_data(host, data, &tr);
+		if (ret)
+			return ret;
+	}
+
+	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data,
+				!esdhc_use_pio_mode(), &command, &xfertyp);
+
+	if ((host->socdata->flags & ESDHC_FLAG_MULTIBLK_NO_INT) &&
+	    (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION))
+		command |= SDHCI_COMMAND_CMDTYP_ABORT;
+
+	/* Send the command */
+	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
+
+	if (esdhc_is_usdhc(host)) {
+		/* write lower-half of xfertyp to mixctrl */
+		mixctrl = xfertyp;
+		/* Keep the bits 22-25 of the register as is */
+		mixctrl |= (sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL) & (0xF << 22));
+		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
+	}
+
+	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND,
+		      command << 16 | xfertyp);
+
+	/* Wait for the command to complete */
+	ret = esdhc_poll(host, SDHCI_INT_STATUS,
+			 SDHCI_INT_CMD_COMPLETE, SDHCI_INT_CMD_COMPLETE,
+			 100 * MSECOND);
+	if (ret) {
+		dev_err(host->dev, "timeout 1\n");
+		return -ETIMEDOUT;
+	}
+
+	irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, irqstat);
+
+	if (irqstat & CMD_ERR)
+		return -EIO;
+
+	if (irqstat & SDHCI_INT_TIMEOUT)
+		return -ETIMEDOUT;
+
+	/* Workaround for ESDHC errata ENGcm03648 / ENGcm12360 */
+	if (!data && (cmd->resp_type & MMC_RSP_BUSY)) {
+		/*
+		 * Poll on DATA0 line for cmd with busy signal for
+		 * timout / 10 usec since DLA polling can be insecure.
+		 */
+		ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
+				 PRSSTAT_DAT0, PRSSTAT_DAT0,
+				 2500 * MSECOND);
+		if (ret) {
+			dev_err(host->dev, "timeout PRSSTAT_DAT0\n");
+			return -ETIMEDOUT;
+		}
+	}
+
+	sdhci_read_response(&host->sdhci, cmd);
+
+	/* Wait until all of the blocks are transferred */
+	if (data) {
+		ret = esdhc_do_data(host, data, &tr);
+		if (ret)
+			return ret;
+	}
+
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
+
+	/* Wait for the bus to be idle */
+	ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
+			 SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA, 0,
+			 SECOND);
+	if (ret) {
+		dev_err(host->dev, "timeout 2\n");
+		return -ETIMEDOUT;
+	}
+
+	ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
+			 SDHCI_DATA_LINE_ACTIVE, 0,
+			 100 * MSECOND);
+	if (ret) {
+		dev_err(host->dev, "timeout 3\n");
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index d6c178651..c0d27fb7e 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -30,92 +30,7 @@
 #define SECTOR_SIZE 512
 #define SECTOR_WML  (SECTOR_SIZE / sizeof(u32))
 
-static void __udelay(int us)
-{
-	volatile int i;
-
-	for (i = 0; i < us * 4; i++);
-}
-
-static int
-esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd, struct mci_data *data)
-{
-	struct fsl_esdhc_dma_transfer tr = { 0 };
-	u32	xfertyp, mixctrl, command;
-	u32	irqstat;
-	int ret;
-
-	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
-
-	/* Wait at least 8 SD clock cycles before the next command */
-	__udelay(1);
-
-	if (data) {
-		/* Set up for a data transfer if we have one */
-		ret = esdhc_setup_data(host, data, &tr);
-		if (ret)
-			return ret;
-	}
-
-	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data,
-				false, &command, &xfertyp);
-
-	if ((host->socdata->flags & ESDHC_FLAG_MULTIBLK_NO_INT) &&
-	    (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION))
-		command |= SDHCI_COMMAND_CMDTYP_ABORT;
-
-	/* Send the command */
-	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
-
-	if (esdhc_is_usdhc(host)) {
-		/* write lower-half of xfertyp to mixctrl */
-		mixctrl = xfertyp & 0xFFFF;
-		/* Keep the bits 22-25 of the register as is */
-		mixctrl |= (sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL) & (0xF << 22));
-		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
-	}
-
-
-	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND,
-		      command << 16 | xfertyp);
-
-	/* Wait for the command to complete */
-	ret = esdhc_poll(host, SDHCI_INT_STATUS,
-			 SDHCI_INT_CMD_COMPLETE, SDHCI_INT_CMD_COMPLETE,
-			 100 * MSECOND);
-	if (ret)
-		return ret;
-
-	irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, irqstat);
-
-	if (irqstat & CMD_ERR)
-		return -EIO;
-
-	if (irqstat & SDHCI_INT_TIMEOUT)
-		return -ETIMEDOUT;
-
-	/* Copy the response to the response buffer */
-	cmd->response[0] = sdhci_read32(&host->sdhci, SDHCI_RESPONSE_0);
-
-	/* Wait until all of the blocks are transferred */
-	if (data) {
-		ret = esdhc_do_data(host, data, &tr);
-		if (ret)
-			return ret;
-	}
-
-	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
-
-	/* Wait for the bus to be idle */
-	ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
-			 SDHCI_CMD_INHIBIT_CMD  |
-			 SDHCI_CMD_INHIBIT_DATA |
-			 SDHCI_DATA_LINE_ACTIVE, 0,
-			 100 * MSECOND);
-
-	return 0;
-}
+#define esdhc_send_cmd	__esdhc_send_cmd
 
 static int esdhc_read_blocks(struct fsl_esdhc_host *host, void *dst, size_t len)
 {
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 7e24b2b02..4816608a2 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -40,7 +40,6 @@
 #include "imx-esdhc.h"
 
 
-#define PRSSTAT_DAT0  0x01000000
 #define PRSSTAT_SDSTB 0x00000008
 
 
@@ -53,108 +52,9 @@
 static int
 esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 {
-	u32	xfertyp, mixctrl, command;
-	u32	irqstat;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	struct fsl_esdhc_dma_transfer tr = { 0 };
-	int ret;
-
-	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
-
-	/* Wait at least 8 SD clock cycles before the next command */
-	udelay(1);
-
-	/* Set up for a data transfer if we have one */
-	if (data) {
-		ret = esdhc_setup_data(host, data, &tr);
-		if (ret)
-			return ret;
-	}
-
-	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data,
-				!IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO), &command,
-				&xfertyp);
-
-	if ((host->socdata->flags & ESDHC_FLAG_MULTIBLK_NO_INT) &&
-	    (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION))
-		command |= SDHCI_COMMAND_CMDTYP_ABORT;
-
-	/* Send the command */
-	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
-
-	if (esdhc_is_usdhc(host)) {
-		/* write lower-half of xfertyp to mixctrl */
-		mixctrl = xfertyp;
-		/* Keep the bits 22-25 of the register as is */
-		mixctrl |= (sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL) & (0xF << 22));
-		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
-	}
-
-	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND,
-		      command << 16 | xfertyp);
-
-	/* Wait for the command to complete */
-	ret = esdhc_poll(host, SDHCI_INT_STATUS,
-			 SDHCI_INT_CMD_COMPLETE, SDHCI_INT_CMD_COMPLETE,
-			 100 * MSECOND);
-	if (ret) {
-		dev_dbg(host->dev, "timeout 1\n");
-		return -ETIMEDOUT;
-	}
-
-	irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, irqstat);
 
-	if (irqstat & CMD_ERR)
-		return -EIO;
-
-	if (irqstat & SDHCI_INT_TIMEOUT)
-		return -ETIMEDOUT;
-
-	/* Workaround for ESDHC errata ENGcm03648 / ENGcm12360 */
-	if (!data && (cmd->resp_type & MMC_RSP_BUSY)) {
-		/*
-		 * Poll on DATA0 line for cmd with busy signal for
-		 * timout / 10 usec since DLA polling can be insecure.
-		 */
-		ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
-				 PRSSTAT_DAT0, PRSSTAT_DAT0,
-				 2500 * MSECOND);
-		if (ret) {
-			dev_err(host->dev, "timeout PRSSTAT_DAT0\n");
-			return -ETIMEDOUT;
-		}
-	}
-
-	sdhci_read_response(&host->sdhci, cmd);
-
-	/* Wait until all of the blocks are transferred */
-	if (data) {
-		ret = esdhc_do_data(host, data, &tr);
-		if (ret)
-			return ret;
-	}
-
-	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
-
-	/* Wait for the bus to be idle */
-	ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
-			 SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA, 0,
-			 SECOND);
-	if (ret) {
-		dev_err(host->dev, "timeout 2\n");
-		return -ETIMEDOUT;
-	}
-
-	ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
-			 SDHCI_DATA_LINE_ACTIVE, 0,
-			 100 * MSECOND);
-	if (ret) {
-		dev_err(host->dev, "timeout 3\n");
-		return -ETIMEDOUT;
-	}
-
-	return 0;
+	return  __esdhc_send_cmd(host, cmd, data);
 }
 
 static void set_sysctl(struct mci_host *mci, u32 clock)
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index ac1208789..4bf890edf 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -129,13 +129,6 @@ struct fsl_esdhc_host {
 	struct sdhci	sdhci;
 };
 
-struct fsl_esdhc_dma_transfer {
-	dma_addr_t dma;
-	unsigned int size;
-	enum dma_data_direction dir;
-};
-
-
 static inline int esdhc_is_usdhc(struct fsl_esdhc_host *data)
 {
 	return !!(data->socdata->flags & ESDHC_FLAG_USDHC);
@@ -173,12 +166,10 @@ esdhc_setbits32(struct fsl_esdhc_host *host, unsigned int reg,
 }
 
 void esdhc_populate_sdhci(struct fsl_esdhc_host *host);
-int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
-		     struct fsl_esdhc_dma_transfer *tr);
-int esdhc_do_data(struct fsl_esdhc_host *host, struct mci_data *data,
-		  struct fsl_esdhc_dma_transfer *tr);
 int esdhc_poll(struct fsl_esdhc_host *host, unsigned int off,
 	       unsigned int mask, unsigned int val,
 	       uint64_t timeout);
+int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
+		     struct mci_data *data);
 
 #endif  /* __FSL_ESDHC_H__ */
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
