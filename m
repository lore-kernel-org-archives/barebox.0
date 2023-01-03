Delivery-date: Tue, 03 Jan 2023 23:06:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pCpQg-000nrj-Aj
	for lore@lore.pengutronix.de; Tue, 03 Jan 2023 23:06:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pCpQe-000702-EQ
	for lore@pengutronix.de; Tue, 03 Jan 2023 23:06:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sDxoLjXJnKUBPB4dhLT4NsBIiLzpK1SCkSPeLrj+6zI=; b=1SbSWnqwPhrCJXmFmiWY1JSLGe
	U5+U5xsh6jPHRm38xO3Iye/wLkW8QeYL/fVDqP7lGpUwhG4DVt7WkBV75PRuyxh5w0bZ6QjP59n+Y
	yGzujAZFiZ0pcS9GUVZGjzYZa3XQK7yvwU6AYdgJTt6ag+HXmWhnuf8Gm5LXcu20EB7GSZGDgomE/
	RU2RvL5ihW2FktEnZKJ8yinv59g6v/ySN7424/wVddGEX2HsD7+RyIRDZ5ThcDuE30XlB4yMvu5Rx
	a9MOATMVlnioMNvJpiP4H8JZ7/JPP2SqtMU2T/4FDPGf2u2Z4fyUY7NcsBc9a4uzu9+VpMNw06d5p
	ud5lh8WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCpPC-005KzE-Q2; Tue, 03 Jan 2023 22:05:10 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCpNf-005KjF-ST
	for barebox@lists.infradead.org; Tue, 03 Jan 2023 22:03:37 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 827DD60007;
	Tue,  3 Jan 2023 22:03:25 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>,
	Michael Graichen <michael.graichen@hotmail.com>,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>,
	Yann Sionneau <ysionneau@kalray.eu>
Date: Tue,  3 Jan 2023 23:03:17 +0100
Message-Id: <20230103220317.466767-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_140336_119308_28A79197 
X-CRM114-Status: GOOD (  12.23  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: sdhci: arasan: fix probing eMMC without no-sd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Usual procedure when calling the detect callback of a MCI host driver is
to assume the connected card is a SD-Card and on timeout, treat it as
MMC instead. The Arasan driver failed to do this properly leading to the
need to specify no-sd to get eMMCs working. This is because the driver
only handled software timeouts gracefully: The MCI host itself may also
report timeout and it should not be treated as an error and instead
should be silently passed along as -ETIMEDOUT, so the MCI core can check
against it and fall back to eMMC after a failed probe for SD.

Reported-by: Michael Graichen <michael.graichen@hotmail.com>
Reported-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Yann Sionneau <ysionneau@kalray.eu>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/mci/arasan-sdhci.c | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 22389503becf..00a8ceed6836 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -136,16 +136,17 @@ static void arasan_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 static int arasan_sdhci_wait_for_done(struct arasan_sdhci_host *host, u32 mask)
 {
 	u64 start = get_time_ns();
-	u16 stat;
-	u16 error;
+	u32 stat;
 
 	do {
-		stat = sdhci_read16(&host->sdhci, SDHCI_INT_NORMAL_STATUS);
+		stat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
+
+		if (stat & SDHCI_INT_TIMEOUT)
+			return -ETIMEDOUT;
+
 		if (stat & SDHCI_INT_ERROR) {
-			error = sdhci_read16(&host->sdhci,
-					     SDHCI_INT_ERROR_STATUS);
 			dev_err(host->mci.hw_dev, "SDHCI_INT_ERROR: 0x%08x\n",
-				error);
+				stat);
 			return -EPERM;
 		}
 
@@ -159,8 +160,11 @@ static int arasan_sdhci_wait_for_done(struct arasan_sdhci_host *host, u32 mask)
 	return 0;
 }
 
-static void print_error(struct arasan_sdhci_host *host, int cmdidx)
+static void print_error(struct arasan_sdhci_host *host, int cmdidx, int ret)
 {
+	if (ret == -ETIMEDOUT)
+		return;
+
 	dev_err(host->mci.hw_dev,
 		"error while transferring data for command %d\n", cmdidx);
 	dev_err(host->mci.hw_dev, "state = 0x%08x , interrupt = 0x%08x\n",
@@ -210,10 +214,8 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
 	ret = arasan_sdhci_wait_for_done(host, mask);
-	if (ret == -EPERM)
+	if (ret)
 		goto error;
-	else if (ret)
-		return ret;
 
 	sdhci_read_response(&host->sdhci, cmd);
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, mask);
@@ -223,7 +225,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 error:
 	if (ret) {
-		print_error(host, cmd->cmdidx);
+		print_error(host, cmd->cmdidx, ret);
 		arasan_sdhci_reset(host, BIT(1)); // SDHCI_RESET_CMD
 		arasan_sdhci_reset(host, BIT(2)); // SDHCI_RESET_DATA
 	}
-- 
2.38.1



