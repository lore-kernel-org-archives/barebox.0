Delivery-date: Thu, 07 Nov 2024 16:00:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t93zT-005xbe-13
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 16:00:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t93zT-0001xy-Qj
	for lore@pengutronix.de; Thu, 07 Nov 2024 16:00:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d+kXYLSgzTNmRBWGGHU7TGrd4rHhgfGjGvUDlY0oPXY=; b=EhVhIoxtnsyLM5N4wmIfNMYzR4
	W624FPlQQ8xXe2fvJ4+aHL+XokEReK1Ol3XyzIi+L7Sgo/imN39KF8Zo9lLHNE8dR2oUxhS+9kOLs
	dErpIbdi+eShHird5SJpnH8RtBomHPhIv/4sAAUxqQ3WI92FeRNtq+Lo8v3te00nbiDcxlr+o6C8v
	uWewfOGB88scD2ZAjha7iq957ozOww6Fph/whuHKdVyjBkUaA5Zt+0EKUVst5XXvAzV7D0dJnARge
	vQJ7q3av4xCfbiLtBABcKpuXK91sVi04jJeugQ2buRAUcaaZEwzqhNmLbF90vwIG9L73blavFksTu
	AjhEoAAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t93yr-00000007Mbn-1w6s;
	Thu, 07 Nov 2024 14:59:29 +0000
Received: from zdiv.net ([46.226.106.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t93x1-00000007M9n-3mRm
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 14:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1730991449;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=d+kXYLSgzTNmRBWGGHU7TGrd4rHhgfGjGvUDlY0oPXY=;
	b=s9qMYrB/2OahR3WdMW3T5pT6Ck9CzLb+Fbfu6TzREPz0NjtiCavHkBB+Imt1p6O/x2O2rv
	9ILseBd596kgnrk/48lK1/HUU80dGZn8ZhO8Fu6UA+whgFmueykZ1lswX9vMn2sRwAEXPx
	tS2YB8tUP/7UCra3SR1n2jRQvqCLs/hiv84yf2Y2Y7Nzfm/QxE1h1cwU5s4OZosi5zaJwr
	9JqU6Iqxo/GCxmlj3AyzX+6vUn0SmQ4t1Sjo9sH3n2Kf0HRgWHU/Y2q9GlTewxgp4rygd6
	Nrcdsnf8Kmfl/gJEUCkvrd6qmXNR8sFp5Ci574gGu+P7wPeSm1ZIDfpqX0eBTg==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:1b71:4dca:dfdc:1e52])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 69318d7c (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 7 Nov 2024 15:57:29 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu,  7 Nov 2024 15:57:17 +0100
Message-ID: <20241107145722.5145-2-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241107145722.5145-1-jmaselbas@zdiv.net>
References: <20241107145722.5145-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_065736_238197_2DBFA7B7 
X-CRM114-Status: GOOD (  10.27  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] clk: clk-composite: fix callback guard in clk_composite_round_rate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In the function clk_composite_round_rate a test for a NULL function pointer
guard the call to the round_rate callback but doesn't check for the correct
callback: it should be round_rate instead of set_rate

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/clk/clk-composite.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index 454bfaeb0c..fdf53ce75e 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -65,7 +65,7 @@ static long clk_composite_round_rate(struct clk_hw *hw, unsigned long rate,
 
 	if (!(hw->clk.flags & CLK_SET_RATE_NO_REPARENT) &&
 	    mux_clk &&
-	    mux_clk->ops->set_rate)
+	    mux_clk->ops->round_rate)
 		return mux_clk->ops->round_rate(clk_to_clk_hw(mux_clk), rate, prate);
 
 	return *prate;
-- 
2.46.2



