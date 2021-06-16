Delivery-date: Wed, 16 Jun 2021 09:41:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQB9-00011x-6Y
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 09:41:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQB8-0000Ag-4m
	for lore@pengutronix.de; Wed, 16 Jun 2021 09:41:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/KACnLiZRa/47zCnSKIyALi7SY0eG/ApyXFWTlig1U=; b=u2VtBYOK3vReun
	Ds2rYH0n/xB7sSCNAlD9g0wVcP2fGq9z8V0akBU9u7S6NvXHFOuLnyYwPhyFNu0UZqDUBE7mhkXUE
	PLXw3JomKs/pzcZdqOOyM7u/q/hiBSSVUizILBYi3ayhRcm5TEl015bDe+jbkpawk3XjOCv4WaSCg
	pdu8y+nww5JlinTkcNqLHrKImVXsJeOQCf9+2KEgCjXltzyxDyK9mQ/CexWLujvSaHCnEUnSZTZxu
	HQGMnktCXf5AocjL0wYFky/mfjWcoimeH4Bud8XPGVzM4unkzIUolT4rQ1zE9NCVutWtdHlXwVnDR
	WK4XQ1pxqNULGpfpdiUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltQ9h-005EPO-W8; Wed, 16 Jun 2021 07:40:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltQ9Z-005EMm-Vu
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 07:40:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9W-0007zB-NR; Wed, 16 Jun 2021 09:39:58 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9V-0001qB-S5; Wed, 16 Jun 2021 09:39:57 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9V-007rFx-RR; Wed, 16 Jun 2021 09:39:57 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Graichen <michael.graichen@hotmail.com>
Date: Wed, 16 Jun 2021 09:39:54 +0200
Message-Id: <20210616073957.1872965-3-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210616073957.1872965-1-m.tretter@pengutronix.de>
References: <20210616073957.1872965-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_004002_076162_65206477 
X-CRM114-Status: GOOD (  14.12  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] mci: arasan: fix most checkpatch warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

checkpatch reports many warnings for the arasan driver. Fix most of the
warnings.

I didn't fix the long lines in the wait_on_timeout() calls, because
trying to fix them actually makes things worse by introducing either
unreadable code or multiple additional helper functions, which I don't
consider worth it.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 46 ++++++++++++++++++++++----------------
 1 file changed, 27 insertions(+), 19 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 04fce62bf46d..7306dac70b69 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -12,20 +12,20 @@
 #define SDHCI_ARASAN_HCAP_CLK_FREQ_MASK		0xFF00
 #define SDHCI_ARASAN_HCAP_CLK_FREQ_SHIFT	8
 #define SDHCI_INT_ADMAE				BIT(29)
-#define SDHCI_ARASAN_INT_DATA_MASK 		SDHCI_INT_XFER_COMPLETE | \
+#define SDHCI_ARASAN_INT_DATA_MASK		(SDHCI_INT_XFER_COMPLETE | \
 						SDHCI_INT_DMA | \
 						SDHCI_INT_SPACE_AVAIL | \
 						SDHCI_INT_DATA_AVAIL | \
 						SDHCI_INT_DATA_TIMEOUT | \
 						SDHCI_INT_DATA_CRC | \
 						SDHCI_INT_DATA_END_BIT | \
-						SDHCI_INT_ADMAE
+						SDHCI_INT_ADMAE)
 
-#define SDHCI_ARASAN_INT_CMD_MASK		SDHCI_INT_CMD_COMPLETE | \
+#define SDHCI_ARASAN_INT_CMD_MASK		(SDHCI_INT_CMD_COMPLETE | \
 						SDHCI_INT_TIMEOUT | \
 						SDHCI_INT_CRC | \
 						SDHCI_INT_END_BIT | \
-						SDHCI_INT_INDEX
+						SDHCI_INT_INDEX)
 
 #define SDHCI_ARASAN_BUS_WIDTH			4
 #define TIMEOUT_VAL				0xE
@@ -39,7 +39,6 @@ struct arasan_sdhci_host {
 #define SDHCI_ARASAN_QUIRK_NO_1_8_V		BIT(1)
 };
 
-
 static inline
 struct arasan_sdhci_host *to_arasan_sdhci_host(struct mci_host *mci)
 {
@@ -55,15 +54,21 @@ struct arasan_sdhci_host *sdhci_to_arasan(struct sdhci *sdhci)
 static int arasan_sdhci_card_present(struct mci_host *mci)
 {
 	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
+	u32 val;
+
+	val = sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE);
 
-	return !!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_CARD_DETECT);
+	return !!(val & SDHCI_CARD_DETECT);
 }
 
 static int arasan_sdhci_card_write_protected(struct mci_host *mci)
 {
 	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
+	u32 val;
+
+	val = sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE);
 
