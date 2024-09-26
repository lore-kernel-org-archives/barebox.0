Delivery-date: Thu, 26 Sep 2024 15:15:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stoLa-0030qX-1S
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 15:15:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stoLZ-0005fj-U2
	for lore@pengutronix.de; Thu, 26 Sep 2024 15:15:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8tHRH3NezyZ0Ulk8HSSVBY/6S79IiazrKRN1FtPATRE=; b=eLL6ky7zUGu2VY1GmocQ6Orp2h
	BYqnAe2ThFBJ+EMOr9lDldvKkt/zLZOnM1jK1T7yehgWeKmsuioICUdjk1he8JwsVzFXx2nJq25L9
	EujCQy+TE7QODaynnrUqaCP/K+1MgLYSGdeKGNuZuugQ3s70aGgeFMbjRqIdbpXhejcBIsCWolop1
	HDHCoZ3NtiljE4erJbl1FapdlJchqHx2ROYfVyEXpBSEwhKYslPas3jQwZMAq2vhDypiHFp3skwPw
	w4eoXkXMKLfExi2UpZ/N8If5AYFkkl5Tx6eHVg/RzjlliKjNQXkQ+4tMwgOt/4Db/Ni47vQCqSvOK
	AlAOvmcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stoKv-00000008Qyh-0Vba;
	Thu, 26 Sep 2024 13:15:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stoKn-00000008Qvq-3r3w
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 13:15:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-0004uj-Jm; Thu, 26 Sep 2024 15:15:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-001h7A-3W; Thu, 26 Sep 2024 15:15:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-00GZyn-1c;
	Thu, 26 Sep 2024 15:15:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Sep 2024 15:14:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240926-vop2-v1-1-fe0581f2020b@pengutronix.de>
References: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
In-Reply-To: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727356502; l=2203;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=uU4yudKKQdXWmdQZ3+qB7CEzKODox6o/WKVqRZt8otI=;
 b=j1GUoCHGWd+1Of2js1rlWk32UHhsW3hDhWBpD5kYMgH5FyQPdNOBrOBLAuq7uClqKu25J3YjO
 wf2CIOXqZmEBvNSOrdCiWcT+3xgC+JvKkaxgVBZ2LgtlAD+afmq9GUU
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_061506_170070_72AD1A09 
X-CRM114-Status: GOOD (  10.10  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/13] clk: rockchip: rk3568: Fix HDMI clocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a combination of Linux commits:

6e69052f01d91 ("clk: rockchip: Add CLK_SET_RATE_PARENT to the HDMI reference clock on rk3568")
ff3187eabb5ce ("clk: rockchip: drop CLK_SET_RATE_PARENT from dclk_vop* on rk3568")

These are needed for proper HDMI clock settings on RK3568.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/rockchip/clk-rk3568.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 50fbf66d23..bd6c8269ca 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1050,13 +1050,13 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
 			RK3568_CLKGATE_CON(20), 8, GFLAGS),
 	GATE(HCLK_VOP, "hclk_vop", "hclk_vo", 0,
 			RK3568_CLKGATE_CON(20), 9, GFLAGS),
-	COMPOSITE(DCLK_VOP0, "dclk_vop0", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
+	COMPOSITE(DCLK_VOP0, "dclk_vop0", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_NO_REPARENT,
 			RK3568_CLKSEL_CON(39), 10, 2, MFLAGS, 0, 8, DFLAGS,
 			RK3568_CLKGATE_CON(20), 10, GFLAGS),
-	COMPOSITE(DCLK_VOP1, "dclk_vop1", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
+	COMPOSITE(DCLK_VOP1, "dclk_vop1", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_NO_REPARENT,
 			RK3568_CLKSEL_CON(40), 10, 2, MFLAGS, 0, 8, DFLAGS,
 			RK3568_CLKGATE_CON(20), 11, GFLAGS),
-	COMPOSITE(DCLK_VOP2, "dclk_vop2", hpll_vpll_gpll_cpll_p, 0,
+	COMPOSITE(DCLK_VOP2, "dclk_vop2", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_NO_REPARENT,
 			RK3568_CLKSEL_CON(41), 10, 2, MFLAGS, 0, 8, DFLAGS,
 			RK3568_CLKGATE_CON(20), 12, GFLAGS),
 	GATE(CLK_VOP_PWM, "clk_vop_pwm", "xin24m", 0,
@@ -1574,7 +1574,7 @@ static struct rockchip_clk_branch rk3568_clk_pmu_branches[] __initdata = {
 			RK3568_PMU_CLKGATE_CON(2), 14, GFLAGS),
 	GATE(XIN_OSC0_EDPPHY_G, "xin_osc0_edpphy_g", "xin24m", 0,
 			RK3568_PMU_CLKGATE_CON(2), 15, GFLAGS),
-	MUX(CLK_HDMI_REF, "clk_hdmi_ref", clk_hdmi_ref_p, 0,
+	MUX(CLK_HDMI_REF, "clk_hdmi_ref", clk_hdmi_ref_p, CLK_SET_RATE_PARENT,
 			RK3568_PMU_CLKSEL_CON(8), 7, 1, MFLAGS),
 };
 

-- 
2.39.5



