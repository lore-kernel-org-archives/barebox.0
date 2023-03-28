Delivery-date: Tue, 28 Mar 2023 12:11:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph6J4-00HUdh-Fc
	for lore@lore.pengutronix.de; Tue, 28 Mar 2023 12:11:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph6J4-0007BM-Dt
	for lore@pengutronix.de; Tue, 28 Mar 2023 12:11:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cRa7Jd0Tj5a9knKVOczQReyl5l7CX3BaBi5h5t4vzP8=; b=iG+vMxDcFD1wEcGn/XUuu+/Mpj
	hW7t/ETzUja1XJXNqtgCmRM3P2OaacAWht9ubkfgKkYrH03B0+lVLuPIeuq4oh4Xr3x90w32bw8c/
	eoPfvr97jEYZB723rgKyXt55X16YjKXmfboEVG1MzAjJazRQnDgmteqJz7mmMa5d0UA00jxsoX360
	OZHHIoshcf2vmmH+Yyt+BAFNPsJEZJIyWpNrAyjWp87FE5Xz0/etfccKhlCfQ1S5YlMnF3/ERaSgw
	2DVuQdqz+/0cifCvf+BpSGC1VEbulj7Ms+iAMink2j/Ko9XZRLntOt6+yUqI3/twZl1SckdT9+q/y
	9g+c1bvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph6Hv-00DsEt-2g;
	Tue, 28 Mar 2023 10:10:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph6Ht-00DsDA-04
	for barebox@lists.infradead.org;
	Tue, 28 Mar 2023 10:10:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph6Hr-0006vf-NO; Tue, 28 Mar 2023 12:10:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph6Hr-007HdV-3A; Tue, 28 Mar 2023 12:10:43 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph6Hq-00HDES-7B; Tue, 28 Mar 2023 12:10:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Mar 2023 12:10:37 +0200
Message-Id: <20230328101037.4101089-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230328101037.4101089-1-s.hauer@pengutronix.de>
References: <20230328101037.4101089-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_031045_057164_C608BE93 
X-CRM114-Status: GOOD (  11.91  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] mci: arasan: use sdhci_reset()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have sdhci_reset(), use it instead of open coded variant in the
driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 650de22b69..0b839ee7dc 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -73,14 +73,11 @@ static int arasan_sdhci_card_write_protected(struct mci_host *mci)
 
 static int arasan_sdhci_reset(struct arasan_sdhci_host *host, u8 mask)
 {
-	sdhci_write8(&host->sdhci, SDHCI_SOFTWARE_RESET, mask);
+	int ret;
 
-	/* wait for reset completion */
-	if (wait_on_timeout(100 * MSECOND,
-			    !(sdhci_read8(&host->sdhci, SDHCI_SOFTWARE_RESET) & mask))) {
-		dev_err(host->mci.hw_dev, "SDHCI reset timeout\n");
-		return -ETIMEDOUT;
-	}
+	ret = sdhci_reset(&host->sdhci, mask);
+	if (ret)
+		return ret;
 
 	if (host->quirks & SDHCI_ARASAN_QUIRK_FORCE_CDTEST) {
 		u8 ctrl;
@@ -199,8 +196,8 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 error:
 	if (ret) {
 		print_error(host, cmd->cmdidx, ret);
-		arasan_sdhci_reset(host, BIT(1)); // SDHCI_RESET_CMD
-		arasan_sdhci_reset(host, BIT(2)); // SDHCI_RESET_DATA
+		arasan_sdhci_reset(host, SDHCI_RESET_CMD);
+		arasan_sdhci_reset(host, SDHCI_RESET_DATA);
 	}
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
-- 
2.39.2



