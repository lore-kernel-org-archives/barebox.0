Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnUz-0004ls-Gf
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 15:20:31 +0000
Received: by mail-pg1-x544.google.com with SMTP id z124so2777342pgb.13
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2019 07:20:29 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  2 Dec 2019 07:19:53 -0800
Message-Id: <20191202151954.16032-12-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/12] mci: imx-esdhc: Introduce esdhc_poll()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Replace all of the explcitly coded timeout loops with a shared
subroutine that is used by both regular driver and PBL code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/imx-esdhc-common.c | 30 ++++++++++++++++++++++
 drivers/mci/imx-esdhc-pbl.c    | 24 ++++++++---------
 drivers/mci/imx-esdhc.c        | 47 +++++++++++++++++-----------------
 drivers/mci/imx-esdhc.h        |  4 ++-
 4 files changed, 66 insertions(+), 39 deletions(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index 55a337557..5e1f28401 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -120,3 +120,33 @@ int esdhc_do_data(struct fsl_esdhc_host *host, struct mci_data *data,
 
 	return 0;
 }
+
+static bool esdhc_match32(struct fsl_esdhc_host *host, unsigned int off,
+			  unsigned int mask, unsigned int val)
+{
+	const unsigned int reg = sdhci_read32(&host->sdhci, off) & mask;
+
+	return reg == val;
+}
+
+#ifdef __PBL__
+/*
+ * Stubs to make timeout logic below work in PBL
+ */
+
+#define get_time_ns()		0
+/*
+ * Use time in us (approx) as a busy counter timeout value
+ */
+#define is_timeout(s, t)	((s)++ > ((t) / 1024))
+
+#endif
+
+int esdhc_poll(struct fsl_esdhc_host *host, unsigned int off,
+	       unsigned int mask, unsigned int val,
+	       uint64_t timeout)
+{
+	return wait_on_timeout(timeout,
+			       esdhc_match32(host, off, mask, val));
+}
+
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 21aa758f9..d6c178651 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -44,7 +44,6 @@ esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd, struct mci_data
 	u32	xfertyp, mixctrl, command;
 	u32	irqstat;
 	int ret;
-	int timeout;
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
 
@@ -81,12 +80,11 @@ esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd, struct mci_data
 		      command << 16 | xfertyp);
 
 	/* Wait for the command to complete */
-	timeout = 10000;
-	while (!(sdhci_read32(&host->sdhci, SDHCI_INT_STATUS) & SDHCI_INT_CMD_COMPLETE)) {
-		__udelay(1);
-		if (!timeout--)
-			return -ETIMEDOUT;
-	}
+	ret = esdhc_poll(host, SDHCI_INT_STATUS,
+			 SDHCI_INT_CMD_COMPLETE, SDHCI_INT_CMD_COMPLETE,
+			 100 * MSECOND);
+	if (ret)
+		return ret;
 
 	irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, irqstat);
@@ -110,13 +108,11 @@ esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd, struct mci_data
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
 
 	/* Wait for the bus to be idle */
-	timeout = 10000;
-	while (sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & (SDHCI_CMD_INHIBIT_CMD |
-			SDHCI_CMD_INHIBIT_DATA | SDHCI_DATA_LINE_ACTIVE)) {
-		__udelay(1);
-		if (!timeout--)
-			return -ETIMEDOUT;
-	}
+	ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
+			 SDHCI_CMD_INHIBIT_CMD  |
+			 SDHCI_CMD_INHIBIT_DATA |
+			 SDHCI_DATA_LINE_ACTIVE, 0,
+			 100 * MSECOND);
 
 	return 0;
 }
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 8e6f66ce4..7e24b2b02 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -94,8 +94,9 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 		      command << 16 | xfertyp);
 
 	/* Wait for the command to complete */
