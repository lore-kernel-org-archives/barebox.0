Delivery-date: Tue, 09 Jan 2024 17:17:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmk-00AUIT-2f
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 17:17:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmi-0000Ob-VI
	for lore@pengutronix.de; Tue, 09 Jan 2024 17:17:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rytCPEzdw9hhZGXiIaML4V3NoHG7ifj2Qujm3Vp2vJg=; b=tHNWVngeAWEsSmjQu34fG+lzBl
	FwwhHnDMRv0FhYn/6XNvgxNDED75UQ51BcWdBOezG9dRxb+2WTjyCTw84PP461TuE97JGJaJW6o8D
	nnWfFTxzatWPieGakKRF64LADHTyGqQcC+coK07ImP+78upoL6fll23PFf/9UE8ZGsF4+JMVS7CcA
	P8VaIABYt5iCiEB10HxiVzcE3KB8Seuo7gzhuZRfyxERAymF7/AP8sqbp/zKDdRs/aaaRuJxsV8dA
	IoM5b+wb9/CH7QFWNRVCaQxD4FaMT3hOG3qwAmTJhJGajdAbHWxX19Lspzjd1v2/nsL6EIIK3NJm5
	UoznKT8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElf-008nzJ-0x;
	Tue, 09 Jan 2024 16:15:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElL-008nix-2h
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 16:15:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElF-0007lV-Ju; Tue, 09 Jan 2024 17:15:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-001WCv-Oz; Tue, 09 Jan 2024 17:15:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-00E7RV-2H;
	Tue, 09 Jan 2024 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 17:15:23 +0100
Message-Id: <20240109161527.3237581-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109161527.3237581-1-s.hauer@pengutronix.de>
References: <20240109161527.3237581-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_081535_901698_DD588862 
X-CRM114-Status: GOOD (  11.87  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 17/21] clk: layerscape: increase PLL divider array
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Newer Layerscape SoCs like the LS1028a have more PLL dividers,
increase the divider array to accomodate this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-qoric.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-qoric.c b/drivers/clk/clk-qoric.c
index 6c69b5b3f3..44155692a8 100644
--- a/drivers/clk/clk-qoric.c
+++ b/drivers/clk/clk-qoric.c
@@ -27,6 +27,7 @@
 #define CGA_PLL4	4	/* only on clockgen-1.0, which lacks CGB */
 #define CGB_PLL1	4
 #define CGB_PLL2	5
+#define MAX_PLL_DIV	32
 
 struct clockgen_pll_div {
 	struct clk_hw *hw;
@@ -34,7 +35,7 @@ struct clockgen_pll_div {
 };
 
 struct clockgen_pll {
-	struct clockgen_pll_div div[8];
+	struct clockgen_pll_div div[MAX_PLL_DIV];
 };
 
 #define CLKSEL_VALID	1
-- 
2.39.2



