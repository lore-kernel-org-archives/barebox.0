Delivery-date: Wed, 07 May 2025 11:29:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb5d-0035aO-1C
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:29:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb5c-00071J-EM
	for lore@pengutronix.de; Wed, 07 May 2025 11:29:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LNGsOTOseAle75olg1PlTF8EZUzy7DLfT7PO5UWtsfc=; b=kDIJD5BJFtjtc3saTWRRoElljA
	5S3PsuS573dEZ8q7S1BMidzzI152J7D8a1JMMtMp06gtLe2p4hHprUgEJwtBz9Q1djgP6GdyTHYId
	uHf/nolYKVuDVLJ+QLzjoeM8h7DRUSqsau0UifHB2KLci4Lb4aTuRfwacyaCxEWywk/qxCIwkS+sy
	rZ0UeuXDUXpw09iRQn9oYsYtGxWSF+OqFWP53kr3/ko+dhjVUkeDME9CvveuQ2ttGZNzzJo0WSfFq
	7pndD15/GZ4R1H6uWHDDSVQwvOmMAGSWKu1VduZuyvsp7gnv5+UbBAfgpB7Ykf1x6KlP3XkyaiK6U
	i1ykz2dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb5A-0000000ExgW-2rUo;
	Wed, 07 May 2025 09:28:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaG6-0000000EmG9-2uZJ
	for barebox@bombadil.infradead.org;
	Wed, 07 May 2025 08:36:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LNGsOTOseAle75olg1PlTF8EZUzy7DLfT7PO5UWtsfc=; b=UBIm+3U7CmyOeW56AZFDrqcTZE
	Z0rBsV+jqBsKmG+Dc82CRwjn1iYF0pEOOkf2VKh7K016YPUWbKviRYjFCDGwyBHzJ73qukRcVY/4y
	CKnwH7gb7uyF2EaJZrSy4s6EK9/hod37OzBPTyA+NrCLCzObaARkup1yJYZokM3jZDOFOLdK+PTIQ
	HN5bkS8Oe/D58RI9NNTWBCxmPAsyWIITFo2w0xv1iFBW7TbDi58Lhg77jfZ4NXnEGGKKr/Ve812Qm
	wM+j9F4ZmvCSyZTPD+JWhyt++ouSbtFlellBJzJiipyZy/oCaNz85YwNxl/ZbJLwTl6owAZ975yv3
	YVNAmMVg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFp-00000001ihC-0Ztm
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:36:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-0003yn-Om; Wed, 07 May 2025 10:35:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-001Wuf-1k;
	Wed, 07 May 2025 10:35:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-0j;
	Wed, 07 May 2025 10:22:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:21:52 +0200
Message-Id: <20250507082209.3289972-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_093550_247289_315BF6E2 
X-CRM114-Status: GOOD (  16.24  )
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
Subject: [PATCH v2 13/30] mci: imx-esdhc: implement esdhc_poll using sdhci_read32_poll_timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

esdhc_match32 is not flexible enough for use in the upcoming HS200
tuning code, so reimplement it in terms of sdhci_read32_poll_timeout
to allow custom conditions.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/imx-esdhc-common.c | 62 +++++++---------------------------
 drivers/mci/imx-esdhc.c        | 15 ++++----
 drivers/mci/imx-esdhc.h        | 29 ++++++++++++++--
 3 files changed, 45 insertions(+), 61 deletions(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index 7673220fe8d4..0743e7b74d22 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -78,49 +78,11 @@ static int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
 	return 0;
 }
 
-static bool esdhc_match32(struct fsl_esdhc_host *host, unsigned int off,
-			  unsigned int mask, unsigned int val)
-{
-	const unsigned int reg = sdhci_read32(&host->sdhci, off) & mask;
-
-	return reg == val;
-}
-
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
-}
-
 int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 		     struct mci_data *data)
 {
 	u32	xfertyp, mixctrl, command;
-	u32	irqstat;
+	u32	val, irqstat;
 	dma_addr_t dma = SDHCI_NO_DMA;
 	int ret;
 
@@ -159,8 +121,8 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 		      command << 16 | xfertyp);
 
 	/* Wait for the command to complete */
-	ret = esdhc_poll(host, SDHCI_INT_STATUS,
-			 SDHCI_INT_CMD_COMPLETE, SDHCI_INT_CMD_COMPLETE,
+	ret = esdhc_poll(host, SDHCI_INT_STATUS, val,
+			 val & SDHCI_INT_CMD_COMPLETE,
 			 100 * MSECOND);
 	if (ret) {
 		dev_dbg(host->dev, "timeout 1\n");
@@ -185,9 +147,9 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 		 * Poll on DATA0 line for cmd with busy signal for
 		 * timout / 10 usec since DLA polling can be insecure.
 		 */
-		ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
-				 PRSSTAT_DAT0, PRSSTAT_DAT0,
-				 2500 * MSECOND);
+		ret = esdhc_poll(host, SDHCI_PRESENT_STATE, val,
+				 val & PRSSTAT_DAT0,
+				 sdhci_compute_timeout(cmd, NULL, 2500 * MSECOND));
 		if (ret) {
 			dev_err(host->dev, "timeout PRSSTAT_DAT0\n");
 			goto undo_setup_data;
@@ -210,17 +172,17 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
 
 	/* Wait for the bus to be idle */
-	ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
-			 SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA, 0,
-			 SECOND);
+	ret = esdhc_poll(host, SDHCI_PRESENT_STATE, val,
+			 (val & (SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA)) == 0,
+			 sdhci_compute_timeout(cmd, data, SECOND));
 	if (ret) {
 		dev_err(host->dev, "timeout 2\n");
 		return -ETIMEDOUT;
 	}
 
-	ret = esdhc_poll(host, SDHCI_PRESENT_STATE,
-			 SDHCI_DATA_LINE_ACTIVE, 0,
-			 100 * MSECOND);
+	ret = esdhc_poll(host, SDHCI_PRESENT_STATE, val,
+			 (val & SDHCI_DATA_LINE_ACTIVE) == 0,
+			 sdhci_compute_timeout(cmd, NULL, 100 * MSECOND));
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



