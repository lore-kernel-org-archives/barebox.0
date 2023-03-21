Delivery-date: Tue, 21 Mar 2023 10:52:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peYfB-00911w-6e
	for lore@lore.pengutronix.de; Tue, 21 Mar 2023 10:52:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peYfA-0005kS-Tw
	for lore@pengutronix.de; Tue, 21 Mar 2023 10:52:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mz3wOCcUo1KX8UDJ0Mk3uAVSfjK5Rz0t0CYNvpD3SI8=; b=1tYvoeDNZ+H1VCqnHU3v04UyN5
	4t22MWSsdrB/fypoYaAix320VEN9vaFdxXbb10VWwTqYKEeCWFGUICo9eeFDw7HDOuSC+fBWAGCRw
	ING4rHhBCCxL45WzVr7sPXlVPrK6WgrwEeRb9cTNSJfdXAKrtA9uGN8XL5BYjMbdpzhHfy+YPMto4
	TjFKPrOjuBAM58tgc4Nu70Pr/BOXM4mFR4WnU0IbEOdaMHmjDuUrqL0hcrEozrtIi5Qg5mOIM2Bd/
	jybv1QT+Yllp5xvYXIkk7c+55sGfNpCiwUxb2k2m3hd+Nfaln7Vipf9GXact7d6flbaFJdSxf4Oxq
	CBi3NEOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peYe5-00Bw4p-1g;
	Tue, 21 Mar 2023 09:51:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peYe1-00Bw2w-1p
	for barebox@lists.infradead.org;
	Tue, 21 Mar 2023 09:51:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peYdw-0005bw-EQ; Tue, 21 Mar 2023 10:51:00 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peYdv-005eoB-QO; Tue, 21 Mar 2023 10:50:59 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peYdu-005bP8-Ti; Tue, 21 Mar 2023 10:50:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 21 Mar 2023 10:50:56 +0100
Message-Id: <20230321095056.1333669-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_025105_599777_854668BC 
X-CRM114-Status: GOOD (  18.85  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: sdhci: Add and use common sdhci_wait_for_done()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have different driver specific variants of functions polling for the
device ready in the tree. Add a common sdhci_wait_for_done() and use
it where appropriate. This fixes a few deficiencies with the driver
specific variants.

rk_sdhci_wait_for_done() didn't check the SDHCI_INT_TIMEOUT bit and
returned -EPERM instead when it ought to return -ETIMEDOUT. The core
tries to detect a SD card first and expects a -ETIMEDOUT for the setup
command when really a eMMC is connected. Only with a -ETIMEDOUT the core
tries to detect a eMMC next.

at91_sdhci_wait_for_done() returned the status instead of the expected
0 value for success.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c           | 29 +---------------------------
 drivers/mci/atmel-sdhci-common.c     | 28 +--------------------------
 drivers/mci/rockchip-dwcmshc-sdhci.c | 25 +-----------------------
 drivers/mci/sdhci.c                  | 27 ++++++++++++++++++++++++++
 drivers/mci/sdhci.h                  |  1 +
 5 files changed, 31 insertions(+), 79 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 00a8ceed68..650de22b69 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -133,33 +133,6 @@ static void arasan_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, val);
 }
 
-static int arasan_sdhci_wait_for_done(struct arasan_sdhci_host *host, u32 mask)
-{
-	u64 start = get_time_ns();
-	u32 stat;
-
-	do {
-		stat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-
-		if (stat & SDHCI_INT_TIMEOUT)
-			return -ETIMEDOUT;
-
-		if (stat & SDHCI_INT_ERROR) {
-			dev_err(host->mci.hw_dev, "SDHCI_INT_ERROR: 0x%08x\n",
-				stat);
-			return -EPERM;
-		}
-
-		if (is_timeout(start, 1000 * MSECOND)) {
-			dev_err(host->mci.hw_dev,
-				"SDHCI timeout while waiting for done\n");
-			return -ETIMEDOUT;
-		}
-	} while ((stat & mask) != mask);
-
-	return 0;
-}
-
 static void print_error(struct arasan_sdhci_host *host, int cmdidx, int ret)
 {
 	if (ret == -ETIMEDOUT)
@@ -213,7 +186,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
-	ret = arasan_sdhci_wait_for_done(host, mask);
+	ret = sdhci_wait_for_done(&host->sdhci, mask);
 	if (ret)
 		goto error;
 
diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
index 05a019beb6..58ba0b9b3d 100644
--- a/drivers/mci/atmel-sdhci-common.c
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -89,32 +89,6 @@ exit:
 	return is_inserted;
 }
 
