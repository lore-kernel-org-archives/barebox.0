Delivery-date: Mon, 07 Jun 2021 12:51:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCqW-00066H-VL
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 12:51:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCqR-0001qi-FW
	for lore@pengutronix.de; Mon, 07 Jun 2021 12:51:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thPHU5jdNl6tf1yI3wcC3CkUcz9w/0tV1iMZbemn1Ag=; b=muu2r9Hbsz7UBT
	E2d6EvowF2fZ9mOy6TOIxebCTNLZ8RL9pg98B8Zezdi5s7y9JrXKnkHPvSpGPjrWuw2CYRBK74Td9
	ujbN4oRyjvDpK0TOp/n9UB5++I18zLcGpyi0jV9WauWdDGaU5U93v8mkS4Z+pIbBjWhZZc/vDa+cR
	6JpKYnDMrt52fLSb3n6qz3PvYclDbLurJFAqpN6fY43zyh2I/h7QeskaL05sbEjMONDTPS0yO/qb1
	8zDqgsigrlY9hH95nheYAcOfTNkK9pFSYotfpw1unWh1bJh6tKd84y9Sq+B8534d5P/14BuMCDWz9
	wajoHFbphjFhFKQgYSGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqCoV-0033cV-2Q; Mon, 07 Jun 2021 10:48:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqCjx-00322G-Fc
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 10:44:20 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0000df-N8; Mon, 07 Jun 2021 12:44:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCjt-0008K5-UU; Mon, 07 Jun 2021 12:44:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 12:44:02 +0200
Message-Id: <20210607104411.23071-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210607104411.23071-1-s.hauer@pengutronix.de>
References: <20210607104411.23071-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_034417_691097_0E1EB404 
X-CRM114-Status: GOOD (  12.69  )
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
Subject: [PATCH 03/12] mci: sdhci: Use SDHCI_MAX_DIV_SPEC_200 define
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux uses SDHCI_MAX_DIV_SPEC_200 for what we have
SDHCI_SPEC_200_MAX_CLK_DIVIDER. Also we have SDHCI_MAX_DIV_SPEC_300
defined in the arasan driver. Use the Linux defines and add them
both to the header file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 2 --
 drivers/mci/dove-sdhci.c   | 2 +-
 drivers/mci/sdhci.h        | 4 +++-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 53492e10d4..e22db4cfa3 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -152,8 +152,6 @@ static int arasan_sdhci_init(struct mci_host *mci, struct device_d *dev)
 	return 0;
 }
 
-#define SDHCI_MAX_DIV_SPEC_300		2046
-
 static u16 arasan_sdhci_get_clock_divider(struct arasan_sdhci_host *host,
 					  unsigned int reqclk)
 {
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index 945c4bb4b1..9c10e67eb8 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -197,7 +197,7 @@ static u16 dove_sdhci_get_clock_divider(struct dove_sdhci *host, u32 reqclk)
 {
 	u16 div;
 
-	for (div = 1; div < SDHCI_SPEC_200_MAX_CLK_DIVIDER; div *= 2)
+	for (div = 1; div < SDHCI_MAX_DIV_SPEC_200; div *= 2)
 		if ((host->mci.f_max / div) <= reqclk)
 			break;
 	div /= 2;
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index fd63cd84de..aa6dd9824e 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -139,9 +139,11 @@
 
 #define  SDHCI_CLOCK_MUL_SHIFT	16
 
-#define SDHCI_SPEC_200_MAX_CLK_DIVIDER	256
 #define SDHCI_MMC_BOOT						0xC4
 
+#define SDHCI_MAX_DIV_SPEC_200	256
+#define SDHCI_MAX_DIV_SPEC_300	2046
+
 struct sdhci {
 	u32 (*read32)(struct sdhci *host, int reg);
 	u16 (*read16)(struct sdhci *host, int reg);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

