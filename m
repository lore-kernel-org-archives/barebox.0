Delivery-date: Thu, 21 May 2026 10:06:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyQN-002A7G-2w
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 10:06:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyQN-0006Db-BN
	for lore@pengutronix.de; Thu, 21 May 2026 10:06:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vTswVRpehCfDInxRKEYI4kxEHDEEBFY66vUDRpGRpZk=; b=lu3sGRbLB6cXcw2LOUO8t6v+Ii
	PAc8OzWvHUR8CfvhnokD9Hi2RTgqxfnNTufJWvwYYV2ujLuwIGv5o+V1CA3M1xu6accpjO6LS27vb
	1TcJgEihS2C3Cor3qNr59eeExTn/lNX4rhEB2a+hcLgHCtdy7Y87EOXzs26PtxjtgMpxBtYTbTErL
	j2k5rfJPsXa8PzFegjoGOB+ajIplb7Qgek84TN+j37tD0IhYcY5ETGz8MB7z8JazetnjDU70LkEbb
	waTmyG6IWsfs4Zws2i/VOcUFdpmiKe5oRFu10L9pPro8N48jzOQ+hGI1DPp4FZke1g7HfLhtKaPrO
	arXWT4wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPyP2-000000072i0-29Y5;
	Thu, 21 May 2026 08:05:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPyOz-000000072gR-2fJo
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 08:05:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPyOx-0005uB-0g; Thu, 21 May 2026 10:05:07 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPyOw-0014JU-1F;
	Thu, 21 May 2026 10:05:06 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPyOw-0000000DRa3-3fit;
	Thu, 21 May 2026 10:05:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 May 2026 10:05:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260521-rockchip-emmc-fixes-v1-2-c91908ca1fb5@pengutronix.de>
References: <20260521-rockchip-emmc-fixes-v1-0-c91908ca1fb5@pengutronix.de>
In-Reply-To: <20260521-rockchip-emmc-fixes-v1-0-c91908ca1fb5@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779350706; l=801;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Id8WvsxmLK9OwYOneYIK8sK0VNyeft+4wwn5Jehx44k=;
 b=3pCWkxB70PBfl8eIEhg1qDT7oFfYpbiB7sKwvYnLghvTSyCIcI6PRmUJPcE3dRjSL0Paj1V4P
 MTWvtLPhG9ODiBNDRcC0Z9rCEKrtyKwyzDXS5L66RcNlI4MLY9IAKMh
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_010509_684961_6EDF4BD3 
X-CRM114-Status: UNSURE (   9.17  )
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
Subject: [PATCH 2/3] mci: sdhci: Fix TIMEOUT_CONTROL register value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A timeout value of 0xf is reserved for most (all?) controllers. Use 0xe
which is the maximum allowed value and used throughout all controllers
in barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/sdhci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 19b845302e..0d20f3b63e 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -138,7 +138,7 @@ int sdhci_send_command(struct sdhci *host, struct mci_cmd *cmd)
 				dma == SDHCI_NO_DMA ? false : true,
 				&command, &xfer);
 
-	sdhci_write8(host, SDHCI_TIMEOUT_CONTROL, 0xf);
+	sdhci_write8(host, SDHCI_TIMEOUT_CONTROL, 0xe);
 	if (xfer)
 		sdhci_write16(host, SDHCI_TRANSFER_MODE, xfer);
 	if (cmd->data) {

-- 
2.47.3



