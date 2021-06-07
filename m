Delivery-date: Mon, 07 Jun 2021 12:55:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCv4-0006ER-64
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 12:55:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCuz-0003Bg-Fq
	for lore@pengutronix.de; Mon, 07 Jun 2021 12:55:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9c07CA9mgYZOwiUSto7qSOqAybjYnIZUsW8E/v7WgxE=; b=OHWdlEt9g3Z6R1
	RJ8HYM9TUn24xh3a2vDDSXuf1W6HM2PPBNRBP9UYee4vWchYbT3ArQFGU7+1CHC9VZZ7h4DBm6ra3
	uxqHf2bgjl6M/T7n0QOWijMfD+lC7OuMsyLg+8lp0rYsbycQNLuNLbSNofG+zxZA+dyitXaHr+y2C
	ggxVXCqrrQPDNkGLwddc6fMrVFv7MOYQhSUPncY0eXY7yUNOnFILNLseoZulkZVFwi0sAR2qeSosi
	8cIrEHrFc8ZoHg0EGdB8TtE1SnRCyR7z7t15lMM9aaLfdvfxoiQc8TmvQW88uPS8oM6Ez3Ky2sTMD
	jOelSTEY1AkMRM6tvjjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqCtB-0035SB-5C; Mon, 07 Jun 2021 10:53:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqCk4-00326W-7C
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 10:44:27 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0000di-PG; Mon, 07 Jun 2021 12:44:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0008Kq-07; Mon, 07 Jun 2021 12:44:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 12:44:05 +0200
Message-Id: <20210607104411.23071-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210607104411.23071-1-s.hauer@pengutronix.de>
References: <20210607104411.23071-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_034424_397166_A59F20B3 
X-CRM114-Status: GOOD (  12.05  )
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
Subject: [PATCH 06/12] mci: sdhci: Use Linux defines for SDHCI_HOST_CONTROL
 register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To ease porting and comparing of Linux code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c       | 12 ++++++------
 drivers/mci/atmel-sdhci-common.c | 14 +++++++-------
 drivers/mci/dove-sdhci.c         | 10 +++++-----
 drivers/mci/sdhci.h              | 17 ++++++++++++-----
 4 files changed, 30 insertions(+), 23 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index e22db4cfa3..e02f222345 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -124,7 +124,7 @@ static int arasan_sdhci_reset(struct arasan_sdhci_host *host, u8 mask)
 		u8 ctrl;
 
 		ctrl = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL);
-		ctrl |= SDHCI_CARD_DETECT_TEST_LEVEL | SDHCI_CARD_DETECT_SIGNAL_SELECTION;
+		ctrl |= SDHCI_CTRL_CDTEST_INS | SDHCI_CTRL_CDTEST_INS;
 		sdhci_write8(&host->sdhci, ctrl, SDHCI_HOST_CONTROL);
 	}
 
@@ -200,21 +200,21 @@ static void arasan_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	}
 
 	val = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL) &
-			~(SDHCI_DATA_WIDTH_4BIT | SDHCI_DATA_WIDTH_8BIT);
+			~(SDHCI_CTRL_8BITBUS | SDHCI_CTRL_8BITBUS);
 
 	switch (ios->bus_width) {
 	case MMC_BUS_WIDTH_8:
-		val |= SDHCI_DATA_WIDTH_8BIT;
+		val |= SDHCI_CTRL_8BITBUS;
 		break;
 	case MMC_BUS_WIDTH_4:
-		val |= SDHCI_DATA_WIDTH_4BIT;
+		val |= SDHCI_CTRL_8BITBUS;
 		break;
 	}
 
 	if (ios->clock > 26000000)
-		val |= SDHCI_HIGHSPEED_EN;
+		val |= SDHCI_CTRL_HISPD;
 	else
-		val &= ~SDHCI_HIGHSPEED_EN;
+		val &= ~SDHCI_CTRL_HISPD;
 
 	sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, val);
 }
diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
index b391775b00..d2b777a93c 100644
--- a/drivers/mci/atmel-sdhci-common.c
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -279,9 +279,9 @@ static int at91_sdhci_set_clock(struct at91_sdhci *host, unsigned clock)
 
 	reg = sdhci_read8(sdhci, SDHCI_HOST_CONTROL);
 	if (clock > 26000000)
