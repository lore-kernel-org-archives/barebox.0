Delivery-date: Wed, 27 May 2026 10:51:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wS9yj-004Kk4-28
	for lore@lore.pengutronix.de;
	Wed, 27 May 2026 10:51:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wS9yi-0008LA-G4
	for lore@pengutronix.de; Wed, 27 May 2026 10:51:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=d6tL/gwqrCTggAg1223h4swUgmNbgEZNoZYpTV42Fgg=; b=eoQD0OfJkTx6qBUxCYDLF+5P+K
	jPwMrm8LDh8wBFIOwa+XC4mV++Xn+8uOYLlFZgGhZhSoPn+Pv+eyWaj6UUOdXniMajRWejw+hImZm
	HPFbEaA5RSysV/OWlX8Ym4zYYa1CJTGtIMRbOiuoJAYhSbwmdjGXeKhP22D0LoVK6jSmXjnM3BfaG
	q/m/HBt8FiM6zP6TOBIxfkaSw6o7tfzbko/EFoJ0vVHh/A4YTxcCGfsyFGUZ/B5D/Tr6JI+FdKsBJ
	bNJk0oONg2D55jb0Iz9dsjVFgRT6D1u3aWjfRrQaqXZSFHxEqo/+7XCECiENgmhwXGK+DH31NqQHk
	mqw2w2Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS9xR-00000003ZVJ-2XQw;
	Wed, 27 May 2026 08:49:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS9xP-00000003ZU8-1dV2
	for barebox@lists.infradead.org;
	Wed, 27 May 2026 08:49:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wS9xL-00089u-Kx; Wed, 27 May 2026 10:49:39 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wS9xL-00252s-05;
	Wed, 27 May 2026 10:49:39 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wS9xL-0000000D3tX-24ux;
	Wed, 27 May 2026 10:49:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 27 May 2026 10:49:38 +0200
Message-ID: <20260527084939.3113225-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_014943_433109_4C6CBB73 
X-CRM114-Status: UNSURE (   9.82  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] mci: sdhci: suppress register dump on expected time out
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A time out is the usual way a non-existent SD-Card is detected if there
is no card detect.

Emitting a whole register dump in that case is just confusing, so
suppress register dumps on timeout during card probe.

Fixes: 19ce0bdebf48 ("mci: sdhci: rockchip: Use generic sdhci_send_command()")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/sdhci.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 0d20f3b63e02..3474ef129bd5 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -116,6 +116,13 @@ static void sdhci_reset_for_reason(struct sdhci *host, enum sdhci_reset_reason r
 
 #define sdhci_reset_for(h, r) sdhci_reset_for_reason((h), SDHCI_RESET_FOR_##r)
 
+static inline bool sdhci_card_ready(struct sdhci *sdhci)
+{
+	struct mci_host *host = sdhci->mci;
+
+	return host && host->mci->ready_for_use;
+}
+
 int sdhci_send_command(struct sdhci *host, struct mci_cmd *cmd)
 {
 	u32 mask, command, xfer;
@@ -157,7 +164,12 @@ int sdhci_send_command(struct sdhci *host, struct mci_cmd *cmd)
 	ret = sdhci_wait_for_done(host, mask);
 	if (ret) {
 		sdhci_teardown_data(host, cmd->data, dma);
-		sdhci_dumpregs(host);
+#ifndef DEBUG
+		if (sdhci_card_ready(host) || ret != -ETIMEDOUT)
+#endif
+		{
+			sdhci_dumpregs(host);
+		}
 		goto error;
 	}
 
-- 
2.47.3



