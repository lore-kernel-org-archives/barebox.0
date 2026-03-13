Delivery-date: Fri, 13 Mar 2026 14:27:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12YR-000DBJ-1V
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:27:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12YP-0005iW-Ve
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:27:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bxAUg2bN47vTZxW4ZwcqKqU880GO1e5Hl5JjEi5ZhkM=; b=vNDzQCbeWLG7ktujExLqzoCAKn
	inkWm1Zi9h3jEKC1YQ+xUZjJ9tQnO4ETFb3bGe/47o7P7x65+zhUTGme5bob6YvwXeHSO0MP9HbpI
	KLWUKZpBBgxzXAT4vyrctcUTlTH3T/0zjgLrb6Zj4c4PDH2NcCjJTimK/VN+cjZLT3K23YIqCwsDz
	sx0zULsvthvpEQgheGEpM4PBAKbr4zJQy3Y8bRDo4mUwLL9PalRyC8e2F+5NvUqSsQFbNlfzPxAEd
	617wPb7g2tT+5Gd9J7ZFkz6ejTmoK78keNrHAjT79yRLhJRaPj8SSgvHFD3IGJEq5l+h5Ffa3sE0S
	GMBNIG6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XX-00000000EJQ-0Z73;
	Fri, 13 Mar 2026 13:26:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XV-00000000EFK-0X2v
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:26:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=bxAUg2bN47vTZxW4ZwcqKqU880GO1e5Hl5JjEi5ZhkM=; b=LmId2iT/5b+25FIORkWHg3VJ08
	A0EkcxruDrXJOwh9lculww8KL8+Pv3f9HnM3GDP4xIigt8oi37elXixlcE3s0FbiIM8FCZgex091A
	x2G27t7avSjhUv+rAWHG5owHgxy40UO/iqrDjavCwDyl8mcMxkZSix5mFmBEUjQfDhRUVfgWXcFpH
	9BLwLhFuQi09B+7zklwU5flr3sUr17aa3AQBWqaX0uhyVn47R81NFIGRSJh2I+I0ZNGwL7zUe/dOK
	MElfvK4IfIXs81vQ1HGrNYwJ3xZKZxhh72MsYuFEeSzxIkTWUf2GciL/piEY0KZrme7hmMotKFupG
	4tos8ZiQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XQ-00000003NW2-2H65
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:26:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00058S-Ov; Fri, 13 Mar 2026 14:26:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-0005RX-1g;
	Fri, 13 Mar 2026 14:26:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00000009ULB-1m1Z;
	Fri, 13 Mar 2026 14:26:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Mar 2026 14:24:48 +0100
Message-ID: <20260313132631.2257573-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_132649_886223_2C5F0652 
X-CRM114-Status: GOOD (  10.08  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 04/58] mci: am654-sdhci: Wait for transfer complete interrupt with MMC_RSP_BUSY cmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

The MMC_RSP_BUSY flag indicates that we have to wait for the transfer
completion interrupt. Other SDHCI drivers do this, but the am654 driver
missed it.

(cherry picked from commit 0b7c6416b9684a2c304cf18366c5feb3b4a38867)

Link: https://lore.barebox.org/20250828113442.3543907-1-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/am654-sdhci.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index bb67c8bf4693..4ceea226f717 100644
--- a/drivers/mci/am654-sdhci.c
+++ b/drivers/mci/am654-sdhci.c
@@ -458,7 +458,7 @@ static int am654_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 				struct mci_data *data)
 {
 	struct am654_sdhci_plat *host = container_of(mci, struct am654_sdhci_plat, mci);
-	u32 command, xfer;
+	u32 mask, command, xfer;
 	int ret;
 	dma_addr_t dma;
 
@@ -468,6 +468,10 @@ static int am654_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
 
+	mask = SDHCI_INT_CMD_COMPLETE;
+	if (cmd->resp_type & MMC_RSP_BUSY)
+		mask |= SDHCI_INT_XFER_COMPLETE;
+
 	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, 0xe);
 
 	sdhci_setup_data_dma(&host->sdhci, data, &dma);
@@ -480,7 +484,7 @@ static int am654_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
-	ret = sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
+	ret = sdhci_wait_for_done(&host->sdhci, mask);
 	if (ret) {
 		sdhci_teardown_data(&host->sdhci, data, dma);
 		goto error;
-- 
2.47.3



