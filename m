Delivery-date: Thu, 03 Aug 2023 12:52:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVw2-004wSa-7o
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:52:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvy-00028F-N6
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:52:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/yCM7G+R3fhl/3s0AykJSlo8Ns8KxckSKyjDgMGdMhk=; b=hhJMYHbr3sDRmg0lDkR/2/74A1
	mIBxLwMc6HYRmG5fF0j8TtMkx7z8gb57bseQq9sRYI9vWbX43xuvhEOLUZDTP4dkoTrC9k5aM1ECh
	NFzILbvzCXdjAM9v6MVXnoOPaBVqKi6v8vItBZ5eFduXKuZJ1tmzNeRLTQqeqeH4lsT+y65jQz5Jv
	BRG/eJSjhhlnWycIlkEPvtBAY263m8dYkpHUAQfnHZZOGeoJEdStAoz487AS0sAKZYYcglTVTs1kH
	+xIWHp9aFLThCqyHzxMLXAt+Vp9JqY9O5qN/Xc0l80lch1GvP6IwLomhHWfz9cZBEerA1F3yFKzUl
	iQZVGF+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVug-007Ux1-1g;
	Thu, 03 Aug 2023 10:50:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuM-007UfG-0X
	for barebox@bombadil.infradead.org;
	Thu, 03 Aug 2023 10:50:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/yCM7G+R3fhl/3s0AykJSlo8Ns8KxckSKyjDgMGdMhk=; b=U/bZvuofTzRxb7yVLu9zdn5pdQ
	bkzPmD+VjflQgVZnqSGSxatkuncsrCRqes6nkTdKZQnKMn7k/mSFWggF2/mfnhfTWxSWaSJc7UvtT
	re7QjA57+jA1o4pff2qsa+3BKOkFnUvsCCyabPBXaaRtBqXQDvBV6Nv/NaxfmOUc5PmrhPBjBu41W
	pcax8gshjphd5fJc7kOmMEd+UxzbOmQlDD6NWitWkSO9oFMQzt1MZgA2iKRNq7sUk8Hxx23gfQK+2
	fPCv9+SGJ6EgTAyZ7sKc2M/xIsM/w80ez/CtKK5WSz12vXrnHq78fkYA+ycwM7Fgu9XIQgU23Skw+
	+UlWqpJQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuI-00GkgX-1i
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuC-0000xO-T7; Thu, 03 Aug 2023 12:50:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuC-000ovz-8y; Thu, 03 Aug 2023 12:50:08 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAzf-Nh; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:55 +0200
Message-Id: <20230803105003.4088205-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_115014_707060_32BDC04F 
X-CRM114-Status: GOOD (  18.48  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 14/22] mci: sdhci: Add common wait for idle function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Waiting for the controller being idle is a common pattern in the
different SDHCI drivers we have. Add a common function for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c           | 13 ++-----------
 drivers/mci/atmel-sdhci-common.c     | 25 ++++++-------------------
 drivers/mci/dove-sdhci.c             | 23 ++++-------------------
 drivers/mci/mci-bcm2835.c            | 13 +++----------
 drivers/mci/rockchip-dwcmshc-sdhci.c | 16 +++-------------
 drivers/mci/sdhci.c                  | 22 ++++++++++++++++++++++
 drivers/mci/sdhci.h                  |  1 +
 7 files changed, 41 insertions(+), 72 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 71e974c384..bf89f74336 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -149,18 +149,9 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	u32 mask, command, xfer;
 	int ret;
 
-	/* Wait for idle before next command */
-	mask = SDHCI_CMD_INHIBIT_CMD;
-	if (cmd->cmdidx != MMC_CMD_STOP_TRANSMISSION)
-		mask |= SDHCI_CMD_INHIBIT_DATA;
-
-	ret = wait_on_timeout(10 * MSECOND,
-			      !(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & mask));
-	if (ret) {
-		dev_err(host->mci.hw_dev,
-			"SDHCI timeout while waiting for idle\n");
+	ret = sdhci_wait_idle(&host->sdhci, cmd);
+	if (ret)
 		return ret;
-	}
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
 
diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
index 58ba0b9b3d..171737ab01 100644
--- a/drivers/mci/atmel-sdhci-common.c
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -94,21 +94,13 @@ int at91_sdhci_send_command(struct at91_sdhci *host, struct mci_cmd *cmd,
 {
 	unsigned command, xfer;
 	struct sdhci *sdhci = &host->sdhci;
-	u32 mask, state;
+	u32 mask;
 	int status;
 	int ret;
 
-	/* Wait for idle before next command */
-	mask = SDHCI_CMD_INHIBIT_CMD;
-	if (cmd->cmdidx != MMC_CMD_STOP_TRANSMISSION)
-		mask |= SDHCI_CMD_INHIBIT_DATA;
-
-	ret = sdhci_read32_poll_timeout(sdhci, SDHCI_PRESENT_STATE, state,
-					!(state & mask), 100 * USEC_PER_MSEC);
-	if (ret) {
-		dev_err(host->dev, "timeout while waiting for idle\n");
+	ret = sdhci_wait_idle(&host->sdhci, cmd);
+	if (ret)
 		return ret;
-	}
 
 	sdhci_write32(sdhci, SDHCI_INT_STATUS, ~0U);
 
@@ -193,17 +185,12 @@ static int at91_sdhci_set_clock(struct at91_sdhci *host, unsigned clock)
 	struct sdhci *sdhci = &host->sdhci;
 	unsigned clk = 0, clk_div;
 	unsigned reg;
-	u32 present_mask, caps, caps_clk_mult;
+	u32 caps, caps_clk_mult;
 	int ret;
 
-	present_mask = SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA;
-	ret = sdhci_read32_poll_timeout(sdhci, SDHCI_PRESENT_STATE, reg,
-					!(reg & present_mask),
-					100 * USEC_PER_MSEC);
-	if (ret) {
-		dev_warn(host->dev, "Timeout waiting for CMD and DAT Inhibit bits\n");
+	ret = sdhci_wait_idle(&host->sdhci, NULL);
+	if (ret)
 		return ret;
-	}
 
 	sdhci_write16(sdhci, SDHCI_CLOCK_CONTROL, 0);
 
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index 5954058e6b..8a4c4a11b4 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -57,31 +57,16 @@ static int dove_sdhci_wait_for_done(struct dove_sdhci *host, u16 mask)
 static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 				struct mci_data *data)
 {
-	u16 val;
 	u32 command, xfer;
-	u64 start;
 	int ret;
 	unsigned int num_bytes = 0;
 	struct dove_sdhci *host = priv_from_mci_host(mci);
 
-	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
-
-	/* Do not wait for CMD_INHIBIT_DAT on stop commands */
-	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
-		val = SDHCI_CMD_INHIBIT_CMD;
-	else
-		val = SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA;
+	ret = sdhci_wait_idle(&host->sdhci, cmd);
+	if (ret)
+		return ret;
 
-	/* Wait for bus idle */
-	start = get_time_ns();
-	while (1) {
-		if (!(sdhci_read16(&host->sdhci, SDHCI_PRESENT_STATE) & val))
-			break;
-		if (is_timeout(start, 10 * MSECOND)) {
-			dev_err(host->mci.hw_dev, "SDHCI timeout while waiting for idle\n");
-			return -ETIMEDOUT;
-		}
-	}
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
 
 	/* setup transfer data */
 	if (data) {
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 92f4498ea5..2b541e4c05 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -118,7 +118,6 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 		struct mci_data *data) {
 	u32 command, block_data = 0, transfer_mode = 0;
 	int ret;
-	u32 wait_inhibit_mask = SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA;
 	struct bcm2835_mci_host *host = to_bcm2835_host(mci);
 
 	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data, false,
@@ -129,15 +128,9 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 		block_data |= data->blocksize;
 	}
 
-	/* We shouldn't wait for data inihibit for stop commands, even
-	though they might use busy signaling */
-	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
-		wait_inhibit_mask = SDHCI_CMD_INHIBIT_CMD;
-
-	/*Wait for old command*/
-	while (sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE)
-			& wait_inhibit_mask)
-		;
+	ret = sdhci_wait_idle(&host->sdhci, cmd);
+	if (ret)
+		return ret;
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_ENABLE, 0xFFFFFFFF);
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, 0xFFFFFFFF);
diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 41edeb158b..03f463a3f6 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -245,23 +245,13 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 				 struct mci_data *data)
 {
 	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
-	u32 mask, command, xfer;
+	u32 command, xfer;
 	int ret;
 	dma_addr_t dma;
 
-	/* Wait for idle before next command */
-	mask = SDHCI_CMD_INHIBIT_CMD;
-	if (cmd->cmdidx != MMC_CMD_STOP_TRANSMISSION)
-		mask |= SDHCI_CMD_INHIBIT_DATA;
-
-	ret = wait_on_timeout(10 * MSECOND,
-			!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & mask));
-
-	if (ret) {
-		dev_err(host->mci.hw_dev,
-				"SDHCI timeout while waiting for idle\n");
+	ret = sdhci_wait_idle(&host->sdhci, cmd);
+	if (ret)
 		return ret;
-	}
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
 
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 635884e2a2..8c543c1b5b 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -463,6 +463,28 @@ void sdhci_enable_clk(struct sdhci *host, u16 clk)
 	sdhci_write16(host, SDHCI_CLOCK_CONTROL, clk);
 }
 
+int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd)
+{
+	u32 mask;
+	int ret;
+
+	mask = SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA;
+
+	if (cmd && cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
+		mask &= ~SDHCI_CMD_INHIBIT_DATA;
+
+	ret = wait_on_timeout(10 * MSECOND,
+			!(sdhci_read32(host, SDHCI_PRESENT_STATE) & mask));
+
+	if (ret) {
+		dev_err(host->mci->hw_dev,
+				"SDHCI timeout while waiting for idle\n");
+		return -EBUSY;
+	}
+
+	return 0;
+}
+
 void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_clock)
 {
 	u16 clk;
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index fe8c25cb9c..c8e7145d07 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -257,6 +257,7 @@ static inline void sdhci_write8(struct sdhci *host, int reg, u32 val)
 }
 
 #define SDHCI_NO_DMA DMA_ERROR_CODE
+int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd);
 int sdhci_wait_for_done(struct sdhci *host, u32 mask);
 void sdhci_read_response(struct sdhci *host, struct mci_cmd *cmd);
 void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
-- 
2.39.2



