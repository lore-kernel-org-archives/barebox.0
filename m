Delivery-date: Thu, 03 Aug 2023 12:51:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVve-004wPW-1R
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:51:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvc-0001rn-6C
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:51:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WpQBfdGoIMrBJieBA1XAnN0rqOoxPGQ3cdtZncrYGWc=; b=M/cHNQ90eaikMKDWDVwNp7Aa6n
	tlCfEW93hSTXXGmb9uhyXZdlYi+grxJtcMNYwjAM0zgx4pcqeFoQnuI2olxd4YuYid+hhRbiwpE1U
	sdpx4ChfYgxLZz+VdtKMibMCYXsibugHSeIwcnkCYq93szlhRZ0/0iYLFSSqx40ueQJSxgxeZ8UD8
	/+58nL/SlVuIhxAVlPPq3Nbcr6w/C38UnPahHpcswVpu/7LpVBTU4AHyr6SOxJBcnBcTmKvIkqqOa
	ZQdPymx4PzFRtafM1X3wTnIiJdbnyRPwOqGfZ5sc5xqBlZ7HdRXUC7nk+A2ppVyBTfT4hydgr6KI3
	tuTNlBxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuX-007Uo2-1M;
	Thu, 03 Aug 2023 10:50:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuC-007UXQ-2J
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuB-0000ur-Hs; Thu, 03 Aug 2023 12:50:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuA-000ovC-OW; Thu, 03 Aug 2023 12:50:06 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAzj-Oh; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:56 +0200
Message-Id: <20230803105003.4088205-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_035008_784958_A49A8CCE 
X-CRM114-Status: GOOD (  10.95  )
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
Subject: [PATCH 15/22] mci: sdhci: wait for idle before stopping clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We should wait for the controller being idle before stopping the clock.
Some SDHCI controllers like the one found on TI AM62x SoCs do not work
properly without it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/sdhci.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 8c543c1b5b..6d3c695372 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -493,6 +493,8 @@ void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_
 
 	host->mci->clock = 0;
 
+	sdhci_wait_idle(host, NULL);
+
 	sdhci_write16(host, SDHCI_CLOCK_CONTROL, 0);
 
 	if (clock == 0)
-- 
2.39.2



