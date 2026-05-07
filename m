Delivery-date: Thu, 07 May 2026 09:09:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKsr8-001sho-1S
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 09:09:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKsr3-0001cW-Cx
	for lore@pengutronix.de; Thu, 07 May 2026 09:09:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h5D3/CZzHwh/yNJWD/RNo7OP32Pq6eH7+qKwfUKLyU4=; b=TNRa0QW3t8+p4N7xrpXfJX51/Y
	E0+RWTIb/uqdftfx7xypkDY784hdcbVbI+BA4bTxYecKDSltTQaOl4rGxXNOo1wFtis4+RB0bCAYY
	BeAvJi1akZ3baYjPEKo0lHvATgEkxB1G3aGgSHS5pKs/DM8cTJ66GHHdIAtPctIYXLd0PUS/prHWF
	4OG4TzGoOh91ioTJ9H9Uby+Mej4ywweQd1lbvERhgdxsTgBkc0Ba1oyZhXUo8ecGaATYWvvfQVARB
	j/3RnzAQgv5CcjsoeR9j+ZqgmOTNtxNpWrGL4XRSFwVFoq3vgrQhhVAcBD7koOiMkc1pCB3JToguT
	0LAQKCLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKsl3-00000002yy8-08Ho;
	Thu, 07 May 2026 07:02:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKsl2-00000002ywQ-0nMO
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 07:02:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-0006NS-Tb; Thu, 07 May 2026 09:02:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-000sMb-0Z;
	Thu, 07 May 2026 09:02:48 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-0000000BYFq-26bs;
	Thu, 07 May 2026 09:02:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 07 May 2026 09:02:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260507-rockchip-emmc-v1-3-5e8109e8059d@pengutronix.de>
References: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
In-Reply-To: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778137368; l=1618;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Kt2kNwO+kp8Y/nIvPHzT+IKKuaI2o16pOfKCgRb/ehs=;
 b=UKs277BFqsUfiyucmU6LIz2x80PC6M7WYrRe0loDayVbEunI3uwnuPM3aGCAre2RLUFN7PNHn
 oVzcnc56IwJAWpkRcFGhiKhobs2R8EAA7N6/X9STyGc7KhNyQYNoicg
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_000252_237360_64D2E31A 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] mci: sdhci: rockchip: Wait for transfer complete
 interrupt with MMC_RSP_BUSY cmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The MMC_RSP_BUSY flag indicates that we have to wait for the transfer
completion interrupt. Other SDHCI drivers do this, but the rockchip driver
missed it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 398c258fb9..2605a1368f 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -251,7 +251,7 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
 	struct mci_data *data = cmd->data;
-	u32 command, xfer;
+	u32 mask, command, xfer;
 	int ret;
 	dma_addr_t dma;
 
@@ -261,6 +261,10 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
 
+	mask = SDHCI_INT_CMD_COMPLETE;
+	if (cmd->resp_type & MMC_RSP_BUSY)
+		mask |= SDHCI_INT_XFER_COMPLETE;
+
 	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, 0xe);
 
 	sdhci_setup_data_dma(&host->sdhci, data, &dma);
@@ -274,7 +278,7 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
-	ret = sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
+	ret = sdhci_wait_for_done(&host->sdhci, mask);
 	if (ret) {
 		sdhci_teardown_data(&host->sdhci, data, dma);
 		goto error;

-- 
2.47.3



