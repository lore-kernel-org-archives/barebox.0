Delivery-date: Tue, 07 Jan 2025 16:52:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVBsT-000NIK-1h
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 16:52:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVBsP-0007S1-NA
	for lore@pengutronix.de; Tue, 07 Jan 2025 16:52:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8jj8YVllBVqeKkiYmY0kmrawfTrLWgE6KcIDzGhA8C0=; b=Anl6uqywwvebVNo1YxLxHYZM+k
	qCz8eWtGb4EVJ4OdalIrTslUcp0vcXC1uQi7PbRAxt0Y+nX/nFdasylqw4PyVyVc4+h+bB/CWiOoP
	DQ8JyOoS1QdugK/RoQXtrwXOyVpnGmQSVrHLmZTgFTvjGQOrFDWklMwO0HTEIKaHEgjRHu7VySce9
	qF5nxxC1agqogKnEMPpRmMl3MIjqSwacKAeX4Me3G0aoVJsiU0im5L7zsuRZ2cy6asj5eS5b4zkvF
	r3m678TE5+caNGWJjdTWPj86FBdOFc8ou+vP3kAHKG78zqKOuy6Lfgcsmt65p1qTeA1Hx77qn9uj2
	EJZeKU8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVBsA-00000005VjZ-1QFh;
	Tue, 07 Jan 2025 15:52:02 +0000
Received: from zdiv.net ([46.226.106.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVAiS-00000005FEx-1h7v
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 14:38:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1736260668;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8jj8YVllBVqeKkiYmY0kmrawfTrLWgE6KcIDzGhA8C0=;
	b=V0q1ldk38AP8Bd3EgLFQGQjAg6pC0mMNVuiPqnfy8JzkFzXT+JknEnHOccH9NQ5U+vrfBD
	DvkpJKYAFduuh6gB+0yeXQcAbgpKfLw4evi8sQqT0YNkSSZ8hYp3sGVO7qeNe9coAC0YGz
	Qnaz4h3iiSMvGh98c/fEZsxQb60M7APupohdnpj1nd/DgGFA+5WDoG/R01+l9x34uKwB4R
	8R/sHLIwPLZ6zfAMmeOiVqLXlINx46TtFfLKDZk1wWN+FIepIEZkqvVzC7roM4YGDVzh+c
	F6OSDMXKy1m0IGA2cqvygm1B4h+3QU74+W+kTg/q1Dy3x/asO+rl1T6dFjCtrg==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:cfea:c4a:f4aa:bbd])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 12f52f54 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 7 Jan 2025 15:37:48 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Tue,  7 Jan 2025 15:37:35 +0100
Message-ID: <20250107143740.16903-2-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250107143740.16903-1-jmaselbas@zdiv.net>
References: <20250107143740.16903-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_063756_699454_6350D273 
X-CRM114-Status: GOOD (  11.08  )
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
Subject: [PATCH v2 1/6] clk: divider: add error code propagation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

divider_get_val can return a negative error code and should not be used
as a valid divider.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
v1->v2:
  - changed value to int and removed ret variable (Ahmad)

drivers/clk/clk-divider.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index ccab70aecc..b0df34e858 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -307,7 +307,7 @@ static int clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 {
 	struct clk *clk = clk_hw_to_clk(hw);
 	struct clk_divider *divider = to_clk_divider(hw);
-	unsigned int value;
+	int value;
 	u32 val;
 
 	if (divider->flags & CLK_DIVIDER_READ_ONLY)
@@ -322,6 +322,8 @@ static int clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 
 	value = divider_get_val(rate, parent_rate, divider->table,
 				divider->width, divider->flags);
+	if (value < 0)
+		return value;
 
 	val = readl(divider->reg);
 	val &= ~(clk_div_mask(divider->width) << divider->shift);
-- 
2.47.1