-		reg |= SDHCI_HIGHSPEED_EN;
+		reg |= SDHCI_CTRL_HISPD;
 	else
-		reg &= ~SDHCI_HIGHSPEED_EN;
+		reg &= ~SDHCI_CTRL_HISPD;
 
 	sdhci_write8(sdhci, SDHCI_HOST_CONTROL, reg);
 
@@ -297,15 +297,15 @@ static int at91_sdhci_set_bus_width(struct at91_sdhci *host, unsigned bus_width)
 
 	switch(bus_width) {
 	case MMC_BUS_WIDTH_8:
-		reg |= SDHCI_DATA_WIDTH_8BIT;
+		reg |= SDHCI_CTRL_8BITBUS;
 		break;
 	case MMC_BUS_WIDTH_4:
-		reg &= ~SDHCI_DATA_WIDTH_8BIT;
-		reg |= SDHCI_DATA_WIDTH_4BIT;
+		reg &= ~SDHCI_CTRL_8BITBUS;
+		reg |= SDHCI_CTRL_8BITBUS;
 		break;
 	default:
-		reg &= ~SDHCI_DATA_WIDTH_8BIT;
-		reg &= ~SDHCI_DATA_WIDTH_4BIT;
+		reg &= ~SDHCI_CTRL_8BITBUS;
+		reg &= ~SDHCI_CTRL_8BITBUS;
 	}
 
 	sdhci_write8(sdhci, SDHCI_HOST_CONTROL, reg);
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index 9c10e67eb8..cafc9dc579 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -224,20 +224,20 @@ static void dove_sdhci_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 
 	/* set bus width */
 	val = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL) &
-		~(SDHCI_DATA_WIDTH_4BIT | SDHCI_DATA_WIDTH_8BIT);
+		~(SDHCI_CTRL_8BITBUS | SDHCI_CTRL_8BITBUS);
 	switch (ios->bus_width) {
 	case MMC_BUS_WIDTH_8:
-		val |= SDHCI_DATA_WIDTH_8BIT;
+		val |= SDHCI_CTRL_8BITBUS;
 		break;
 	case MMC_BUS_WIDTH_4:
-		val |= SDHCI_DATA_WIDTH_4BIT;
+		val |= SDHCI_CTRL_8BITBUS;
 		break;
 	}
 
 	if (ios->clock > 26000000)
-		val |= SDHCI_HIGHSPEED_EN;
+		val |= SDHCI_CTRL_HISPD;
 	else
-		val &= ~SDHCI_HIGHSPEED_EN;
+		val &= ~SDHCI_CTRL_HISPD;
 
 	sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, val);
 
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 872caabde5..0b436d3aa2 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -54,11 +54,18 @@
 #define SDHCI_PRESENT_STATE1					0x26
 #define SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL	0x28
 #define SDHCI_HOST_CONTROL					0x28
-#define  SDHCI_CARD_DETECT_SIGNAL_SELECTION	BIT(7)
-#define  SDHCI_CARD_DETECT_TEST_LEVEL		BIT(6)
-#define  SDHCI_DATA_WIDTH_8BIT			BIT(5)
-#define  SDHCI_HIGHSPEED_EN			BIT(2)
-#define  SDHCI_DATA_WIDTH_4BIT			BIT(1)
+#define  SDHCI_CTRL_LED         BIT(0)
+#define  SDHCI_CTRL_4BITBUS     BIT(1)
+#define  SDHCI_CTRL_HISPD       BIT(2)
+#define  SDHCI_CTRL_DMA_MASK    0x18
+#define   SDHCI_CTRL_SDMA       0x00
+#define   SDHCI_CTRL_ADMA1      0x08
+#define   SDHCI_CTRL_ADMA32     0x10
+#define   SDHCI_CTRL_ADMA64     0x18
+#define   SDHCI_CTRL_ADMA3      0x18
+#define  SDHCI_CTRL_8BITBUS     BIT(5)
+#define  SDHCI_CTRL_CDTEST_INS  BIT(6)
+#define  SDHCI_CTRL_CDTEST_EN   BIT(7)
 #define SDHCI_POWER_CONTROL					0x29
 #define  SDHCI_POWER_ON				0x01
 #define  SDHCI_POWER_180			0x0A
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

