Delivery-date: Fri, 17 Feb 2023 10:41:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSxFX-00A1os-2b
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 10:41:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSxFW-0007f7-0z
	for lore@pengutronix.de; Fri, 17 Feb 2023 10:41:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yk/e6v12WEYaVjy/URKVC2HapLNlA8yzP0jY6D/ff/s=; b=RAEy/dzjXL+92wcESXbcdsiVd8
	Tk2EvTSGnPJbeeCC0/ZpP+3qBH2uoobljSQ8g2MLofont/FRH9s8mV5DJTulr+GfbjXdoa9Z3/7l0
	aPin/ueCG7/Lmy5r/qy1C2XVcw23gkevX3drG8vlQ+BMQdCWD7Bm287QdD/BPUsd4bLghh+5/+pUB
	M1yV303JOSV526/onXFCKItOJfCrUMTwdG1qWt8DpoB4jmUnarIcXkQelaD779O3o6SBIFRCStOwC
	lkqMJePXIgV2Zbd+tcbk9Ll5aTXzcD4o27iZ7iZt3+5RdbYPJ2BzRuJBFRFL13nL8Pe3jl/AuoF+i
	oCIpivzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSxEp-00DWOe-UN; Fri, 17 Feb 2023 09:41:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSxEj-00DWMW-36
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 09:41:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxEh-0007PJ-R7; Fri, 17 Feb 2023 10:40:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxEg-005YBx-0G; Fri, 17 Feb 2023 10:40:59 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxEg-007yrW-8e; Fri, 17 Feb 2023 10:40:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 17 Feb 2023 10:40:54 +0100
Message-Id: <20230217094056.1894461-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217094056.1894461-1-s.hauer@pengutronix.de>
References: <20230217094056.1894461-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_014101_174205_CDA7EAB4 
X-CRM114-Status: GOOD (  11.93  )
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
Subject: [PATCH 1/3] clk: composite: Give mux/div/gate clks names
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The mux/div/gate clks are never registered with the clk framework,
so names are normally not necessary. At least the mux clk might
end up in a call to clk_set_parent() though. This happens when a
mux shall change its rate and then reparents to the most suitable
parent. To get a better clue which being reparented there give the
mux a name and while at it give the other clocks names as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/rockchip/clk.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 6e7bba414f..5c074f526a 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -59,6 +59,7 @@ static struct clk *rockchip_clk_register_branch(const char *name,
 		mux->width = mux_width;
 		mux->flags = mux_flags;
 		mux->lock = lock;
+		mux->hw.clk.name = basprintf("%s.mux", name);
 		mux->hw.clk.ops = (mux_flags & CLK_MUX_READ_ONLY) ? &clk_mux_ro_ops
 							: &clk_mux_ops;
 	}
@@ -74,6 +75,7 @@ static struct clk *rockchip_clk_register_branch(const char *name,
 		gate->reg = base + gate_offset;
 		gate->shift = gate_shift;
 		gate->lock = lock;
+		gate->hw.clk.name = basprintf("%s.gate", name);
 		gate->hw.clk.ops = &clk_gate_ops;
 	}
 
@@ -93,6 +95,7 @@ static struct clk *rockchip_clk_register_branch(const char *name,
 		div->width = div_width;
 		div->lock = lock;
 		div->table = div_table;
+		div->hw.clk.name = basprintf("%s.div", name);
 		div->hw.clk.ops = (div_flags & CLK_DIVIDER_READ_ONLY)
 						? &clk_divider_ro_ops
 						: &clk_divider_ops;
-- 
2.30.2



