Delivery-date: Thu, 07 Nov 2024 16:00:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t93zS-005xbI-2f
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 16:00:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t93zT-0001xO-BG
	for lore@pengutronix.de; Thu, 07 Nov 2024 16:00:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DmWk27Ju0aqY9EsuznXNipglOTQPla80rAq9Gdl7gls=; b=3x6BmCFFar8Nt7UY6+WhSVRxyM
	U1u1g9kS7ys5RlBZGEW+B115Ja+JzAYQ2i8Rrz9RFnpLpH6uPphE42Cel6Xe7E3O7cVhwW0WeJbEk
	NSRZ4FAo+NqtR1rXXX2Y1v9kNQj5FXqqHu4b5zLo8hf9c1gPNbfZVWpPJpfXanlFBkwMthzIDqB2a
	1AsINfbRF2u+FEp1CCW45TSEyZaolmvMap0+1K3UgjPFDU5dD4HsC7XKFCw5x2ZqW5vBuSxVWBSXT
	/oQbJzToFsiEaOLSDjZ/RI+vx4XDH2szKMOBHOtuDrHk1YLjpazX0pba35QQtAjLzZAo+a4EU1KNT
	Q7sz6NUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t93ys-00000007Mbx-0C3I;
	Thu, 07 Nov 2024 14:59:30 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t93x2-00000007M8h-2EcM
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 14:57:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1730991449;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DmWk27Ju0aqY9EsuznXNipglOTQPla80rAq9Gdl7gls=;
	b=Rd9htPRbclNF78KMiKAgbmBW/ONT0iMDYgZtfu39sYQVQCBO85Vv4QCEnIxQ6Y2Jjeg/bg
	dGcY9STSXTkLS6LFEtAk9oON93pZFpvRSXMGVSYdee97O2Sf1iyhvWJEFa1j18vgfpva/4
	NjPyJ2b3Iof7xnnnF0/WjceWp3erbzAHWSlinFN3epUPsSpRede3GS1huVe7H9gLkDHGwA
	NpEOfy4+9qmxMAe8JcehOe/vBMFEFYRwDyBYWyRlELeTBe8G3b5LJET1eRng6ub/Fnoy8y
	9nQqK+QqsCStD23rffDw9wQcfvxk1Pi074K3SjLXvzncMq0E2UbKuS8lsoM13w==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:1b71:4dca:dfdc:1e52])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 4c5c3d21 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 7 Nov 2024 15:57:29 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu,  7 Nov 2024 15:57:18 +0100
Message-ID: <20241107145722.5145-3-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241107145722.5145-1-jmaselbas@zdiv.net>
References: <20241107145722.5145-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_065736_890810_F2E52FF9 
X-CRM114-Status: GOOD (  11.10  )
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
Subject: [PATCH 2/6] clk: divider: add error code propagation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

divider_get_val can return a negative error code and should not be used
as a valid divider.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/clk/clk-divider.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index ccab70aecc..b05b042da5 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -308,6 +308,7 @@ static int clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 	struct clk *clk = clk_hw_to_clk(hw);
 	struct clk_divider *divider = to_clk_divider(hw);
 	unsigned int value;
+	int ret;
 	u32 val;
 
 	if (divider->flags & CLK_DIVIDER_READ_ONLY)
@@ -320,8 +321,10 @@ static int clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 		clk_set_rate(clk_get_parent(clk), parent_rate);
 	}
 
-	value = divider_get_val(rate, parent_rate, divider->table,
+	value = ret = divider_get_val(rate, parent_rate, divider->table,
 				divider->width, divider->flags);
+	if (ret < 0)
+		return ret;
 
 	val = readl(divider->reg);
 	val &= ~(clk_div_mask(divider->width) << divider->shift);
-- 
2.46.2



