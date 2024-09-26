Delivery-date: Thu, 26 Sep 2024 13:34:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmkx-002z4S-1N
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 13:34:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmkx-0000d3-LY
	for lore@pengutronix.de; Thu, 26 Sep 2024 13:34:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fAj/0YvCEt29rhvUY5SMieF61sNdLzANYzQ2YfYvDWc=; b=2XrhPHhPe9Dn4dIk4hyH8TGbRL
	bKK6wPKpL7DfgMnchrJiZ/+j6ZzQlIEfaa88AjQMXEJVrCoxGrBrIiRmdToaqTU0RcuAlJBu/REq+
	E90DIP5J1TfLZfBPeYxr0o0ZsvhEMocsITH0jsDXEPvXbGCv1ci8aruIQgQnJp2Dat+7Lm0MfYPRj
	dADuesYJlLzvIgytlTTmBrM9NtKteuDOY5BzBJ45zK8f94efaOtaK3Wf3xWIc3rbl9LMiAicg0Wc1
	sOyKcTWM/m5lqgGyqlv16fn4UKB9vVgExvSbe+8CfOTe4LXfEiD2fpLBNFirHL8Q+ez7H0vIewirM
	duaU8xvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stmkQ-00000008FOm-3HwG;
	Thu, 26 Sep 2024 11:33:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stmkN-00000008FOJ-2JoE
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 11:33:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmkM-0000EZ-69; Thu, 26 Sep 2024 13:33:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmkL-001fqS-Py; Thu, 26 Sep 2024 13:33:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmkM-00FrSV-0T;
	Thu, 26 Sep 2024 13:33:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 26 Sep 2024 13:33:20 +0200
Message-Id: <20240926113320.3780408-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_043323_640198_D8470AC7 
X-CRM114-Status: GOOD (  19.99  )
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
Subject: [PATCH] clk: imx: improve precision of AV PLL to 1 Hz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Adoption of Linux commit:

| commit c5a8045a553e32529ffb6bfb33fcad4d38aec2c7
| Author: Emil Lundmark <emil@limesaudio.com>
| Date:   Wed Oct 12 12:31:41 2016 +0200
|
|     clk: imx: improve precision of AV PLL to 1 Hz
|
|     The audio and video PLLs are designed to have a precision of 1 Hz if some
|     conditions are met. The current implementation only allows a precision that
|     depends on the rate of the parent clock. E.g., if the parent clock is 24
|     MHz, the precision will be 24 Hz; or more generally the precision will be
|
|         p / 10^6 Hz
|
|     where p is the parent clock rate. This comes down to how the register
|     values for the PLL's fractional loop divider are chosen.
|
|     The clock rate calculation for the PLL is
|
|         PLL output frequency = Fref * (DIV_SELECT + NUM / DENOM)
|
|     or with a shorter notation
|
|         r = p * (d + a / b)
|
|     In addition to all variables being integers, we also have the following
|     conditions:
|
|         27 <= d <= 54
|
|         -2^29 <= a <= 2^29-1
|          0    <  b <= 2^30-1
|         |a| < b
|
|     Here, d, a and b are register values for the fractional loop divider. We
|     want to chose d, a and b such that f(p, r) = p, i.e. f is our round_rate
|     function. Currently, d and b are chosen as
|
|         d = r / p
|         b = 10^6
|
|     hence we get the poor precision. And a is defined in terms of r, d, p and
|     b:
|
|         a = (r - d * p) * b / p
|
|     I propose that if p <= 2^30-1 (i.e., the max value for b), we chose b as
|
|         b = p
|
|     We can do this since
|
|         |a| < b
|
|         |(r - d * p) * b / p| < b
|
|         |r - d * p| < p
|
|     Which have two solutions, one of them is when p < 0, so we can skip that
|     one. The other is when p > 0 and
|
|         p * (d - 1) < r < p * (d + 1)
|
|     Substitute d = r / p:
|
|         (r - p) < r < (r + p)  <=>  p > 0
|
|     So, as long as p > 0, we can chose b = p. This is a good choise for b since
|
|         a = (r - d * p) * b / p
|           = (r - d * p) * p / p
|           = r - d * p
|
|         r = p * (d + a / b)
|           = p * d + p * a / b
|           = p * d + p * a / p
|           = p * d + a
|
|     and if d = r / p:
|
|         a = r - d * p
|           = r - r / p * p
|           = 0
|
|         r = p * d + a
|           = p * d + 0
|           = p * r / p
|           = r
|
|     I reckon this is the intention by the design of the clock rate formula.
|
|     Signed-off-by: Emil Lundmark <emil@limesaudio.com>
|     Reviewed-by: Fabio Estevam <fabio.estevam@nxp.com>
|     Acked-by: Shawn Guo <shawnguo@kernel.org>
|     Signed-off-by: Stephen Boyd <sboyd@codeaurora.org>

This patch helps getting the correct frequency out of the HDMI clock on
an i.MX6. Without it it happens that the PLL sets a frequency that is a
few HZ too high. A clk_set_rate() on the HDMI clock then increases the
divider value to the next value because the resulting frequency would
also be a few HZ too high otherwise.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-pllv3.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
index cb1d65058f..eb806e7f98 100644
--- a/drivers/clk/imx/clk-pllv3.c
+++ b/drivers/clk/imx/clk-pllv3.c
@@ -203,6 +203,7 @@ static long clk_pllv3_av_round_rate(struct clk_hw *hw, unsigned long rate,
 	unsigned long max_rate = parent_rate * 54;
 	u32 div;
 	u32 mfn, mfd = 1000000;
+	u32 max_mfd = 0x3FFFFFFF;
 	u64 temp64;
 
 	if (rate > max_rate)
@@ -210,6 +211,9 @@ static long clk_pllv3_av_round_rate(struct clk_hw *hw, unsigned long rate,
 	else if (rate < min_rate)
 		rate = min_rate;
 
+	if (parent_rate <= max_mfd)
+		mfd = parent_rate;
+
 	div = rate / parent_rate;
 	temp64 = (u64) (rate - div * parent_rate);
 	temp64 *= mfd;
@@ -228,11 +232,15 @@ static int clk_pllv3_av_set_rate(struct clk_hw *hw, unsigned long rate,
 	unsigned long max_rate = parent_rate * 54;
 	u32 val, div;
 	u32 mfn, mfd = 1000000;
+	u32 max_mfd = 0x3FFFFFFF;
 	u64 temp64;
 
 	if (rate < min_rate || rate > max_rate)
 		return -EINVAL;
 
+	if (parent_rate <= max_mfd)
+		mfd = parent_rate;
+
 	div = rate / parent_rate;
 	temp64 = (u64) (rate - div * parent_rate);
 	temp64 *= mfd;
-- 
2.39.5



