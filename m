Delivery-date: Mon, 07 Jun 2021 12:52:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCru-000697-Id
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 12:52:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCro-0002JT-Ld
	for lore@pengutronix.de; Mon, 07 Jun 2021 12:52:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujIv28kIKDfXJeQBABconOycpeqQIC3LYj4q71cKcuY=; b=a/ZTnWAGsctYzj
	Ntm+u8q8LCJYdMwuTQePYlR8+/lV7ttzDKanBnREou/SlaneNVVv9U0eS+yt/A8gHezNdu9KeLG+9
	qw2KKFqgKjgocZvJmkbCvXY92MjfSgUiERTNkK7CpyVwhAW+AXzN/vaOrSizgh2W5YNMS/7eAA87J
	pY1WxNwaRK1i48toREune3kVdOwhJJFMVDp9MSRdpv4T/WRW6lbcH4QK4Qe8AJ0w/uAtcCgqNuKmj
	auFxJ/2iySYXuw+cSZfKbM12lCbOXoNxwJYT4zN5rA+llKOTmq/GRkmnD57mk/RjszSEZ6FEQtSYQ
	m2bbxIP/4u3p6B0OT04w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqCq0-00346P-9o; Mon, 07 Jun 2021 10:50:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqCjx-00322J-Fa
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 10:44:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0000dl-S4; Mon, 07 Jun 2021 12:44:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0008Lb-1m; Mon, 07 Jun 2021 12:44:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 12:44:08 +0200
Message-Id: <20210607104411.23071-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210607104411.23071-1-s.hauer@pengutronix.de>
References: <20210607104411.23071-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_034417_701434_675EF39C 
X-CRM114-Status: GOOD (  13.07  )
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
Subject: [PATCH 09/12] mci: sdhci: Use Linux defines for SDHCI_CLOCK_CONTROL
 register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Convert another register to use the Linux defines.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c       |  6 +++---
 drivers/mci/atmel-sdhci-common.c |  6 +++---
 drivers/mci/dove-sdhci.c         |  6 +++---
 drivers/mci/sdhci.h              | 13 +++++++------
 4 files changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 7bd98c0a96..180f0042bf 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -182,12 +182,12 @@ static void arasan_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 		val = arasan_sdhci_get_clock_divider(host, ios->clock);
 		/* Bit 6 & 7 are upperbits of 10bit divider */
 		val = SDHCI_FREQ_SEL(val) | SDHCI_FREQ_SEL_10_BIT(val);
-		val |= SDHCI_INTCLOCK_EN;
+		val |= SDHCI_CLOCK_INT_EN;
 		sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, val);
 
 		start = get_time_ns();
 		while (!(sdhci_read16(&host->sdhci, SDHCI_CLOCK_CONTROL) &
-			SDHCI_INTCLOCK_STABLE)) {
+			SDHCI_CLOCK_INT_STABLE)) {
 			if (is_timeout(start, 20 * MSECOND)) {
 				dev_err(host->mci.hw_dev,
 						"SDHCI clock stable timeout\n");
@@ -196,7 +196,7 @@ static void arasan_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 		}
 		/* enable bus clock */
 		sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL,
-				    val | SDHCI_SDCLOCK_EN);
+				    val | SDHCI_CLOCK_CARD_EN);
 	}
 
 	sdhci_set_bus_width(&host->sdhci, ios->bus_width);
diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
index d2b777a93c..5a734d0d47 100644
--- a/drivers/mci/atmel-sdhci-common.c
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -262,19 +262,19 @@ static int at91_sdhci_set_clock(struct at91_sdhci *host, unsigned clock)
 	clk |= SDHCI_FREQ_SEL(clk_div);
 	clk |= ((clk_div & SDHCI_DIV_HI_MASK) >> SDHCI_DIV_MASK_LEN)
 		<< SDHCI_DIVIDER_HI_SHIFT;