-static int at91_sdhci_wait_for_done(struct at91_sdhci *host, u32 mask)
-{
-	struct sdhci *sdhci = &host->sdhci;
-	u32 status;
-	int ret;
-
-	ret = sdhci_read32_poll_timeout(sdhci, SDHCI_INT_STATUS, status,
-					(status & mask) == mask || (status & SDHCI_INT_ERROR),
-					USEC_PER_SEC);
-
-	if (ret < 0) {
-		dev_err(host->dev, "SDHCI timeout while waiting for done\n");
-		return ret;
-	}
-
-	if (status & SDHCI_INT_TIMEOUT)
-		return -ETIMEDOUT;
-
-	if (status & SDHCI_INT_ERROR) {
-		dev_err(host->dev, "SDHCI_INT_STATUS: 0x%08x\n", status);
-		return -EPERM;
-	}
-
-	return status & 0xFFFF;
-}
-
 int at91_sdhci_send_command(struct at91_sdhci *host, struct mci_cmd *cmd,
 			    struct mci_data *data)
 {
@@ -158,7 +132,7 @@ int at91_sdhci_send_command(struct at91_sdhci *host, struct mci_cmd *cmd,
 	sdhci_write32(sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 	sdhci_write16(sdhci, SDHCI_COMMAND, command);
 
-	status = at91_sdhci_wait_for_done(host, mask);
+	status = sdhci_wait_for_done(&host->sdhci, mask);
 	if (status < 0)
 		goto error;
 
diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 4b4e8b7bd6..e055a8ea71 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -216,29 +216,6 @@ static void rk_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, val);
 }
 
-static int rk_sdhci_wait_for_done(struct rk_sdhci_host *host, u32 mask)
-{
-	u64 start = get_time_ns();
-	u16 stat;
-
-	do {
-		stat = sdhci_read16(&host->sdhci, SDHCI_INT_NORMAL_STATUS);
-		if (stat & SDHCI_INT_ERROR) {
-			dev_dbg(host->mci.hw_dev, "SDHCI_INT_ERROR: 0x%08x\n",
-				sdhci_read16(&host->sdhci, SDHCI_INT_ERROR_STATUS));
-			return -EPERM;
-		}
-
-		if (is_timeout(start, 1000 * MSECOND)) {
-			dev_err(host->mci.hw_dev,
-					"SDHCI timeout while waiting for done\n");
-			return -ETIMEDOUT;
-		}
-	} while ((stat & mask) != mask);
-
-	return 0;
-}
-
 static void print_error(struct rk_sdhci_host *host, int cmdidx)
 {
 	dev_dbg(host->mci.hw_dev,
@@ -285,7 +262,7 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
-	ret = rk_sdhci_wait_for_done(host, SDHCI_INT_CMD_COMPLETE);
+	ret = sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
 	if (ret == -EPERM)
 		goto error;
 	else if (ret)
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 2cdd3c3c8f..635884e2a2 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -124,6 +124,33 @@ void sdhci_set_bus_width(struct sdhci *host, int width)
 
 #endif
 
+int sdhci_wait_for_done(struct sdhci *sdhci, u32 mask)
+{
+	u64 start = get_time_ns();
+	u32 stat;
+
+	do {
+		stat = sdhci_read32(sdhci, SDHCI_INT_STATUS);
+
+		if (stat & SDHCI_INT_TIMEOUT)
+			return -ETIMEDOUT;
+
+		if (stat & SDHCI_INT_ERROR) {
+			dev_err(sdhci->mci->hw_dev, "SDHCI_INT_ERROR: 0x%08x\n",
+				stat);
+			return -EPERM;
+		}
+
+		if (is_timeout(start, 1000 * MSECOND)) {
+			dev_err(sdhci->mci->hw_dev,
+				"SDHCI timeout while waiting for done\n");
+			return -ETIMEDOUT;
+		}
+	} while ((stat & mask) != mask);
+
+	return 0;
+}
+
 void sdhci_setup_data_pio(struct sdhci *sdhci, struct mci_data *data)
 {
 	if (!data)
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index c538385939..fe8c25cb9c 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -257,6 +257,7 @@ static inline void sdhci_write8(struct sdhci *host, int reg, u32 val)
 }
 
 #define SDHCI_NO_DMA DMA_ERROR_CODE
+int sdhci_wait_for_done(struct sdhci *host, u32 mask);
 void sdhci_read_response(struct sdhci *host, struct mci_cmd *cmd);
 void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
 			     struct mci_data *data, bool dma, u32 *command,
-- 
2.30.2



