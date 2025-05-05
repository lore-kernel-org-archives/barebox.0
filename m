Delivery-date: Mon, 05 May 2025 14:39:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6C-002SW7-1o
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:39:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv64-0006fa-Mw
	for lore@pengutronix.de; Mon, 05 May 2025 14:39:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Imd40Fk7Zn2SGps9gyixkoD5/CocbqanOn8g8yvipm4=; b=MWy+fife8KniX8iF3DjoD7yqzh
	Ws244njoZYtpz2i/Sb1t7RomNJ4lX57DSWQ2CRdjt36pbVGlQLJGpdZaR/MecxnrUlHFxD16H9+Y2
	BNwIGJiYS9ShHvmrItWY6X1UhzqeIe5nnDtwg/HbRtHlNwqVnpiZu9AZzNRNBjIhUhmu//viDRU2k
	p7xcHDfpQwfdmmz98UYmwRSZfuniuzV6jI6EJzQiVVN5vjlbjGZ5Dt9NMR6dRJLS8MkTARfscT3bD
	FPjQr5mrmpqPKNRqT9yMxQyjUfPVpEXBHd1KXw2nqPQJmk8M1AlHzzbx5qKv01NmxUr5KKzabOtMt
	kMuMyp1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv5J-00000007LWV-3G08;
	Mon, 05 May 2025 12:38:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv29-00000007KaP-0UfR
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:34:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv27-0004pH-PU; Mon, 05 May 2025 14:34:55 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv27-001EPw-1s;
	Mon, 05 May 2025 14:34:55 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuah-00Fb9X-0F;
	Mon, 05 May 2025 14:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:16 +0200
Message-Id: <20250505120633.3717186-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_053457_334024_A6B13CEE 
X-CRM114-Status: GOOD (  19.61  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/30] mci: imx-esdhc: implement esdhc_poll using sdhci_read32_poll_timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

esdhc_match32 is not flexible enough for use in the upcoming HS200
tuning code, so reimplement it in terms of sdhci_read32_poll_timeout
to allow custom conditions.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/imx-esdhc-common.c | 65 +++++++++++-----------------------
 drivers/mci/imx-esdhc.c        | 15 ++++----
 drivers/mci/imx-esdhc.h        | 29 +++++++++++++--
 3 files changed, 53 insertions(+), 56 deletions(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index 7673220fe8d4..dae88bb977c6 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -78,49 +78,24 @@ static int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
 	return 0;
 }
 
-static bool esdhc_match32(struct fsl_esdhc_host *host, unsigned int off,
-			  unsigned int mask, unsigned int val)
+static u64 esdhc_compute_timeout(struct mci_cmd *cmd,
+				 struct mci_data *data,
+				 u64 default_value)
 {
-	const unsigned int reg = sdhci_read32(&host->sdhci, off) & mask;
+	if (data && data->timeout_ns != 0)
+		return data->timeout_ns;
 
-	return reg == val;
-}
+	if (cmd && cmd->busy_timeout != 0)
+		return cmd->busy_timeout * NSEC_PER_MSEC;
 
-#ifdef __PBL__
-/*
- * Stubs to make timeout logic below work in PBL
- */
-
-#define get_time_ns()		0
-/*
- * Use time in us (approx) as a busy counter timeout value
- */
-#define is_timeout(s, t)	((s)++ > ((t) / 1024))
-
-static void __udelay(int us)
-{
-	volatile int i;
-
-	for (i = 0; i < us * 4; i++);
-}
-
-#define udelay(n)	__udelay(n)
-
-#endif
-
-int esdhc_poll(struct fsl_esdhc_host *host, unsigned int off,
-	       unsigned int mask, unsigned int val,
-	       uint64_t timeout)
-{
-	return wait_on_timeout(timeout,
-			       esdhc_match32(host, off, mask, val));
+	return default_value;
 }
 
 int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 		     struct mci_data *data)
 {
 	u32	xfertyp, mixctrl, command;
-	u32	irqstat;
+	u32	val, irqstat;
 	dma_addr_t dma = SDHCI_NO_DMA;
 	int ret;
 
@@ -159,8 +134,8 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 		      command << 16 | xfertyp);
 
 	/* Wait for the command to complete */
