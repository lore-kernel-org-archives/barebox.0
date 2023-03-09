Delivery-date: Thu, 09 Mar 2023 11:48:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDoy-00Eiai-2N
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 11:48:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDox-0001vn-Ny
	for lore@pengutronix.de; Thu, 09 Mar 2023 11:48:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TxsRrKvkuVJDGZcmIE/PiZxSLlQqgZcRE5MrKm+2rlQ=; b=SCIjXA86p2Z6orCfV8RhzflmNW
	r2ofDcSegItqVo8lGpzYWd/9sIiZzGsWgmK57qRwtgxZPLdAAt6OkBY7/be2/cdPddLBHgyD2q3nD
	CNSYxZ2ofVBbiJ3nvfOHLmXXz5FN/CRjsis/SCae1LWdTkCouzH5y/Fm+ad/qlUvQ+qMBpGdsP5G4
	tiPoqhFzyC6ELY69p5mf36Him5yo9vbx3IvppLk8TInecAQX+kNceEMoLxWwm3s4Mj4VOeF7dJdYH
	sj9FLBlvevld77Gg6Eu9wHUfItP5bXeiGhh+USdjjle+habCfUHSsGn3+Vht/ptHfiep9YbWOvBES
	wgRXcF/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDnr-009CZp-Mq; Thu, 09 Mar 2023 10:47:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDnl-009CYL-LS
	for barebox@bombadil.infradead.org; Thu, 09 Mar 2023 10:47:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=TxsRrKvkuVJDGZcmIE/PiZxSLlQqgZcRE5MrKm+2rlQ=; b=j9e3tRX6h39QQlrhN2GqQUpCtk
	buV51dRQeSuW6t8NfsuH0a3heehvrZvmRqQw+9wcySZtVrgx1BJsxqzUrACm7YGCl+LLnTtZhfThc
	2i5J8u/ePIiBXTm9OVHFgFViS6RghU0fCFwJlBK58H9EU71CZa9y/DSdTdniULXdSmIZ39kd1kCsh
	fl+BWrJ7qol8oDUsDzbDw7FXxfPmAGLKL+Q6auxRSfebeuOLyZpnn0Qc7uN1FdwhyNlREDQK+DLio
	F3YB0P4NOggri88t/eZrDxtUAoBRmTfz+6/AJx2RQxU3m5WbpZm165Al2eKUA9sKW0jTyJ0J3wIpp
	Zx1WL7bg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1paDnh-0005Vl-0V
	for barebox@lists.infradead.org;
	Thu, 09 Mar 2023 10:47:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paDnf-0001f6-1r; Thu, 09 Mar 2023 11:47:07 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paDne-002vXB-DP; Thu, 09 Mar 2023 11:47:06 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paDnd-00FddF-Lh; Thu, 09 Mar 2023 11:47:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  9 Mar 2023 11:47:04 +0100
Message-Id: <20230309104704.3725522-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_104709_819917_FB61DD10 
X-CRM114-Status: GOOD (  11.70  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] clk: Rockchip: Fix arrays out of bounds access
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In rockchip_clk_register_pll() the number of parent_names is passed in
num_parents.  Do not access parent_names[1] when the array is not big
enough.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/rockchip/clk-pll.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index fdbb016e7f..a45a445de6 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -853,7 +853,7 @@ struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
 		struct rockchip_pll_rate_table *rate_table,
 		unsigned long flags, u8 clk_pll_flags)
 {
-	const char *pll_parents[3];
+	const char *pll_parents[3] = {};
 	struct clk_init_data init;
 	struct rockchip_clk_pll *pll;
 	struct clk_mux *pll_mux;
@@ -895,7 +895,8 @@ struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
 	/* the actual muxing is xin24m, pll-output, xin32k */
 	pll_parents[0] = parent_names[0];
 	pll_parents[1] = pll_name;
-	pll_parents[2] = parent_names[1];
+	if (num_parents > 1)
+		pll_parents[2] = parent_names[1];
 
 	init.name = name;
 	init.flags = CLK_SET_RATE_PARENT;
-- 
2.30.2



