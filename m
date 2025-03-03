Delivery-date: Mon, 03 Mar 2025 10:02:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1gZ-009Gp2-2L
	for lore@lore.pengutronix.de;
	Mon, 03 Mar 2025 10:02:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1gY-0004Da-81
	for lore@pengutronix.de; Mon, 03 Mar 2025 10:02:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/SAabVu8Qwndk+yEe9vdvzScTSr7BT5JgAZvpZ3ynP0=; b=upG+aAsyQyBkkjfWs15XmjNcgi
	WRYAsd2H5l7HNMvA9AOj64a0ZsMLy7YLI19kWXRe6b6m1n5yS0NtVHjFPRJ47bV5wDIJhqVmwOVPT
	HRrlaHpVyrCz76qzmhPlCHdlu6bDmeyMdhuBBkz73ufCkiUDv8ccyHds1obUH3ZA4+M4/+6sofm8b
	UvfLgKjSNDMlE8rLlH7mxWeODfoAlvngj32uIoqZ8rVvH/2stn2KB6ey+Wjp6t0xzxaH3O4um71jr
	MPI1RrlwTE0pi+g8GR8sBXDObH9gABhBIfmqOwD8yFCQloE/5KnN+XBdEYz2/y0KGM4wYxtP4JGQS
	RfdPtA/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1g3-000000002pb-0Nei;
	Mon, 03 Mar 2025 09:01:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1e1-000000002Ox-0Jlb
	for barebox@lists.infradead.org;
	Mon, 03 Mar 2025 08:59:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1tp1dy-0003IF-HO; Mon, 03 Mar 2025 09:59:22 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 03 Mar 2025 09:59:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250303-v2025-02-0-topic-socfpga-arria10-v1-2-d66021246a66@pengutronix.de>
References: <20250303-v2025-02-0-topic-socfpga-arria10-v1-0-d66021246a66@pengutronix.de>
In-Reply-To: <20250303-v2025-02-0-topic-socfpga-arria10-v1-0-d66021246a66@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_005925_117292_94D2E66B 
X-CRM114-Status: UNSURE (   9.75  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] ARM: SoCFPGA: arria10-sdram: cleanup emif_clear
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Cleanup the emif_clear() function.

Use __wait_on_timeout to kick the watchdog and make the code more readable.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-sdram.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-sdram.c b/arch/arm/mach-socfpga/arria10-sdram.c
index 70d4edd9736c786729ba59e7ecad7eb7cfe7f77e..da7d3ea685e238c8c9abda84976a1161edfc4b03 100644
--- a/arch/arm/mach-socfpga/arria10-sdram.c
+++ b/arch/arm/mach-socfpga/arria10-sdram.c
@@ -216,20 +216,14 @@ static int ddr_calibration_es_workaround(void)
 
 static int emif_clear(void)
 {
-	uint32_t s2c;
-	uint32_t i = DDR_MAX_TRIES;
-
 	writel(0, DDR_REG_CORE2SEQ);
-	do {
-		ddr_delay(50);
-		s2c = readl(DDR_REG_SEQ2CORE);
-	} while ((s2c & SEQ2CORE_MASK) && (--i > 0));
 
-	return !i;
+	return __wait_on_timeout(1000, readl(DDR_REG_SEQ2CORE) & SEQ2CORE_MASK);
 }
 static int emif_reset(void)
 {
 	uint32_t c2s, s2c;
+	int ret;
 
 	c2s = readl(DDR_REG_CORE2SEQ);
 	s2c = readl(DDR_REG_SEQ2CORE);
@@ -240,9 +234,12 @@ static int emif_reset(void)
 		readl(IO48_MMR_NIOS2_RESERVE2),
 		readl(IO48_MMR_DRAMSTS));
 
-	if ((s2c & SEQ2CORE_MASK) && emif_clear()) {
-		printf("failed emif_clear()\n");
-		return -1;
+	if (s2c & SEQ2CORE_MASK) {
+		ret = emif_clear();
+		if (ret) {
+			printf("failed emif_clear()\n");
+			return -1;
+		}
 	}
 
 	writel(CORE2SEQ_INT_REQ, DDR_REG_CORE2SEQ);
@@ -254,7 +251,8 @@ static int emif_reset(void)
 		printf("emif_reset interrupt acknowledged\n");
 	}
 
-	if (emif_clear()) {
+	ret = emif_clear();
+	if (ret) {
 		printf("emif_clear() failed\n");
 		return -3;
 	}

-- 
2.45.2



