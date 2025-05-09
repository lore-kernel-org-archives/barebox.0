Delivery-date: Fri, 09 May 2025 15:52:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uDO9Q-003oI6-1S
	for lore@lore.pengutronix.de;
	Fri, 09 May 2025 15:52:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uDO9P-0006S7-Pb
	for lore@pengutronix.de; Fri, 09 May 2025 15:52:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FLrYcsrt3twhX+G1pn7xxKfu6+xjW/O7XmcOs68IMLs=; b=cm/gKppGHdpKwe
	J4/dkPUNdUemk0GSPOH8fywmDlLEND5d0qCLP+He79X3AAain8BALQV5sL4GLsQ64elV1rhZl7Uo0
	e2Exa5hqE3/sPyWP37nA02i4TLwb/6yLJcvfNd+zcLvQ3m58lHTnJw4TPMNGZndjlD4ADpwAYJsvW
	49kcE+ukvDtbtnB5viZHzIJlijei9sBpwGdzaLuzDHlSs+CYCbED0YRO1n4d69fN83HfpxaQcJ0se
	e2etiahwuh0C9BDgNEeJtQfL0Jtm29IwW/zARAPHmhI6xM8kcDNElOhRp5FKRk/tqy1cpYPBL5syY
	90eaB51vE9rw3qsTsRVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDO8h-00000003qCo-47FC;
	Fri, 09 May 2025 13:51:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDNGK-00000003f5O-2V0m
	for barebox@lists.infradead.org;
	Fri, 09 May 2025 12:55:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uDNGI-0005nH-0m; Fri, 09 May 2025 14:55:34 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uDNGH-001tHA-2h;
	Fri, 09 May 2025 14:55:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uDNGH-0047pK-2I;
	Fri, 09 May 2025 14:55:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  9 May 2025 14:55:32 +0200
Message-Id: <20250509125532.983391-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_055536_636662_5EA84D94 
X-CRM114-Status: GOOD (  16.53  )
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
Cc: lsc@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: k3: fix banks count in DRAM size detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We assumed that a DDR4 always has 16 banks. This is true for x4 and x8
devices, but not for x16 devices which only have 8 banks.

It seems we can read the number of banks from the BANK_DIFF_x register
fields, but the exact encoding of these fields is unknown. The reference
manual only describes them as:

"Encoded number of banks on the DRAM[s]"

>From looking at the output of the TI AM62x DDR configuration tool it
seems that it sets the fields to 0 for x8 devices and to 1 for x16
devices.

LPDDR4 devices always have 8 banks. In the AM625SIP board which has LPDDR4
the BANK_DIFF_x fields are also set to 1 meaning 8 banks, so we can drop
the LPDDR4/DDR4 detection and just rely on the BANK_DIFF_x fields to
determine the number of banks.

This has been tested on the BeaglePlay board (2GB x16 DDR4) and verified
on the AM62-SK board (also 2GiB x16 DDR4) and on the AM625SIP-SK board
(512MiB x16 LPDDR4)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/ddrss.c | 37 ++++++++++++++++++++++++++++++-------
 1 file changed, 30 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-k3/ddrss.c b/arch/arm/mach-k3/ddrss.c
index b51371d661..a4becfbad0 100644
--- a/arch/arm/mach-k3/ddrss.c
+++ b/arch/arm/mach-k3/ddrss.c
@@ -13,6 +13,10 @@
 
 #define CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_327 0x51c
 
+#define CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_316 0x4f0
+#define BANK_DIFF_1	GENMASK(25, 24)
+#define BANK_DIFF_0	GENMASK(17, 16)
+
 #define CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_317 0x4f4
 
 #define ROW_DIFF_0	GENMASK(2, 0)
@@ -30,32 +34,51 @@
 #define DENALI_CTL_0_DRAM_CLASS_DDR4		0xa
 #define DENALI_CTL_0_DRAM_CLASS_LPDDR4		0xb
 
+static unsigned int am625_get_banks_count(unsigned int regval)
+{
+	/*
+	 * The BANK_DIFF_x are only described in the Reference Manual as:
+	 *
+	 * "Encoded number of banks on the DRAM[s]"
+	 *
+	 * From putting different configurations into the TI DDR configuration
+	 * tool it seems that a register value of 0 means 16 banks and 1 means
+	 * 8 banks.
+	 */
+	switch (regval) {
+	case 0:
+		return 16;
+	case 1:
+		return 8;
+	default:
+		return 0;
+	}
+}
+
 u64 am625_sdram_size(void)
 {
 	void __iomem *base = IOMEM(AM625_DDRSS_BASE);
 	u32 ctl0 = readl(base + CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_0);
 	u32 ctl3 = readl(base + CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_3);
+	u32 ctl316 = readl(base + CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_316);
 	u32 ctl317 = readl(base + CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_317);
 	u32 ctl327 = readl(base + CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_327);
 	unsigned int cols, rows, banks;
 	u64 size = 0;
 
-	if (FIELD_GET(DRAM_CLASS, ctl0) == DENALI_CTL_0_DRAM_CLASS_LPDDR4)
-		banks = 8;
-	else if (FIELD_GET(DRAM_CLASS, ctl0) == DENALI_CTL_0_DRAM_CLASS_DDR4)
-		banks = 16;
-	else
-		return 0;
-
 	if (ctl327 & BIT(0)) {
 		cols = FIELD_GET(MAX_COL, ctl3) - FIELD_GET(COL_DIFF_0, ctl317);
 		rows = FIELD_GET(MAX_ROW, ctl3) - FIELD_GET(ROW_DIFF_0, ctl317);
+		banks = am625_get_banks_count(FIELD_GET(BANK_DIFF_0, ctl316));
+
 		size += memory_sdram_size(cols, rows, banks, 2);
 	}
 
 	if (ctl327 & BIT(1)) {
 		cols = FIELD_GET(MAX_COL, ctl3) - FIELD_GET(COL_DIFF_1, ctl317);
 		rows = FIELD_GET(MAX_ROW, ctl3) - FIELD_GET(ROW_DIFF_1, ctl317);
+		banks = am625_get_banks_count(FIELD_GET(BANK_DIFF_1, ctl316));
+
 		size += memory_sdram_size(cols, rows, banks, 2);
 	}
 
-- 
2.39.5



