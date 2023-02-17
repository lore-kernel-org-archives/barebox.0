Delivery-date: Fri, 17 Feb 2023 10:41:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSxFZ-00A1pI-Fr
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 10:41:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSxFY-0007fq-GB
	for lore@pengutronix.de; Fri, 17 Feb 2023 10:41:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e8e2/fAblPz0cNVg46tXVXz+lQ+8Gc3H7FJt7qARolI=; b=U4tCLXwoDmuVOz15M3NF1rDL2h
	6Sckx/P8caVF54VFWzSkE+gKXeRfed9t242Dpe0AOTdzmhXYBMiV/Y/4R7Vf/p3hyc3y1EbvzeM6l
	5Jm/03ge1yGdZA7QFyi1F9NGjnHgC3V+PGlYmc3lxfoNpiW8zRAaVufQIwmGXsUahUHF9Kd5DFd3B
	xbTGs+IexCjhV8SA24kK/KDjQVmIRRK/2UDQg2WQsQsLLzOCrXcVoG37LGRKRCrpj+ydND7+YM9H0
	SYXfXuXbsd6FKovIuolRbGHzAV4zaf2SwFICM+ggm8LVv1yMkvy694Ftb116x3Xw71NCZZjqAtsO9
	yo6dQykA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSxEv-00DWQe-ML; Fri, 17 Feb 2023 09:41:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSxEr-00DWPM-2q
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 09:41:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxEh-0007PP-SZ; Fri, 17 Feb 2023 10:40:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxEg-005YC3-3B; Fri, 17 Feb 2023 10:40:59 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxEg-007yra-96; Fri, 17 Feb 2023 10:40:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 17 Feb 2023 10:40:55 +0100
Message-Id: <20230217094056.1894461-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217094056.1894461-1-s.hauer@pengutronix.de>
References: <20230217094056.1894461-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_014109_142482_2FA64766 
X-CRM114-Status: GOOD (  15.27  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] clk: composite: Fix enable_count when reparenting mux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A mux in a composite clk may implement a set_rate callback which
in the mux results in reparenting the composite clk. clk_set_rate()
is called on the mux inside the composite clk, not on the composite
clk itself. Only the latter has the correct enable_count though,
so transfer the enable_count to the mux before calling its set_rate
op.
Without this patch the clk frameworks sees the enable_count from
the mux (which is 0), so the new parent will never be enabled, even
if the composite clk is enabled.

The wrong behaviour was observed on a RK3568 board:

barebox@Radxa ROCK3 Model A:/ clk_dump cclk_emmc
xin24m (rate 24000000, enable_count: 9, enabled)
    pll_gpll (rate 1188000000, enable_count: 1, enabled)
        gpll (rate 1188000000, enable_count: 5, always enabled)
            gpll_200m (rate 198000000, enable_count: 5, enabled)
                cclk_emmc (rate 198000000, enable_count: 1, enabled)
                    emmc_drv (rate 99000000, enable_count: 0, always enabled)
                    emmc_sample (rate 99000000, enable_count: 0, always enabled)
barebox@Radxa ROCK3 Model A:/ clk_set_rate cclk_emmc 50000000
barebox@Radxa ROCK3 Model A:/ clk_dump cclk_emmc
xin24m (rate 24000000, enable_count: 9, enabled)
    pll_cpll (rate 1000000000, enable_count: 1, enabled)
        cpll (rate 1000000000, enable_count: 2, always enabled)
            cpll_50m (rate 50000000, enable_count: 0, enabled)
                cclk_emmc (rate 50000000, enable_count: 1, enabled)
                    emmc_drv (rate 25000000, enable_count: 0, always enabled)
                    emmc_sample (rate 25000000, enable_count: 0, always enabled)

After the reparenting cclk_emmc has an enable count of 1, but its parent
cpll_50m has an enable count of 0 which must not happen.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-composite.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index 45dec790d7..454bfaeb0c 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -89,8 +89,16 @@ static int clk_composite_set_rate(struct clk_hw *hw, unsigned long rate,
 
 	if (!(hw->clk.flags & CLK_SET_RATE_NO_REPARENT) &&
 	    mux_clk &&
-	    mux_clk->ops->set_rate)
+	    mux_clk->ops->set_rate) {
+		/*
+		 * We'll call set_rate on the mux clk which in turn results
+		 * in reparenting the mux clk. Make sure the enable count
+		 * (which is stored in the composite clk, not the mux clk)
+		 * is transferred correctly.
+		 */
+		mux_clk->enable_count = hw->clk.enable_count;
 		return mux_clk->ops->set_rate(clk_to_clk_hw(mux_clk), rate, parent_rate);
+	}
 
 	return 0;
 }
-- 
2.30.2



