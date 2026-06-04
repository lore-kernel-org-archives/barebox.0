Delivery-date: Thu, 04 Jun 2026 13:08:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV5w0-002Fp6-2Z
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 13:08:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV5w0-0000sn-4c
	for lore@pengutronix.de; Thu, 04 Jun 2026 13:08:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RaqM/9ys3EuMo/Qnkigq4ydIVBeBXgODPq6eZEZwjoQ=; b=KVvVM8aYjMt0UmIoER8akKKENy
	+UTjMT+lIuH3lFcK0P1ggjrvsL0B00osWpk9b6a3a290Adx8aYoOJal3hjxrGuLKWCSsSsD5Fitcs
	jYnBAsvk/3yW+WDHOnRMSYAC7BxL2dLjuJQAjBH8benIATB/IQ/NIE//dpTH3Tm2QtTS4pOky9fM5
	df+yXFYjxdRg+RXL47ZKdIERaGmJrp1VRzppMjGmLaayJ9x5fpF5cfUzLWZQkjT40Z10MTKVOoWU0
	Wer1m8PiBDL0XhnKxxDjPDRS9qtBHKisIFcOgoY2QOe0u9nmDMyFZZWQHz8WcJ7fsXtz4LjYWPt0i
	mLrcjp4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV5ul-0000000Gbyn-1Axg;
	Thu, 04 Jun 2026 11:07:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV5ue-0000000GbwU-2ZBG
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 11:07:04 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wV5uc-0000IX-AQ; Thu, 04 Jun 2026 13:06:58 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 04 Jun 2026 13:06:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260604-socfpga-axe5-sdram-init-v1-3-274f6361ce98@pengutronix.de>
References: <20260604-socfpga-axe5-sdram-init-v1-0-274f6361ce98@pengutronix.de>
In-Reply-To: <20260604-socfpga-axe5-sdram-init-v1-0-274f6361ce98@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_040700_673424_6DAA43AB 
X-CRM114-Status: GOOD (  15.27  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] arm: socfpga: iossm: add delay to wait for firmware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Depending on the boot time of barebox, I observed cases, where the IOSSM
version register reported mailbox version 0 even though its version 0.
If this happens, barebox uses the wrong interface to read the SDRAM
configuration, is not able to detect and configure the SDRAM, and fails
to boot.

Unfortunately, the IOSSM firmware does not provide a proper
synchronization point to detect if the firmware finished its
initialization.

Add a workaround to delay the boot until the firmware initialized the
version register or a delay for mailbox version 0.

Don't use readl_poll_timeout, because in the PBL readl_poll_timeout
polls indefinitely and the polling needs to run into the timeout in case
of mailbox version 0.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index 168bef3faeeb..6a9a7a489b75 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -158,10 +158,27 @@ static int io96b_mb_version(struct io96b_info *io96b_ctrl)
 {
 	void __iomem *io96b_csr_addr = io96b_ctrl->io96b[0].io96b_csr_addr;
 	u32 mailbox_header;
-	int version;
+	int version = 0;
+	int retry;
 
-	mailbox_header = readl(io96b_csr_addr + IOSSM_MAILBOX_HEADER_OFFSET);
-	version = FIELD_GET(IOSSM_MAILBOX_SPEC_VERSION_MASK, mailbox_header);
+	/*
+	 * There is a race between barebox on the HPS and the IOSSM firmware
+	 * initialization, which may cause barebox to read a mailbox version 0
+	 * from the IOSSM even though it's actually mailbox version 1, but the
+	 * register has not been updated, yet. Unfortunately, there is no
+	 * reliable synchronization point.
+	 *
+	 * Workaround this issue by reading the mailbox version more often. On
+	 * mailbox version 1, barebox waits until the firmware wrote the
+	 * version register. On mailbox version 0, barebox runs into the
+	 * timeout caused by the number of retries.
+	 *
+	 * The number of retries has been experimentally determined.
+	 */
+	for (retry = 100; version == 0 && retry > 0; retry--) {
+		mailbox_header = readl(io96b_csr_addr + IOSSM_MAILBOX_HEADER_OFFSET);
+		version = FIELD_GET(IOSSM_MAILBOX_SPEC_VERSION_MASK, mailbox_header);
+	}
 
 	return version;
 }

-- 
2.47.3