-	ret = esdhc_poll(host, SDHCI_INT_STATUS,
-			 SDHCI_INT_CMD_COMPLETE, SDHCI_INT_CMD_COMPLETE,
+	ret = esdhc_poll(host, SDHCI_INT_STATUS, val,
+			 val & SDHCI_INT_CMD_COMPLETE,
 			 100 * MSECOND);
 	if (ret) {
 		dev_dbg(host->dev, "timeout 1\n");
@@ -185,9 +160,9 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 		 * Poll on DATA0 line for cmd with busy signal for
 		 * timout / 10 usec since DLA polling can be insecure.
 		 */
-		ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
-				 PRSSTAT_DAT0, PRSSTAT_DAT0,
-				 2500 * MSECOND);
+		ret = esdhc_poll(host, SDHCI_PRESENT_STATE, val,
+				 val & PRSSTAT_DAT0,
+				 esdhc_compute_timeout(cmd, NULL, 2500 * MSECOND));
 		if (ret) {
 			dev_err(host->dev, "timeout PRSSTAT_DAT0\n");
 			goto undo_setup_data;
@@ -210,17 +185,17 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
 
 	/* Wait for the bus to be idle */
-	ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
-			 SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA, 0,
-			 SECOND);
+	ret = esdhc_poll(host, SDHCI_PRESENT_STATE, val,
+			 (val & (SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA)) == 0,
+			 esdhc_compute_timeout(cmd, data, SECOND));
 	if (ret) {
 		dev_err(host->dev, "timeout 2\n");
 		return -ETIMEDOUT;
 	}
 
-	ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
-			 SDHCI_DATA_LINE_ACTIVE, 0,
-			 100 * MSECOND);
+	ret = esdhc_poll(host, SDHCI_PRESENT_STATE, val,
+			 (val & SDHCI_DATA_LINE_ACTIVE) == 0,
+			 esdhc_compute_timeout(cmd, NULL, 100 * MSECOND));
 	if (ret) {
 		dev_err(host->dev, "timeout 3\n");
 		return -ETIMEDOUT;
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 2e6066b20308..0582b6fb8dd6 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -49,7 +49,7 @@ static void set_sysctl(struct mci_host *mci, u32 clock, bool ddr)
 	int div, pre_div, ddr_pre_div = 1;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	unsigned sdhc_clk = clk_get_rate(host->clk);
-	u32 clk;
+	u32 val, clk;
 	unsigned long  cur_clock;
 
 	if (esdhc_is_usdhc(host) && ddr)
@@ -92,8 +92,8 @@ static void set_sysctl(struct mci_host *mci, u32 clock, bool ddr)
 	esdhc_clrsetbits32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			SYSCTL_CLOCK_MASK, clk);
 
-	esdhc_poll(host, SDHCI_PRESENT_STATE,
-		   PRSSTAT_SDSTB, PRSSTAT_SDSTB,
+	esdhc_poll(host, SDHCI_PRESENT_STATE, val,
+		   val & PRSSTAT_SDSTB,
 		   10 * MSECOND);
 
 	clk = SYSCTL_PEREN | SYSCTL_CKEN | SYSCTL_INITA;
@@ -101,8 +101,8 @@ static void set_sysctl(struct mci_host *mci, u32 clock, bool ddr)
 	esdhc_setbits32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			clk);
 
-	esdhc_poll(host, SDHCI_CLOCK_CONTROL,
-		   SYSCTL_INITA, SYSCTL_INITA,
+	esdhc_poll(host, SDHCI_CLOCK_CONTROL, val,
+		   val & SYSCTL_INITA,
 		   10 * MSECOND);
 }
 
@@ -217,9 +217,8 @@ static int esdhc_reset(struct fsl_esdhc_host *host)
 	}
 
 	/* hardware clears the bit when it is done */
-	if (esdhc_poll(host,
-		       SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
-		       SYSCTL_RSTA, 0, 100 * MSECOND)) {
+	if (esdhc_poll(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+		       val, (val & SYSCTL_RSTA) == 0, 100 * MSECOND)) {
 		dev_err(host->dev, "Reset never completed.\n");
 		return -EIO;
 	}
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index eff556f2ff79..2930676d5328 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -10,6 +10,10 @@
 #include <errno.h>
 #include <asm/byteorder.h>
 #include <linux/bitfield.h>
+#include <linux/math.h>
+#include <linux/ktime.h>
+
+#include "sdhci.h"
 
 #define SYSCTL_INITA		0x08000000
 #define SYSCTL_TIMEOUT_MASK	0x000f0000
@@ -163,10 +167,29 @@ esdhc_setbits32(struct fsl_esdhc_host *host, unsigned int reg,
 }
 
 void esdhc_populate_sdhci(struct fsl_esdhc_host *host);
-int esdhc_poll(struct fsl_esdhc_host *host, unsigned int off,
-	       unsigned int mask, unsigned int val,
-	       uint64_t timeout);
 int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 		     struct mci_data *data);
 
+#ifdef __PBL__
+#undef	read_poll_get_time_ns
+#define read_poll_get_time_ns()		0
+/* Use time in us (approx) as a busy counter timeout value */
+#undef	read_poll_is_timeout
+#define read_poll_is_timeout(s, t)	((s)++ > ((t) / 1024))
+
+static inline void __udelay(int us)
+{
+	volatile int i;
+
+	for (i = 0; i < us * 4; i++);
+}
+
+#define udelay(n)	__udelay(n)
+
+#endif
+
+#define esdhc_poll(host, reg, val, cond, timeout_ns)	\
+	sdhci_read32_poll_timeout(&host->sdhci, reg, val, cond, \
+				  ktime_to_us(timeout_ns))
+
 #endif  /* __FSL_ESDHC_H__ */
-- 
2.39.5



