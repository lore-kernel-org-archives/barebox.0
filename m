Delivery-date: Wed, 16 Jun 2021 09:41:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQB3-0000zz-Io
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 09:41:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQB2-000084-P3
	for lore@pengutronix.de; Wed, 16 Jun 2021 09:41:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hL2/Fzg8Q/IGhG960wXyfNVvrq0F41lsDE/nNDH0Cgo=; b=h9MvJ52xP/ET6D
	dNzrayywey1XX6H3T7xoYkx4DYCzSqWpUcQbO94EbtLgdi0Z67nZU0ABRVak0aPD7jlGBpcpHZ0e/
	gPf4ll7daaxT47o8DijRzEjREwQf4T6D1WBGojMgvPIrcUNxO0+NfKjfPAPTcOhakQh279tgEZQeq
	A2o0Qlm3yfiMxWPAQlQIlJxjGJWE+JKHTyhyHs4Z37u0Kd1MXnxyKMWFUZm85JbWoHSjvWYGn2tAb
	MQiCFh4A9iBJhlbOAgMgJq/hIHzaHyzzrM/RKqUZzS0vBX5GvD44Cnm2QJ6ObPhmCVV3U4D6bfO+C
	cOK1h3hchI936/e6K93w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltQ9k-005EQW-Ro; Wed, 16 Jun 2021 07:40:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltQ9a-005EMl-2M
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 07:40:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9W-0007zC-NJ; Wed, 16 Jun 2021 09:39:58 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9V-0001qD-SO; Wed, 16 Jun 2021 09:39:57 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9V-007rG0-Ro; Wed, 16 Jun 2021 09:39:57 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Graichen <michael.graichen@hotmail.com>
Date: Wed, 16 Jun 2021 09:39:55 +0200
Message-Id: <20210616073957.1872965-4-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210616073957.1872965-1-m.tretter@pengutronix.de>
References: <20210616073957.1872965-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_004002_196781_BCBD1392 
X-CRM114-Status: UNSURE (   8.89  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] mci: arasan: remove duplicate stop clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The clock is already stopped in sdhci_set_clock(). Stopping the clock in
the arasan driver is not necessary.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 7306dac70b69..732f838d8395 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -118,9 +118,6 @@ static void arasan_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
 	u16 val;
 
-	/* stop clock */
-	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, 0);
-
 	if (ios->clock)
 		sdhci_set_clock(&host->sdhci, ios->clock, host->sdhci.max_clk);
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

