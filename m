Delivery-date: Thu, 16 Apr 2026 17:26:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDObz-00CriV-0h
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 17:26:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOby-0008Gh-Md
	for lore@pengutronix.de; Thu, 16 Apr 2026 17:26:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8yp7KCB2YvjTX464ytkiOOPnqkds1TQd7HJS1Mv9sLM=; b=XWSXLXXzQo2Q1gZLmRsOY/mmMD
	FJxJ6xqGwy29vEZCeqtDz/uXprC2xX03DdBWPFYhBPpV5WryiQMOdhutsEPZmOrV3Og7Lyw96iXfl
	mEm2kOItxlIixw6JOR1q1Pn1S3NcP9U7NAs91dNKMSXhftbv30Zrk2GYTnE485L48QAHFEWJCHFaT
	cGhDU5foyvrRtIx+BAxK6NK6SDGVEI3Q4zRV4v2owKZA4qDkjYFJ1271MeBrH+CsDjddQCtj4w9jp
	dVCLAyIJ6ZrdkrLV+XVvycYT1POczR/K71n3iTK538xKjtbrRCSVGuwRhC+zpzFUuC/2AMUQwlH+V
	+lcslIbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDObP-00000002cD4-1x8k;
	Thu, 16 Apr 2026 15:25:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDObM-00000002cAT-21kg
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 15:25:58 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDObI-0007uE-Vw; Thu, 16 Apr 2026 17:25:53 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 17:25:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-socfpga-agilex5-iossm-cleanup-v1-4-ca9aae003c84@pengutronix.de>
References: <20260416-socfpga-agilex5-iossm-cleanup-v1-0-ca9aae003c84@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-iossm-cleanup-v1-0-ca9aae003c84@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_082556_522657_F59C9BFB 
X-CRM114-Status: GOOD (  10.10  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] arm: socfpga: iossm: remove multiple read of
 status_addr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The value of status_addr is already stored in cal_status. Reading the
register again is useless.

Remove the additional reads and use cal_status directly.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index 24d1404be1a1..fbf46a08d273 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -237,26 +237,21 @@ void io96b_mb_init(struct io96b_info *io96b_ctrl)
 static int io96b_cal_status(phys_addr_t addr)
 {
 	int ret;
-	u32 cal_success, cal_fail;
 	u32 cal_status;
-	phys_addr_t status_addr = addr + IOSSM_STATUS_OFFSET;
 
 	/* Ensure calibration completed */
-	ret = readl_poll_timeout(IOMEM(status_addr),
+	ret = readl_poll_timeout(IOMEM(addr) + IOSSM_STATUS_OFFSET,
 				 cal_status,
 				 !(cal_status & IOSSM_STATUS_CAL_BUSY),
 				 10 * USEC_PER_SEC);
 	if (ret) {
 		pr_err("%s: SDRAM calibration IO96b instance 0x%llx timeout\n",
-		       __func__, status_addr);
+		       __func__, addr);
 		hang();
 	}
 
-	/* Calibration status */
-	cal_success = readl(status_addr) & IOSSM_STATUS_CAL_SUCCESS;
-	cal_fail = readl(status_addr) & IOSSM_STATUS_CAL_FAIL;
-
-	if (cal_success && !cal_fail)
+	if ((cal_status & IOSSM_STATUS_CAL_SUCCESS) &&
+	    !(cal_status & IOSSM_STATUS_CAL_FAIL))
 		return 0;
 	else
 		return -EPERM;

-- 
2.47.3