-	return !(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_WRITE_PROTECT);
+	return !(val & SDHCI_WRITE_PROTECT);
 }
 
 static int arasan_sdhci_reset(struct arasan_sdhci_host *host, u8 mask)
@@ -72,7 +77,7 @@ static int arasan_sdhci_reset(struct arasan_sdhci_host *host, u8 mask)
 
 	/* wait for reset completion */
 	if (wait_on_timeout(100 * MSECOND,
-			!(sdhci_read8(&host->sdhci, SDHCI_SOFTWARE_RESET) & mask))){
+			    !(sdhci_read8(&host->sdhci, SDHCI_SOFTWARE_RESET) & mask))) {
 		dev_err(host->mci.hw_dev, "SDHCI reset timeout\n");
 		return -ETIMEDOUT;
 	}
@@ -98,13 +103,12 @@ static int arasan_sdhci_init(struct mci_host *mci, struct device_d *dev)
 		return ret;
 
 	sdhci_write8(&host->sdhci, SDHCI_POWER_CONTROL,
-			    SDHCI_BUS_VOLTAGE_330 | SDHCI_BUS_POWER_EN);
+		     SDHCI_BUS_VOLTAGE_330 | SDHCI_BUS_POWER_EN);
 	udelay(400);
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_ENABLE,
-			    SDHCI_ARASAN_INT_DATA_MASK |
-			    SDHCI_ARASAN_INT_CMD_MASK);
-	sdhci_write32(&host->sdhci, SDHCI_SIGNAL_ENABLE, 0x00);
+		      SDHCI_ARASAN_INT_DATA_MASK | SDHCI_ARASAN_INT_CMD_MASK);
+	sdhci_write32(&host->sdhci, SDHCI_SIGNAL_ENABLE, 0);
 
 	return 0;
 }
@@ -136,18 +140,21 @@ static int arasan_sdhci_wait_for_done(struct arasan_sdhci_host *host, u32 mask)
 {
 	u64 start = get_time_ns();
 	u16 stat;
+	u16 error;
 
 	do {
 		stat = sdhci_read16(&host->sdhci, SDHCI_INT_NORMAL_STATUS);
 		if (stat & SDHCI_INT_ERROR) {
+			error = sdhci_read16(&host->sdhci,
+					     SDHCI_INT_ERROR_STATUS);
 			dev_err(host->mci.hw_dev, "SDHCI_INT_ERROR: 0x%08x\n",
-				sdhci_read16(&host->sdhci, SDHCI_INT_ERROR_STATUS));
+				error);
 			return -EPERM;
 		}
 
 		if (is_timeout(start, 1000 * MSECOND)) {
 			dev_err(host->mci.hw_dev,
-					"SDHCI timeout while waiting for done\n");
+				"SDHCI timeout while waiting for done\n");
 			return -ETIMEDOUT;
 		}
 	} while ((stat & mask) != mask);
@@ -158,7 +165,7 @@ static int arasan_sdhci_wait_for_done(struct arasan_sdhci_host *host, u32 mask)
 static void print_error(struct arasan_sdhci_host *host, int cmdidx)
 {
 	dev_err(host->mci.hw_dev,
-		"error while transfering data for command %d\n", cmdidx);
+		"error while transferring data for command %d\n", cmdidx);
 	dev_err(host->mci.hw_dev, "state = 0x%08x , interrupt = 0x%08x\n",
 		sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE),
 		sdhci_read32(&host->sdhci, SDHCI_INT_NORMAL_STATUS));
@@ -177,11 +184,10 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 		mask |= SDHCI_CMD_INHIBIT_DATA;
 
 	ret = wait_on_timeout(10 * MSECOND,
-			!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & mask));
-
+			      !(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & mask));
 	if (ret) {
 		dev_err(host->mci.hw_dev,
-				"SDHCI timeout while waiting for idle\n");
+			"SDHCI timeout while waiting for idle\n");
 		return ret;
 	}
 
@@ -191,7 +197,8 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	if (data && data->flags == MMC_DATA_READ)
 		mask |= SDHCI_INT_DATA_AVAIL;
 
-	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data, false, &command, &xfer);
+	sdhci_set_cmd_xfer_mode(&host->sdhci,
+				cmd, data, false, &command, &xfer);
 
 	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, TIMEOUT_VAL);
 	if (data) {
@@ -223,6 +230,7 @@ error:
 	}
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
+
 	return ret;
 }
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