-	ret = wait_on_timeout(100 * MSECOND,
-			sdhci_read32(&host->sdhci, SDHCI_INT_STATUS) & SDHCI_INT_CMD_COMPLETE);
+	ret = esdhc_poll(host, SDHCI_INT_STATUS,
+			 SDHCI_INT_CMD_COMPLETE, SDHCI_INT_CMD_COMPLETE,
+			 100 * MSECOND);
 	if (ret) {
 		dev_dbg(host->dev, "timeout 1\n");
 		return -ETIMEDOUT;
@@ -116,9 +117,9 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 		 * Poll on DATA0 line for cmd with busy signal for
 		 * timout / 10 usec since DLA polling can be insecure.
 		 */
-		ret = wait_on_timeout(2500 * MSECOND,
-			(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_DAT0));
-
+		ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
+				 PRSSTAT_DAT0, PRSSTAT_DAT0,
+				 2500 * MSECOND);
 		if (ret) {
 			dev_err(host->dev, "timeout PRSSTAT_DAT0\n");
 			return -ETIMEDOUT;
@@ -137,16 +138,17 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
 
 	/* Wait for the bus to be idle */
-	ret = wait_on_timeout(SECOND,
-			!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) &
-				(SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA)));
+	ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
+			 SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA, 0,
+			 SECOND);
 	if (ret) {
 		dev_err(host->dev, "timeout 2\n");
 		return -ETIMEDOUT;
 	}
 
-	ret = wait_on_timeout(100 * MSECOND,
-			!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_DATA_LINE_ACTIVE));
+	ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
+			 SDHCI_DATA_LINE_ACTIVE, 0,
+			 100 * MSECOND);
 	if (ret) {
 		dev_err(host->dev, "timeout 3\n");
 		return -ETIMEDOUT;
@@ -201,16 +203,18 @@ static void set_sysctl(struct mci_host *mci, u32 clock)
 	esdhc_clrsetbits32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			SYSCTL_CLOCK_MASK, clk);
 
-	wait_on_timeout(10 * MSECOND,
-			sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_SDSTB);
+	esdhc_poll(host, SDHCI_PRESENT_STATE,
+		   PRSSTAT_SDSTB, PRSSTAT_SDSTB,
+		   10 * MSECOND);
 
 	clk = SYSCTL_PEREN | SYSCTL_CKEN | SYSCTL_INITA;
 
 	esdhc_setbits32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			clk);
 
-	wait_on_timeout(1 * MSECOND,
-			!(sdhci_read32(&host->sdhci, SDHCI_CLOCK_CONTROL) & SYSCTL_INITA));
+	esdhc_poll(host, SDHCI_CLOCK_CONTROL,
+		   SYSCTL_INITA, SYSCTL_INITA,
+		   10 * MSECOND);
 }
 
 static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
@@ -268,7 +272,6 @@ static int esdhc_card_present(struct mci_host *mci)
 
 static int esdhc_reset(struct fsl_esdhc_host *host)
 {
-	uint64_t start;
 	int val;
 
 	/* reset the controller */
@@ -286,16 +289,12 @@ static int esdhc_reset(struct fsl_esdhc_host *host)
 		sdhci_write32(&host->sdhci, IMX_SDHCI_DLL_CTRL, 0x0);
 	}
 
-	start = get_time_ns();
 	/* hardware clears the bit when it is done */
-	while (1) {
-		if (!(sdhci_read32(&host->sdhci, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET)
-					& SYSCTL_RSTA))
-			break;
-		if (is_timeout(start, 100 * MSECOND)) {
-			dev_err(host->dev, "Reset never completed.\n");
-			return -EIO;
-		}
+	if (esdhc_poll(host,
+		       SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+		       SYSCTL_RSTA, 0, 100 * MSECOND)) {
+		dev_err(host->dev, "Reset never completed.\n");
+		return -EIO;
 	}
 
 	return 0;
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index 8ab6b0bb8..ac1208789 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -177,6 +177,8 @@ int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
 		     struct fsl_esdhc_dma_transfer *tr);
 int esdhc_do_data(struct fsl_esdhc_host *host, struct mci_data *data,
 		  struct fsl_esdhc_dma_transfer *tr);
-
+int esdhc_poll(struct fsl_esdhc_host *host, unsigned int off,
+	       unsigned int mask, unsigned int val,
+	       uint64_t timeout);
 
 #endif  /* __FSL_ESDHC_H__ */
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
