Delivery-date: Mon, 10 Jun 2024 15:06:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGeiq-003hPr-2u
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 15:06:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGeiq-0003dp-AL
	for lore@pengutronix.de; Mon, 10 Jun 2024 15:06:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/Nd/DFWEuwOvHPElR7I5JmdyL7Q/PTvWie+XwLZWMzY=; b=fMSG9it9iYWLZGKIhmbduMqth7
	f/BpQiyZQwZR2wBfpoI9Nea9AQn8+cUNo/VZ8EC784H9GEF0JiPTIAtIDE5R0Cr/PpqRmYWxAarRl
	owLvrMuDiAe6L4IUl4UQ+9j4BHysd3D9ZJZVSwXsUiqBsmIzrnJXmQrOezlcRZsXvdziW/X5mqZWK
	imNjWpkNA1zMv65BxB9UuKG6UJa1D5lwQg4RL19RjwLXDs6a/4p98XiqoeqJmhSWF/eBtrnE3K8Bc
	iG8ijvgKYYuWHIwyVtP+47asYMjTQchlgMFn9sUzpVKFYf8cCstafkqXpohcJucJel/8oJexK5p4B
	IbNeRbSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGeiE-000000057kt-41Dl;
	Mon, 10 Jun 2024 13:05:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGeiA-000000057kA-3EPB
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 13:05:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGei8-0003QE-Ux; Mon, 10 Jun 2024 15:05:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGei8-001JGa-IH; Mon, 10 Jun 2024 15:05:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGei8-00BAEI-1T;
	Mon, 10 Jun 2024 15:05:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 10 Jun 2024 15:05:19 +0200
Message-Id: <20240610130519.2659833-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_060523_360568_8783A6C4 
X-CRM114-Status: GOOD (  14.28  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mci: imx: fix clk handling after clk driver update
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since c54441527a the i.MX27 clk driver has been synced with the Kernel.
We now have to get the two clocks specified in the device tree. Also we
have to enable the clocks explicitly, they no longer come up enabled.
This fixes the MMC driver hanging on card probe.

Fixes: c54441527a ("clk: imx27: sync with kernel")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 48a3378335..3607a5feb2 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -100,7 +100,8 @@ struct mxcmci_regs {
 struct mxcmci_host {
 	struct mci_host		mci;
 	struct mxcmci_regs	*base;
-	struct clk		*clk;
+	struct clk		*clk_per;
+	struct clk		*clk_ipg;
 	int			irq;
 	int			detect_irq;
 	int			dma;
@@ -414,7 +415,7 @@ static void mxcmci_set_clk_rate(struct mxcmci_host *host, unsigned int clk_ios)
 {
 	unsigned int divider;
 	int prescaler = 0;
-	unsigned long clk_in = clk_get_rate(host->clk);
+	unsigned long clk_in = clk_get_rate(host->clk_per);
 
 	while (prescaler <= 0x800) {
 		for (divider = 1; divider <= 0xF; divider++) {
@@ -494,9 +495,13 @@ static int mxcmci_probe(struct device *dev)
 
 	host = xzalloc(sizeof(*host));
 
-	host->clk = clk_get(dev, NULL);
-	if (IS_ERR(host->clk))
-		return PTR_ERR(host->clk);
+	host->clk_per = clk_get_enabled(dev, "per");
+	if (IS_ERR(host->clk_per))
+		return PTR_ERR(host->clk_per);
+
+	host->clk_ipg = clk_get_enabled(dev, "ipg");
+	if (IS_ERR(host->clk_ipg))
+		return PTR_ERR(host->clk_ipg);
 
 	host->mci.send_cmd = mxcmci_request;
 	host->mci.set_ios = mxcmci_set_ios;
@@ -511,7 +516,7 @@ static int mxcmci_probe(struct device *dev)
 
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 
-	rate = clk_get_rate(host->clk);
+	rate = clk_get_rate(host->clk_per);
 	host->mci.f_min = rate >> 7;
 	host->mci.f_max = rate >> 1;
 
-- 
2.39.2



