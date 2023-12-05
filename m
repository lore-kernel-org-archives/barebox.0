Delivery-date: Tue, 05 Dec 2023 09:12:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQXJ-003vrF-2M
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 09:12:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQXJ-0004iQ-PI
	for lore@pengutronix.de; Tue, 05 Dec 2023 09:12:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5pGeh3BNj12eZ/YIaTEY9Mnv5EqdigKaj1RRW4VCCiM=; b=hTkecf85uwyxoUBkYOtuBEhtaC
	cfIbpkli1iVXDw44YdNZRO2ivF1ZFiJkhe3WMlY1jjmvU3hjrc0M9Y76W1qwrk9L/mF8Bl4Ia3Efi
	ZkpPsvJNoEEyruo5RPY6H7uGq3kB9SPU+ImPLr6C/1V37isgU94X0WvbyTDIln9OC7hlZGgRWLiU8
	8aOf3exfqKAy1B1wnznGwHPR6ImlABZAT1YtaPoLvlGoLd215Yy/76mHMIXW9yktw/O4hSBZ5EtVf
	sSP0rt7B9NQe9cD9+L8JzewgO7XrtcVQeF3/iB9da5MtujCxEK0wS5EZod7oh3qEBY1gMTP9O+cG4
	5TU0RbsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQWB-006bUZ-30;
	Tue, 05 Dec 2023 08:10:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQW8-006bTL-0b
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 08:10:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rAQW6-0004RP-RH; Tue, 05 Dec 2023 09:10:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rAQW6-00DhWT-Ey; Tue, 05 Dec 2023 09:10:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rAQW6-00HOZV-1E;
	Tue, 05 Dec 2023 09:10:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  5 Dec 2023 09:10:52 +0100
Message-Id: <20231205081052.4145979-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_001056_225574_F7CBD9DC 
X-CRM114-Status: GOOD (  10.02  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] clk: rockchip: pll fix out of bounds read
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

parent_names[1] is only valid for PLLs that are not of the type pll_rk3328.
Yet, the code references it anyway unconditionally, triggering a KASan
error. Fix this by slightly reworking the code.

This issue also seems to exist upstream in Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/rockchip/clk-pll.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index ee0603557567..b4152b03b19f 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -1101,19 +1101,21 @@ struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
 	    pll_type == pll_rk3588_core)
 		pll_mux->flags |= CLK_MUX_HIWORD_MASK;
 
-	/* the actual muxing is xin24m, pll-output, xin32k */
-	pll_parents[0] = parent_names[0];
-	pll_parents[1] = pll_name;
-	pll_parents[2] = parent_names[1];
-
 	init.name = name;
 	init.flags = CLK_SET_RATE_PARENT;
 	init.ops = pll->pll_mux_ops;
 	init.parent_names = pll_parents;
-	if (pll_type == pll_rk3328)
+
+	/* the actual muxing is xin24m, pll-output, xin32k */
+	pll_parents[0] = parent_names[0];
+	pll_parents[1] = pll_name;
+
+	if (pll_type == pll_rk3328) {
 		init.num_parents = 2;
-	else
+	} else {
+		pll_parents[2] = parent_names[1];
 		init.num_parents = ARRAY_SIZE(pll_parents);
+	}
 
 	mux_clk = clk_register(NULL, &pll_mux->hw);
 	if (IS_ERR(mux_clk))
-- 
2.39.2



