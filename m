Delivery-date: Wed, 11 Mar 2026 12:07:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0HPK-00AQOz-3B
	for lore@lore.pengutronix.de;
	Wed, 11 Mar 2026 12:07:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0HPL-00080E-AY
	for lore@pengutronix.de; Wed, 11 Mar 2026 12:07:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TxR39pKS5F0W/StOE2J2O137iqnygt/49zip7LqcJwM=; b=M6HXWVFCzdxkwCXNsv+MiH5r4M
	a+yIdzlle6+36aZdtGYygeMZEDzbBcYJYVLvuOqDKiZL+jPlp2pOW23y0v70bDJeGW+Vu8gUZHPj2
	89ApT/3X1caNNuQ9zevvagw5NfA3hu4JVSSjI+iuUTaawn63TaCtdpmdy1QeOxNJ5viX+Uxa9F4Vj
	Fk9+eAqYuypdgcC+YBdg8wcDZ3X45IxyS9q2SBf/fTaE6SntjVX6XZHH1Kmm5q4Rd4ofoDhU6E5Qo
	nxtVVjvJRSj7ay13f7X1jFHoUiYddnIfqEWy9nbui7aPSaT1Y8rdVGseOgVSlVsjV9rj/u0EjnihK
	OkTHHywg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0HOv-0000000BTBU-1aEk;
	Wed, 11 Mar 2026 11:06:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0HOs-0000000BTAF-1pK9
	for barebox@lists.infradead.org;
	Wed, 11 Mar 2026 11:06:52 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1w0HOq-0007lL-PW; Wed, 11 Mar 2026 12:06:48 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 11 Mar 2026 12:06:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-agilex5-qspi-v1-2-be8a8e1318e1@pengutronix.de>
References: <20260311-agilex5-qspi-v1-0-be8a8e1318e1@pengutronix.de>
In-Reply-To: <20260311-agilex5-qspi-v1-0-be8a8e1318e1@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_040650_498506_2D52C9B5 
X-CRM114-Status: UNSURE (   9.60  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] arm: socfpga: mailbox_s10: cleanup send command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The casts when passing the response buffer to mbox_send_cmd are useless,
because they already have the correct type.

Furthermore, setting an explicit buffer length is surprising and error
prone. Just use the array size of the response buffer as length.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/mailbox_s10.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-socfpga/mailbox_s10.c b/arch/arm/mach-socfpga/mailbox_s10.c
index f9ff6663dc38..f6aacd5551f2 100644
--- a/arch/arm/mach-socfpga/mailbox_s10.c
+++ b/arch/arm/mach-socfpga/mailbox_s10.c
@@ -297,8 +297,8 @@ int socfpga_mailbox_s10_qspi_close(void)
 int socfpga_mailbox_s10_qspi_open(void)
 {
 	int ret;
-	u32 resp_buf[1];
-	u32 resp_buf_len;
+	u32 resp_buf[1] = {};
+	u32 resp_buf_len = ARRAY_SIZE(resp_buf);
 	u32 reg;
 	u32 clk_khz;
 	int try = 0;
@@ -315,10 +315,8 @@ int socfpga_mailbox_s10_qspi_open(void)
 		return ret;
 
 	/* HPS will directly control the QSPI controller, no longer mailbox */
-	resp_buf_len = 1;
 	ret = mbox_send_cmd(MBOX_ID_BAREBOX, MBOX_QSPI_DIRECT, MBOX_CMD_DIRECT,
-			    0, NULL, 0, (u32 *)&resp_buf_len,
-			    (u32 *)&resp_buf);
+			    0, NULL, 0, &resp_buf_len, resp_buf);
 	if (ret)
 		goto error;
 

-- 
2.47.3



