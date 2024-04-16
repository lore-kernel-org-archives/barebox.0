Delivery-date: Tue, 16 Apr 2024 08:32:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwcMM-002zh7-2t
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 08:32:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwcMM-0004j2-Ao
	for lore@pengutronix.de; Tue, 16 Apr 2024 08:32:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=p+9jcppDYN61kfoHFzq/bHJsQbaldFUiJ/BLrfjJ2Ko=; b=h6ba9a6qsF6bvOqEVMkMlOvs+v
	p/G/2BzXxLh6GmvepyBbFAW9lkQktbXetZ5tiAmtj+P734NJFjsXwsiiIhnNT1Fn+eG5XxNl6bMKl
	3AQ50WDJZYV/B1dxJ3Qvr+QPblsqA1b1yKa/VfFkBsBFsQMNZ/DaiUxKq5IQoM8MDZFkn9PVYX8C3
	+Kiipa6K9ZFgQFbx7yACwkAkZOILKPh9FLBEuoh2CZJKdN/701auJOQWIBw+TsvS1QRXo8N91CC7R
	ErAeu5uWEO4+5bS0B6ecWe3hDnUTkb/gs38Omyr5lRLqsj818ScZ7H6CLYNLQ0gABLobqR/nZyEim
	9XaI4uog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwcLt-0000000B5Q1-1fj6;
	Tue, 16 Apr 2024 06:31:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwcLp-0000000B5PF-38jy
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 06:31:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwcLo-00047p-3w; Tue, 16 Apr 2024 08:31:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwcLn-00CYkM-NT; Tue, 16 Apr 2024 08:31:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwcLn-005e9P-20;
	Tue, 16 Apr 2024 08:31:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 Apr 2024 08:31:25 +0200
Message-Id: <20240416063126.1345967-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_233129_839693_268CF1C0 
X-CRM114-Status: UNSURE (   9.15  )
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
Subject: [PATCH 1/2] clk: imx27: add nand clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The NAND clock is currently missing. The NAND driver doesn't use it
currently, but will be using it later once we update the driver. Add
this missing clock.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-imx27.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/imx/clk-imx27.c b/drivers/clk/imx/clk-imx27.c
index 083d87fb34..7da4a1f9a6 100644
--- a/drivers/clk/imx/clk-imx27.c
+++ b/drivers/clk/imx/clk-imx27.c
@@ -246,6 +246,7 @@ static int imx27_ccm_probe(struct device *dev)
 	clkdev_add_physbase(clks[lcdc_ahb_gate], MX27_LCDC_BASE_ADDR, "ahb");
 	clkdev_add_physbase(clks[lcdc_ipg_gate], MX27_LCDC_BASE_ADDR, "ipg");
 	clkdev_add_physbase(clks[ipg], MX27_FEC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[nfc_div], MX27_NFC_BASE_ADDR, NULL);
 
 	return 0;
 }
-- 
2.39.2



