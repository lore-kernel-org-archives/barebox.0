Delivery-date: Thu, 21 May 2026 10:06:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyQB-002A6c-1z
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 10:06:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyQB-00069r-05
	for lore@pengutronix.de; Thu, 21 May 2026 10:06:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xphQ5p0cwUNGmd0ctlbZ261tPDAYTWJka2TF4pLj+uY=; b=BjsskbDUiUE2zQ/XFD9CBajMAv
	97NGUDEZ7j4GLpB1wuekqivr9JBfNCBShHRIk54hk8VXKl7nHF3F+5WFb0ArYRHWKcIqgbRi/yEm8
	2nqKuZE9+3pxTRUotbzPyObgqGY77JWitBZgMPCfe4GtWztcBEwp5KFjsvUvcyd7DciuYQxLw372F
	Vz7zHnBjpaxpABo0tZ88X8DgPZjHa4JrnJLgFCmd0fPzoRA5GJYzrM6sXvjnU+HUQWumHyDP5OMIi
	6Lja0CBSsznKygB4lmT7cNOhoXr8yc+ACCZXwX8+S9hMCk34woe52Yu+c5noYOOuLX6FWLi+l107C
	QmOVgaAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPyP3-000000072iP-2YDE;
	Thu, 21 May 2026 08:05:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPyOz-000000072gP-2ex9
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 08:05:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPyOw-0005u8-Vx; Thu, 21 May 2026 10:05:07 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPyOw-0014JT-1A;
	Thu, 21 May 2026 10:05:06 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPyOw-0000000DRa3-3ebS;
	Thu, 21 May 2026 10:05:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 May 2026 10:05:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260521-rockchip-emmc-fixes-v1-1-c91908ca1fb5@pengutronix.de>
References: <20260521-rockchip-emmc-fixes-v1-0-c91908ca1fb5@pengutronix.de>
In-Reply-To: <20260521-rockchip-emmc-fixes-v1-0-c91908ca1fb5@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779350706; l=1294;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=UHDzf/nzSanYXLCzAI9vFwR5IN0FJRv8x18C1la3mN0=;
 b=gq11u0nzpannc3nPhIMoy1jNVARA1gmKX74zD748/xMy4XVtdKTHYmnzbqdkDRQBo18GK0+jr
 SnXs8Hi52R1D2sFSAYZMCO5VigjUgLpCF03grw+yerZ6KnqgxHvAJ8l
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_010509_683683_DEE78FD4 
X-CRM114-Status: UNSURE (   9.76  )
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
Subject: [PATCH 1/3] mci: rockchip-dwcmshc-sdhci: poll DATA_AVAIL for
 tuning commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Per SDHCI v3.00 the controller only generates Buffer Read Ready
(SDHCI_INT_DATA_AVAIL) during a tuning sequence; CMD_COMPLETE does
not fire. Switch the wait mask for CMD19/21 so HS200 tuning can
converge. Mirrors the arasan-sdhci driver.

This is done only to put the finger on this issue. The next commit
will replace the rockchip specific rk_sdhci_send_cmd() with the
generic sdhci_send_command() which does the same.

Assisted-by: Claude Opus 4.7
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 57d5fe1369..1fdea7c4ab 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -333,6 +333,10 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
+	/* CMD19/21 generate _only_ Buffer Read Ready interrupt */
+	if (mmc_op_tuning(cmd->cmdidx))
+		mask = SDHCI_INT_DATA_AVAIL;
+
 	ret = sdhci_wait_for_done(&host->sdhci, mask);
 	if (ret) {
 		sdhci_teardown_data(&host->sdhci, data, dma);

-- 
2.47.3



