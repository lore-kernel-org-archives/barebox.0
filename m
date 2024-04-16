Delivery-date: Tue, 16 Apr 2024 08:32:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwcMO-002zhV-0l
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 08:32:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwcMN-0004jG-Ll
	for lore@pengutronix.de; Tue, 16 Apr 2024 08:32:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dTjrjGrXjLdVk0hsol65ghzqy4DzCYfZZvDLfseUOVc=; b=EcgCt9Cn0dcLZhfQVaYUGW3vEn
	yD+JubnaAHNbcD0q3ctkTnXkyqJ5NdFCZKLfF7vC0avAreIorNKyfUaJF5JociliksnEZOnrMREPm
	jS9sEL9mPRC+/Nq7dX74xdENKns1CEidSibegm7N4RcaYLGLSjY64jbD8gOUifwGJJAZGrmmShT37
	SIzvNfRbZvN8y/M4vhezpGFWgoP9bv8VU8fxinMzrZB2HtebjU14cL03xXt/FciGKsB46MJPXt8pt
	0FbjlqOCMcVZZjcKtjtS6/nbx+/iLIKx2uMM2LVwVvg37sv26QY/sQbePuWpBmZ+Y1CEU/OcdoWyr
	ecnFOiIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwcLt-0000000B5Q7-3rg4;
	Tue, 16 Apr 2024 06:31:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwcLp-0000000B5PI-38tH
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 06:31:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwcLo-00047q-5Y; Tue, 16 Apr 2024 08:31:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwcLn-00CYkN-P4; Tue, 16 Apr 2024 08:31:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwcLn-005e9P-2A;
	Tue, 16 Apr 2024 08:31:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 Apr 2024 08:31:26 +0200
Message-Id: <20240416063126.1345967-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240416063126.1345967-1-s.hauer@pengutronix.de>
References: <20240416063126.1345967-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_233129_840115_D9812226 
X-CRM114-Status: GOOD (  10.79  )
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
Subject: [PATCH 2/2] clk: imx27: add watchdog clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since 87cad17964 the imxwd watchdog driver needs a clock to probe. Add
this clock for i.MX27 to make the watchdog driver work again.

Fixes: 87cad17964 ("watchdog: imxwd: get and enable clock")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-imx27.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/imx/clk-imx27.c b/drivers/clk/imx/clk-imx27.c
index 7da4a1f9a6..3f03705634 100644
--- a/drivers/clk/imx/clk-imx27.c
+++ b/drivers/clk/imx/clk-imx27.c
@@ -221,6 +221,7 @@ static int imx27_ccm_probe(struct device *dev)
 	clks[per3_gate] = imx_clk_gate("per3_gate", "per3_div", base + CCM_PCCR1, 8);
 	clks[lcdc_ahb_gate] = imx_clk_gate("lcdc_ahb_gate", "ahb", base + CCM_PCCR1, 15);
 	clks[lcdc_ipg_gate] = imx_clk_gate("lcdc_ipg_gate", "ipg", base + CCM_PCCR0, 14);
+	clks[wdog_ipg_gate] = imx_clk_gate("wdog_ipg_gate", "ipg", base + CCM_PCCR1, 24);
 
 	clkdev_add_physbase(clks[per1_div], MX27_GPT1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per1_div], MX27_GPT2_BASE_ADDR, NULL);
@@ -247,6 +248,7 @@ static int imx27_ccm_probe(struct device *dev)
 	clkdev_add_physbase(clks[lcdc_ipg_gate], MX27_LCDC_BASE_ADDR, "ipg");
 	clkdev_add_physbase(clks[ipg], MX27_FEC_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[nfc_div], MX27_NFC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[wdog_ipg_gate], MX27_WDOG_BASE_ADDR, NULL);
 
 	return 0;
 }
-- 
2.39.2



