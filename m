Delivery-date: Mon, 07 Jun 2021 12:55:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCuN-0006DP-JN
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 12:55:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCuI-0002ud-FQ
	for lore@pengutronix.de; Mon, 07 Jun 2021 12:55:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uN1qSAVqilmjjEQmRFD7Tiw6ampYqSyKwjXQDyIh4DA=; b=ZOtsv9Mc0BpdoQ
	4jz4BdUJ87WwXJs3xXHZFhKGF5uHsbwPbmiO5URd77a1S1AphuCTAUJrCvJv8Pnfqz88ME70UnsjX
	LfC7udzaMhFjXrOLjwbt0VrOzDd0H6pDgqKDgQ2meCyoGtP/T16r7NNc7ANuAhkeeGfkigALzEcJD
	yNzwwnw76eJ/BN/TvSr5ZYrzUIcCyhNaxfDCp0ITpiwpmpOssUjmbY2g7JqkmwdZBfRLi+dzysxGp
	oA5m6FvL9fKMX94v57MTE+GBwZlE3HlkecNuvGrQoVQGisDHl/twNAQRAcdNjX7hmx6ntZg7SioX8
	hXXYDqkaFRzwGVaFAJYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqCse-0035Es-1m; Mon, 07 Jun 2021 10:53:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqCk4-00326Z-GZ
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 10:44:27 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0000dm-Rl; Mon, 07 Jun 2021 12:44:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0008Lu-2F; Mon, 07 Jun 2021 12:44:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 12:44:09 +0200
Message-Id: <20210607104411.23071-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210607104411.23071-1-s.hauer@pengutronix.de>
References: <20210607104411.23071-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_034424_633474_EBF08F66 
X-CRM114-Status: GOOD (  12.35  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/12] mci: sdhci: arasan: Use sdhci_set_clock()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We now have a function to calculate the clock divider. Use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 40 ++------------------------------------
 1 file changed, 2 insertions(+), 38 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 180f0042bf..8a5e85109c 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -152,21 +152,6 @@ static int arasan_sdhci_init(struct mci_host *mci, struct device_d *dev)
 	return 0;
 }
 
-static u16 arasan_sdhci_get_clock_divider(struct arasan_sdhci_host *host,
-					  unsigned int reqclk)
-{
-	u16 div;
-
-	for (div = 1; div < SDHCI_MAX_DIV_SPEC_300; div += 2)
-		if ((host->mci.f_max / div) <= reqclk)
-			break;
-	div /= 2;
-
-	return div;
-}
-
-#define SDHCI_FREQ_SEL_10_BIT(x)	(((x) & 0x300) >> 2)
-
 static void arasan_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
@@ -175,29 +160,8 @@ static void arasan_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	/* stop clock */
 	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, 0);
 
-	if (ios->clock) {
-		u64 start;
-
-		/* set & start clock */
-		val = arasan_sdhci_get_clock_divider(host, ios->clock);
-		/* Bit 6 & 7 are upperbits of 10bit divider */
-		val = SDHCI_FREQ_SEL(val) | SDHCI_FREQ_SEL_10_BIT(val);
-		val |= SDHCI_CLOCK_INT_EN;
-		sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, val);
-
-		start = get_time_ns();
-		while (!(sdhci_read16(&host->sdhci, SDHCI_CLOCK_CONTROL) &
-			SDHCI_CLOCK_INT_STABLE)) {
-			if (is_timeout(start, 20 * MSECOND)) {
-				dev_err(host->mci.hw_dev,
-						"SDHCI clock stable timeout\n");
-				return;
-			}
-		}
-		/* enable bus clock */
-		sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL,
-				    val | SDHCI_CLOCK_CARD_EN);
-	}
+	if (ios->clock)
+		sdhci_set_clock(&host->sdhci, ios->clock, host->sdhci.max_clk);
 
 	sdhci_set_bus_width(&host->sdhci, ios->bus_width);
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

