Delivery-date: Tue, 06 May 2025 08:38:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwb-002i2p-2D
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 08:38:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwa-0001tx-RL
	for lore@pengutronix.de; Tue, 06 May 2025 08:38:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=byIwqmVbwMA6s23bzcctGWbzYRPlf/B0HbtyTE6rOmw=; b=uIZWD2/rX54s/YIYbvOmUDCczr
	I16pB/83X3PnnBx7gNVl05n5Aacr36TBn6NHvVuGBQ+5gdigf31yHNv3+15+W2TMejmNO3Lr9Ghu2
	GpJAnEgcSSfliUkNljPlcn7AvWrYq3xjr+MBr+5gN0xmuZ1hdGmVW1WpnncCf1qV/QZUp/ckbb8ob
	HAsXIQKEDhgafeyJ1Zc2F+X2eHInMMpg+b22bbNdI+x4NIe5J++eh6Tf7C7DbjNNzwZI/8hUtP5mx
	mjtmVd/E44PMDK3RpauV4inJXNLKGXwe7XMafDzwsHbQcBVPaN0LvL9Fygmt0ozAYYWzd/HGncDfT
	hqpbWv1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBw9-0000000AjR1-3vdG;
	Tue, 06 May 2025 06:37:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBtA-0000000AiKP-3eOO
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 06:34:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-0000TT-FJ; Tue, 06 May 2025 08:34:47 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-001LpO-0q;
	Tue, 06 May 2025 08:34:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-00D9CO-25;
	Tue, 06 May 2025 08:34:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 08:34:43 +0200
Message-Id: <20250506063446.3133582-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250506063446.3133582-1-a.fatoum@pengutronix.de>
References: <20250506063446.3133582-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_233448_934369_E8DA2196 
X-CRM114-Status: UNSURE (   9.95  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/8] mci: am654-sdhci: fix error code printed in error messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The error code returned on clock failures is a stale value of ret, which
is likely to be zero.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/am654-sdhci.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index b4735952515f..3e637c56850f 100644
--- a/drivers/mci/am654-sdhci.c
+++ b/drivers/mci/am654-sdhci.c
@@ -575,21 +575,13 @@ static int am654_sdhci_probe(struct device *dev)
                 return PTR_ERR(plat->base);
         }
 
-	plat->clk = clk_get(dev, "clk_xin");
-	if (IS_ERR(plat->clk)) {
-		dev_err(dev, "failed to get clock\n");
-		return ret;
-	}
+	plat->clk = clk_get_enabled(dev, "clk_xin");
+	if (IS_ERR(plat->clk))
+		return dev_errp_probe(dev, plat->clk, "failed to get clock\n");
 
-	clk_enable(plat->clk);
-
-	plat->clk_ahb = clk_get(dev, "clk_ahb");
-	if (IS_ERR(plat->clk_ahb)) {
-		dev_err(dev, "failed to get ahb clock\n");
-		return ret;
-	}
-
-	clk_enable(plat->clk_ahb);
+	plat->clk_ahb = clk_get_enabled(dev, "clk_ahb");
+	if (IS_ERR(plat->clk_ahb))
+		return dev_errp_probe(dev, plat->clk, "failed to get ahb clock\n");
 
 	mci = &plat->mci;
 	mci->f_max = clk_get_rate(plat->clk);
-- 
2.39.5



