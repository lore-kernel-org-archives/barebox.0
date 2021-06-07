Delivery-date: Mon, 07 Jun 2021 12:51:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCrC-00067q-89
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 12:51:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCr6-000287-R9
	for lore@pengutronix.de; Mon, 07 Jun 2021 12:51:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NwWsHrQhBa+1vZB7o40HpcU1fG3lF4JrCBpBKrOpeBc=; b=cqgyW2yO+TTBSk
	ACsnTp2rftc6vRMdLCJCjdXHwqh97kebTAhlWpLut01IuKbbDd7fcYEKU2nPCvfZNw1gRtmQaqeU1
	75V9D0lgcJLW0voEShisY0F6+fJwZvKymw3PVYRa0M/Fh6JQUWNqDhp63cwRzGtzWO36YvR4VOj3O
	oX6bhtHbvbltLfJp2yRcZBXiBdqGmK7hKpkGDWtObVQRglhhH73ftd5eTvouTlnGmyntzABvnjPzb
	hsfifjMhzSrEUXtqpZXfqsePVEAr/6x69HkcI8PdwTwDtOM5J7FZzbwI7y6a2iL/FcN+QQD5pq28j
	t0ArGbHF8qtHJtJlYRwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqCpI-0033rN-EA; Mon, 07 Jun 2021 10:49:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqCjx-00322A-FA
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 10:44:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0000de-Gj; Mon, 07 Jun 2021 12:44:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCjt-0008Jr-Tz; Mon, 07 Jun 2021 12:44:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 12:44:01 +0200
Message-Id: <20210607104411.23071-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210607104411.23071-1-s.hauer@pengutronix.de>
References: <20210607104411.23071-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_034417_588829_BF4A1348 
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
Subject: [PATCH 02/12] mci: sdhci: Add and use SDHCI_CAPABILITIES_1 defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux has defines for the SDHCI_CAPABILITIES_1 register at offset 0x44.
Add these and convert the only user so far to use the defines.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/atmel-sdhci-common.c |  6 ++----
 drivers/mci/sdhci.h              | 15 ++++++++++++++-
 2 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
index 92013feb95..b391775b00 100644
--- a/drivers/mci/atmel-sdhci-common.c
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -24,8 +24,6 @@
 
 #include "atmel-sdhci.h"
 
-#define AT91_SDHCI_CA1R		0x44	/* Capabilities 1 Register */
-
 #define AT91_SDHCI_MC1R		0x204
 #define		AT91_SDHCI_MC1_FCD		BIT(7)
 #define AT91_SDHCI_CALCR	0x240
@@ -237,9 +235,9 @@ static int at91_sdhci_set_clock(struct at91_sdhci *host, unsigned clock)
 	if (clock == 0)
 		return 0;
 
-	caps = sdhci_read32(sdhci, AT91_SDHCI_CA1R);
+	caps = sdhci_read32(sdhci, SDHCI_CAPABILITIES_1);
 
-	caps_clk_mult = (caps & SDHCI_CLOCK_MUL_MASK) >> SDHCI_CLOCK_MUL_SHIFT;
+	caps_clk_mult = FIELD_GET(SDHCI_CLOCK_MUL_MASK, caps);
 
 	if (caps_clk_mult) {
 		for (clk_div = 1; clk_div <= 1024; clk_div++) {
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 9bd9749dd6..fd63cd84de 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -123,7 +123,20 @@
 #define  SDHCI_CAN_64BIT_V4			0x08000000
 #define  SDHCI_CAN_64BIT			0x10000000
 
-#define  SDHCI_CLOCK_MUL_MASK	0x00FF0000
+#define SDHCI_CAPABILITIES_1			0x44
+#define  SDHCI_SUPPORT_SDR50			0x00000001
+#define  SDHCI_SUPPORT_SDR104			0x00000002
+#define  SDHCI_SUPPORT_DDR50			0x00000004
+#define  SDHCI_DRIVER_TYPE_A			0x00000010
+#define  SDHCI_DRIVER_TYPE_C			0x00000020
+#define  SDHCI_DRIVER_TYPE_D			0x00000040
+#define  SDHCI_RETUNING_TIMER_COUNT_MASK	GENMASK(11, 8)
+#define  SDHCI_USE_SDR50_TUNING			0x00002000
+#define  SDHCI_RETUNING_MODE_MASK		GENMASK(15, 14)
+#define  SDHCI_CLOCK_MUL_MASK			GENMASK(23, 16)
+#define  SDHCI_CAN_DO_ADMA3			0x08000000
+#define  SDHCI_SUPPORT_HS400			0x80000000 /* Non-standard */
+
 #define  SDHCI_CLOCK_MUL_SHIFT	16
 
 #define SDHCI_SPEC_200_MAX_CLK_DIVIDER	256
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