-	clk |= SDHCI_INTCLOCK_EN;
+	clk |= SDHCI_CLOCK_INT_EN;
 
 	sdhci_write16(sdhci, SDHCI_CLOCK_CONTROL, clk);
 
 	ret = sdhci_read32_poll_timeout(sdhci, SDHCI_CLOCK_CONTROL, clk,
-					clk & SDHCI_INTCLOCK_STABLE,
+					clk & SDHCI_CLOCK_INT_STABLE,
 					20 * USEC_PER_MSEC);
 	if (ret) {
 		dev_warn(host->dev, "Timeout waiting for clock stable\n");
 		return ret;
 	}
 
-	clk |= SDHCI_SDCLOCK_EN;
+	clk |= SDHCI_CLOCK_CARD_EN;
 	sdhci_write16(sdhci, SDHCI_CLOCK_CONTROL, clk);
 
 	reg = sdhci_read8(sdhci, SDHCI_HOST_CONTROL);
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index cafc9dc579..f4f8dabba1 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -244,13 +244,13 @@ static void dove_sdhci_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	/* set bus clock */
 	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, 0);
 	val = dove_sdhci_get_clock_divider(host, ios->clock);
-	val = SDHCI_INTCLOCK_EN | SDHCI_FREQ_SEL(val);
+	val = SDHCI_CLOCK_INT_EN | SDHCI_FREQ_SEL(val);
 	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, val);
 
 	/* wait for internal clock stable */
 	start = get_time_ns();
 	while (!(sdhci_read16(&host->sdhci, SDHCI_CLOCK_CONTROL) &
-			SDHCI_INTCLOCK_STABLE)) {
+			SDHCI_CLOCK_INT_STABLE)) {
 		if (is_timeout(start, 20 * MSECOND)) {
 			dev_err(host->mci.hw_dev, "SDHCI clock stable timeout\n");
 			return;
@@ -258,7 +258,7 @@ static void dove_sdhci_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	}
 
 	/* enable bus clock */
-	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, val | SDHCI_SDCLOCK_EN);
+	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, val | SDHCI_CLOCK_CARD_EN);
 }
 
 static int dove_sdhci_mci_init(struct mci_host *mci, struct device_d *dev)
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 0b436d3aa2..2605ecb535 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -75,17 +75,18 @@
 #define  SDHCI_BUS_VOLTAGE(v)			((v) << 1)
 #define  SDHCI_BUS_POWER_EN			BIT(0)
 #define SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET	0x2c
-#define SDHCI_CLOCK_CONTROL					0x2c
+#define SDHCI_CLOCK_CONTROL					0x2C
 #define  SDHCI_DIVIDER_SHIFT			8
 #define  SDHCI_DIVIDER_HI_SHIFT			6
 #define  SDHCI_DIV_MASK				0xFF
-#define  SDHCI_DIV_HI_MASK			0x300
 #define  SDHCI_DIV_MASK_LEN			8
-#define  SDHCI_FREQ_SEL(x)			(((x) & 0xff) << 8)
+#define  SDHCI_FREQ_SEL(x)                     (((x) & 0xff) << 8)
+#define  SDHCI_DIV_HI_MASK			0x300
 #define  SDHCI_PROG_CLOCK_MODE			BIT(5)
-#define  SDHCI_SDCLOCK_EN			BIT(2)
-#define  SDHCI_INTCLOCK_STABLE			BIT(1)
-#define  SDHCI_INTCLOCK_EN			BIT(0)
+#define  SDHCI_CLOCK_CARD_EN			BIT(2)
+#define  SDHCI_CLOCK_PLL_EN			BIT(3)
+#define  SDHCI_CLOCK_INT_STABLE			BIT(1)
+#define  SDHCI_CLOCK_INT_EN     		BIT(0)
 #define SDHCI_TIMEOUT_CONTROL					0x2e
 #define SDHCI_SOFTWARE_RESET					0x2f
 #define  SDHCI_RESET_ALL			BIT(0)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

