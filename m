Delivery-date: Thu, 22 Dec 2022 15:33:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8Mdm-0051cT-00
	for lore@lore.pengutronix.de; Thu, 22 Dec 2022 15:33:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8Mdi-0007HE-JR
	for lore@pengutronix.de; Thu, 22 Dec 2022 15:33:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WkO6msbWviiABWFQlmebARPc8MPjhLbtlSA2Wct+EuY=; b=F32CShM7aub2vD4IvdBb/CV+vb
	9fZyGaYsT7jxndKlusPJSiBj+t7vHWQHJ2qCJ0yoTVxOgxOfNHQqE4kn4MSEmMpR5kVB0n7+8xJ5c
	/nj5AD4putXjwVWlqLFQ6aCUavTbqSocJSeps27DI6AxZoDLDb6O03yxiBeUDzkYrExA8fg+4ImyU
	INBf6YTWO2alU74qqxejHceAWzfpxygumN3RwF7xhQapbBX+1yda0dQjuwt+SEUDb7tbvjErlEqQI
	h8JWmRXwOUI/+ohlUp++/MW969lyRRnT2UrVFMp4MOq2/ef55jZEiYzrUaSznGn5maLNzTaEzGfPu
	vy4jWVXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mbu-00CzGC-So; Thu, 22 Dec 2022 14:31:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MIv-00ComX-3w
	for barebox@lists.infradead.org; Thu, 22 Dec 2022 14:12:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIr-0003uc-CL; Thu, 22 Dec 2022 15:12:09 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIq-0011pw-PY; Thu, 22 Dec 2022 15:12:08 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIp-00Cx8r-6s; Thu, 22 Dec 2022 15:12:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Leif Middelschulte <leif.middelschulte@klsmartin.com>,
	uol@pengutronix.de,
	ore@pengutronix.de,
	=?UTF-8?q?S=C3=B8ren=20Andersen?= <san@skov.dk>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Dec 2022 15:11:57 +0100
Message-Id: <20221222141201.3087192-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
References: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061213_515366_7F020810 
X-CRM114-Status: GOOD (  13.46  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/6] clk: mux: forward round/set rate to parent if CLK_SET_RATE_PARENT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Prior to v2021.07.0, clk mux round/set rate ops were forwarded to
clk_parent_round_rate/clk_parent_set_rate, which would change nothing
unless CLK_SET_RATE_PARENT is set.

Since that release, barebox will instead try to reparent the mux
to arrive at a closer rate, unless CLK_SET_RATE_NO_REPARENT is
specified.

The correct behavior would have been for CLK_SET_RATE_NO_REPARENT
to fall back to the old behavior when NO_REPARENT is specified,
but instead CLK_SET_RATE_PARENT ended up ignored.

Fix this by calling clk_parent_round_rate/clk_parent_set_rate once again
in that case. When CLK_SET_RATE_PARENT is not set, they are equivalent
to the current open-coded behavior.

Fixes: d07c34e116cd ("clk: clk-mux: implement setting rate by reparenting")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk-mux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index ad82d97ea88c..1d94e0916732 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -118,7 +118,7 @@ long clk_mux_round_rate(struct clk_hw *hw, unsigned long rate,
 	struct clk *bestparent;
 
 	if (clk->flags & CLK_SET_RATE_NO_REPARENT)
-		return *prate;
+		return clk_parent_round_rate(hw, rate, prate);
 
 	bestparent = clk_mux_best_parent(clk, rate, &rrate);
 
@@ -135,7 +135,7 @@ static int clk_mux_set_rate(struct clk_hw *hw, unsigned long rate,
 	int ret;
 
 	if (clk->flags & CLK_SET_RATE_NO_REPARENT)
-		return 0;
+		return clk_parent_set_rate(hw, rate, parent_rate);
 
 	parent = clk_mux_best_parent(clk, rate, &rrate);
 
-- 
2.30.2



