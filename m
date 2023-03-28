Delivery-date: Tue, 28 Mar 2023 12:11:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph6Iz-00HUd5-5n
	for lore@lore.pengutronix.de; Tue, 28 Mar 2023 12:11:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph6Iz-00078s-3i
	for lore@pengutronix.de; Tue, 28 Mar 2023 12:11:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xtGVULAD0fRQjYG9Hylku5dtk6f+5BNsT6DtS0mW2gI=; b=3iommFWwH6qi0MNrT2r9aLDtdi
	SQp7S5E70tEgQIs5IoqduIIAF3Q+5ZHReoZyWyg4kNpTj/eKG5M046vndtcnDtkxaX9I4/4paP0ym
	Of6JhilzW9T+HQQeO7raIpci7Mrvu9J76JzXLfsULylO1MaBzHLKgPwi3N6VkH/VjAkCBVhUnXA0I
	L0Rf6ivuy2+H9UtErRXpqb/yIHV6Dy5MarNps82r++pVchy+S6JYVhpy0c73xFzy3o3kssR37HpEm
	mznATRud0mrd2pW/9+7/7oRj2fas04+K2Ol7oornOCGIwRqN7jQ4rI6kVCLqPjIq2PDv6dZj2kJO/
	g8vbpNSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph6Hw-00DsF9-1r;
	Tue, 28 Mar 2023 10:10:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph6Ht-00DsDD-0A
	for barebox@lists.infradead.org;
	Tue, 28 Mar 2023 10:10:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph6Hr-0006vi-Sf; Tue, 28 Mar 2023 12:10:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph6Hr-007HdY-8f; Tue, 28 Mar 2023 12:10:43 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph6Hq-00HDEF-6f; Tue, 28 Mar 2023 12:10:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Mar 2023 12:10:36 +0200
Message-Id: <20230328101037.4101089-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_031045_087627_0867DECC 
X-CRM114-Status: GOOD (  11.86  )
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
Subject: [PATCH 1/2] mci: rockchip-dwcmshc-sdhci: use sdhci_reset()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have sdhci_reset() which does the same as the driver specific
variant. Use the common function instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 20 +++-----------------
 1 file changed, 3 insertions(+), 17 deletions(-)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index a98600cc4c..e1eb4fc788 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -87,26 +87,12 @@ static int rk_sdhci_card_present(struct mci_host *mci)
 	return !!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_CARD_DETECT);
 }
 
-static int rk_sdhci_reset(struct rk_sdhci_host *host, u8 mask)
-{
-	sdhci_write8(&host->sdhci, SDHCI_SOFTWARE_RESET, mask);
-
-	/* wait for reset completion */
-	if (wait_on_timeout(100 * MSECOND,
-			!(sdhci_read8(&host->sdhci, SDHCI_SOFTWARE_RESET) & mask))){
-		dev_err(host->mci.hw_dev, "SDHCI reset timeout\n");
-		return -ETIMEDOUT;
-	}
-
-	return 0;
-}
-
 static int rk_sdhci_init(struct mci_host *mci, struct device *dev)
 {
 	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
 	int ret;
 
-	ret = rk_sdhci_reset(host, SDHCI_RESET_ALL);
+	ret = sdhci_reset(&host->sdhci, SDHCI_RESET_ALL);
 	if (ret)
 		return ret;
 
@@ -274,8 +260,8 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 error:
 	if (ret) {
 		print_error(host, cmd->cmdidx);
-		rk_sdhci_reset(host, BIT(1)); /* SDHCI_RESET_CMD */
-		rk_sdhci_reset(host, BIT(2)); /* SDHCI_RESET_DATA */
+		sdhci_reset(&host->sdhci, SDHCI_RESET_CMD);
+		sdhci_reset(&host->sdhci, SDHCI_RESET_DATA);
 	}
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
-- 
2.39.2



