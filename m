Delivery-date: Wed, 12 Feb 2025 11:57:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiAQO-001OWB-2T
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 11:57:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiAQN-0000Dy-Gf
	for lore@pengutronix.de; Wed, 12 Feb 2025 11:57:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G/fvyE/9v95mX8for+J1rI7BPApjoFetAjd0voG7Piw=; b=JyGPO2GP5JJ2GTdOPvlynWi5Dw
	ZyTe1Nuc+L7tjYYU7Pi6GW7Oahz7vHKHOfg8y2UOCkI/gX3NjxrnfX7SP+3rHntYTibo208I65yzA
	yOSvMNQW9ZC6+fRtiUlBZeQEJ3hVNhuh1oznA0U8HcDVT9Y0LCkInCnKjJpjJ3jXQG+fNffdBG6hT
	wmHBX2OdjoR2sVFRpRefpEttx0caLOXPgsLOqV/CcrC0zrsgOLBizymqI6khyAnogpwGU1xcLySHp
	NTg1rf/y7B/lWRClYxJO72ThZ8DcBHBWvY0XGgTds7vZtgG1yryEBuS2Gya9tJEWgmRiCGd+M8l3T
	IjdJyuag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiAPf-000000074Lk-0ujG;
	Wed, 12 Feb 2025 10:56:15 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiAJB-0000000734j-0Cjt
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 10:49:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1739357364;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G/fvyE/9v95mX8for+J1rI7BPApjoFetAjd0voG7Piw=;
	b=oI4F7/RouExTwSD0BaWsfEvM86o4Gf6ZZMRX0RzCqrK4hTJ7ppO4XXEpYf+9X1+cYj3t1q
	wJEsGMfnMWckewa+ZCWOS7nXE98wsvZsnU3Wdb68/jdfrmIX6i/mKMedjsmRK1VT41Zx1g
	Ivbds7D3NO5YaspbZ9QhAD8HrGxGoQSZhlxsWlW07jd20t9qM6kWPUSkfkW/xSDMdooDT+
	54DVtf89OasG0aw41d6bAM+6kJRwmXOwjRnK3Jee3HDTcZicK7vYCMIvXDreiuhycDAmSE
	lAAMae4/LZnJbwKQ+m3mhDF7e9Bvu8o9rM+XWESVXA3uS2XhS2PsHFXw+bdv9A==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:6f02:8f71:b5f4:2800])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 51b950df (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Wed, 12 Feb 2025 11:49:24 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 12 Feb 2025 11:48:37 +0100
Message-ID: <20250212104842.504-2-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250212104842.504-1-jmaselbas@zdiv.net>
References: <20250212104842.504-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_024933_555550_62B4DA27 
X-CRM114-Status: GOOD (  10.85  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 1/6] clk: divider: add error code propagation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

divider_get_val can return a negative error code and should not be used
as a valid divider.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1->v2:
  - changed value to int and removed ret variable (Ahmad)
v2->v3: no change

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
2.48.1



