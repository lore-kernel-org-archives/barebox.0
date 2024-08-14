Delivery-date: Wed, 14 Aug 2024 10:33:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1se9S3-009TZc-0v
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 10:33:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1se9S2-0002Pv-Ng
	for lore@pengutronix.de; Wed, 14 Aug 2024 10:33:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZIsqcHM7n7WIr/d3jd/HxvOYmeH/iPrJwl9TczMwt/g=; b=fFPSUUon9Tp/EHoRaGYjB1MEel
	LlLSum6SVw6tXZOjIwXXvHwz0hx6GL6DqCP1inEYm9ZOu4c0tcgKk8j0QUT+MFvdH4hqNFcXIb960
	JyTABwsOMq9x2MgbgWlcRgM8S48KGICWr7x6kpA+YESxB5tOpKe7CwUUzc33PnFjOUFw9AFrEnkWX
	2FdxW6KqCxuPHCw+qBg+6ZQdYUa9errAQfpQ++W1JrNB1t0P43OLV0XQe8YWpbS62VGpfvDhXB+cj
	R/MXmnHEIfCuPYm0DAs4VJAwLmolSRhyA5L+F3eFKN6jXLuxh6i6m5LXFm6LKrmOMbxXmEwcGdeE8
	6zZP4d5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se9RY-00000006Fbx-42rn;
	Wed, 14 Aug 2024 08:33:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se9RV-00000006Fb8-2TyB
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 08:33:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se9RU-0002Lm-9A; Wed, 14 Aug 2024 10:33:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se9RR-000JmA-BS; Wed, 14 Aug 2024 10:33:13 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se9RR-005PJi-0o;
	Wed, 14 Aug 2024 10:33:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 14 Aug 2024 10:33:12 +0200
Message-Id: <20240814083312.1288951-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_013317_650530_8D2EA4D3 
X-CRM114-Status: GOOD (  10.49  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] clk: imx: clk-pllv2: Fix unitialized variable warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

__clk_pllv2_set_rate() might return with an error in which case some
of the variables are used uninitialized. Check for an error like the
Kernel does.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-pllv2.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-pllv2.c b/drivers/clk/imx/clk-pllv2.c
index d997e465d5..bb99555e22 100644
--- a/drivers/clk/imx/clk-pllv2.c
+++ b/drivers/clk/imx/clk-pllv2.c
@@ -185,8 +185,12 @@ static long clk_pllv2_round_rate(struct clk_hw *hw, unsigned long rate,
 		unsigned long *prate)
 {
 	u32 dp_op, dp_mfd, dp_mfn;
+	int ret;
+
+	ret = __clk_pllv2_set_rate(rate, *prate, &dp_op, &dp_mfd, &dp_mfn);
+	if (ret)
+		return ret;
 
-	__clk_pllv2_set_rate(rate, *prate, &dp_op, &dp_mfd, &dp_mfn);
 	return __clk_pllv2_recalc_rate(*prate, MXC_PLL_DP_CTL_DPDCK0_2_EN,
 			dp_op, dp_mfd, dp_mfn);
 }
-- 
2.39.2



