Delivery-date: Thu, 07 May 2026 10:24:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKu20-001tuW-32
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 10:24:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKu1y-0000uL-E2
	for lore@pengutronix.de; Thu, 07 May 2026 10:24:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l0TBo/av0nfE0c9hvzJI3VpN8QoQGhxQY4crbjXeVWU=; b=KdOaauP0kcqQ2Fv5eetATTD7Lj
	QojlR+uNvGriLk/IvnqoMri7c+b/L7YF4hQs7glk3zDxHpBBiCtdSRhzEC+gmApbq6wGbjNUMZJZ2
	pd5OEQgtXs0Khvfc5yL4ADiWTSwXG3xIGK3vgMaPAIn4YDkPgdkIkqOkqaywTZSsrmkugte+qBE9x
	dg3ahY/sQ7SldRz4eR+yTzFG9xnyMD6PUyBrhcvwfbk1wHjkOmqNKL2e36KKKiC1jLBUD28YogIbZ
	sm65ZYXDAhRUpl16+93F809vER1Y2Z9a4ZFL/q05eS8zVuS+LKfPGgyzrNclk5SCeFl1U0BEPXCgq
	xHk4Z96w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKsl9-00000002z27-1mv9;
	Thu, 07 May 2026 07:02:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKsl8-00000002z0Q-1QYi
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 07:02:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-0006NV-Uu; Thu, 07 May 2026 09:02:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-000sMd-0X;
	Thu, 07 May 2026 09:02:48 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-0000000BYFq-28nG;
	Thu, 07 May 2026 09:02:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 07 May 2026 09:02:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260507-rockchip-emmc-v1-6-5e8109e8059d@pengutronix.de>
References: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
In-Reply-To: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778137368; l=1491;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=CE1gC1pdSZ4nT7+IbfJC7MsYM43eedo6OwOH/i6YOfQ=;
 b=aUnhQohWxxbSEeHgwyLmwNoPYh8ImRoi+ovrPE/kb7KzLe1vpTNDpubz5lpH24MElbhfBnB+a
 p/XuPJptzdfAC8VpJE/FZXNOVW+0TEDk5aWsbRiTppbl4zHU5K+J0pR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_000258_384720_FB9467E7 
X-CRM114-Status: GOOD (  12.25  )
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
Subject: [PATCH 6/6] mci: sdhci: rockchip: officially support HS200
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

"officially" is meant in the way that even with the SDHCI_QUIRK2_BROKEN_HS200
flag set the driver already does HS200 when the device tree mandates it.
Just remove the ineffective flag and wire up the execute_tuning hook.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 9ffd52e7e0..04ee528f07 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -300,11 +300,19 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 	return ret;
 }
 
+static int rk_sdhci_execute_tuning(struct mci_host *mci, u32 opcode)
+{
+	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
+
+	return sdhci_execute_tuning(&host->sdhci, opcode);
+}
+
 static const struct mci_ops rk_sdhci_ops = {
 	.send_cmd = rk_sdhci_send_cmd,
 	.set_ios = rk_sdhci_set_ios,
 	.init = rk_sdhci_init,
 	.card_present = rk_sdhci_card_present,
+	.execute_tuning = rk_sdhci_execute_tuning,
 };
 
 static int rk_sdhci_probe(struct device *dev)
@@ -351,9 +359,6 @@ static int rk_sdhci_probe(struct device *dev)
 
 	mci_of_parse(&host->mci);
 
-	/* HS200 not supported by this driver at the moment */
-	host->sdhci.quirks2 = SDHCI_QUIRK2_BROKEN_HS200;
-
 	sdhci_setup_host(&host->sdhci);
 
 	dev->priv = host;

-- 
2.47.3



