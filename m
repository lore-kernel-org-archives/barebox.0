Delivery-date: Wed, 11 Mar 2026 12:07:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0HPL-00AQPT-2f
	for lore@lore.pengutronix.de;
	Wed, 11 Mar 2026 12:07:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0HPM-00080a-4z
	for lore@pengutronix.de; Wed, 11 Mar 2026 12:07:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=37VK/ZFZGMoJwwegTIvZ266WJ3i89HzJDyuKD6CdsdE=; b=r8On70GF5xQT6G83ezqBfNHWNf
	AJdr8OtdDadrtS0B+F3cR4L/isI/e8AAbApy+2pKVr0ydFTpik0HqL+LtV+m7tjcnn3NtFPcpD9VC
	8toIFMhNmu8VPaeedgXsfwPslOnDCbjtdUrQJUhrggKNyl6GmjW6DtBDgRYHa6s/f81KAJ52efvzT
	cXz7sdQKciHGyYkz5CWxC0c/0YxN+TuFP3tiHw99Cf6E0xpSHTezzI8IUS5hpm2CYd/fgDXTWgfHL
	WcqWWDU0jm14f4HAsS/oRzcEzwbNER6JjzdBgU88fBMYmp76MGwU/h4A+Szmw9LKb8LNv0ivSlE7s
	ij7mDa7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0HOv-0000000BTBc-2kRs;
	Wed, 11 Mar 2026 11:06:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0HOs-0000000BTAE-1pLJ
	for barebox@lists.infradead.org;
	Wed, 11 Mar 2026 11:06:52 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1w0HOq-0007lL-OT; Wed, 11 Mar 2026 12:06:48 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 11 Mar 2026 12:06:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-agilex5-qspi-v1-1-be8a8e1318e1@pengutronix.de>
References: <20260311-agilex5-qspi-v1-0-be8a8e1318e1@pengutronix.de>
In-Reply-To: <20260311-agilex5-qspi-v1-0-be8a8e1318e1@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_040650_498965_E1CE3244 
X-CRM114-Status: GOOD (  12.29  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] arm: socfpga: mailbox_s10: make retry logic more
 visible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver tries to open the QSPI a second time after closing the device
if the first open failed. The second try is open coded and repeats code
from the first try.

Refactor the code to have a single open and make the error handling more
obvious.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/mailbox_s10.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-socfpga/mailbox_s10.c b/arch/arm/mach-socfpga/mailbox_s10.c
index 9211d643e3b6..f9ff6663dc38 100644
--- a/arch/arm/mach-socfpga/mailbox_s10.c
+++ b/arch/arm/mach-socfpga/mailbox_s10.c
@@ -301,20 +301,18 @@ int socfpga_mailbox_s10_qspi_open(void)
 	u32 resp_buf_len;
 	u32 reg;
 	u32 clk_khz;
+	int try = 0;
 
+retry:
 	ret = mbox_send_cmd(MBOX_ID_BAREBOX, MBOX_QSPI_OPEN, MBOX_CMD_DIRECT,
 			    0, NULL, 0, 0, NULL);
-	if (ret) {
-		/* retry again by closing and reopen the QSPI again */
-		ret = socfpga_mailbox_s10_qspi_close();
-		if (ret)
-			return ret;
-
-		ret = mbox_send_cmd(MBOX_ID_BAREBOX, MBOX_QSPI_OPEN,
-				    MBOX_CMD_DIRECT, 0, NULL, 0, 0, NULL);
-		if (ret)
-			return ret;
+	if (ret != MBOX_RESP_STATOK && try++ < 2) {
+		/* retry after closing the QSPI */
+		socfpga_mailbox_s10_qspi_close();
+		goto retry;
 	}
+	if (ret)
+		return ret;
 
 	/* HPS will directly control the QSPI controller, no longer mailbox */
 	resp_buf_len = 1;

-- 
2.47.3



