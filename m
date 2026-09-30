Delivery-date: Wed, 30 Sep 2026 12:17:43 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBrNf-0081Ze-2F
	for lore@lore.pengutronix.de;
	Wed, 30 Sep 2026 12:17:43 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 214CB200231
	for <lore@pengutronix.de>; Wed, 30 Sep 2026 12:17:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2Sa+TBCk;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="Wdg/AsnR";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790763463; a=rsa-sha256;
	cv=fail;
	b=AlylHPcgELUPN/2mI5a5FU3r9m54YWjDS3o3pUi+8iMz3VrQ3jFO/u2j/qlXSkidFtgqoA
	C+qIel/YnWG72MqwRKgEUODe+wP/T7fC856g2mdXD/RCpMdHqw9SS85eIWiXORkXHIsjqw
	28Fl8/ASPRNgGmbaChjKFBnDmoUk8asPMT3oyj7NuFU43REESV3rf3EKD3y+3IYDB6FMVi
	4satOyxYnkDgIMugE1y1yyfKeUdFvbONmSStD/kpwF3VaHgayyh4DbyjBHyu3CLFBhxwdt
	suHdqscWp0p12Sa1vLHFU3a6HzjRvYb+454H35OeQCQtQAqaqtpvivvtrzCfwA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2Sa+TBCk;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="Wdg/AsnR";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790763463;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=YPPAk/pFpFL9qdqVW1Ztf8IumPZa3VQ3Zx3Bg2KHAsc=;
	b=brE39ayB6Yr/rpilE7Kxq7Lm3p5oY+5H5miSs3iko853d6vW9Hd9+KNO52MCKZfJGy7Q1N
	i3ILcW0wmO64A6q/uS5Ae0XuFvudkpcFzTSi+Q7yg/hV5Z+n5ziRS0TJuXlcaI9m/RU/j+
	TbLcB1C02v6BPYJ1w+B2acjeFig1q/6j85B+rYV0VWUuo+xDGjdguIvj+b6C2I1paqpF8L
	umCV/F+RMiApqXAWKcFVL87cYYmNQ8e2GQLm4D3Yg2/1kWqd9PPal2uwvG0D7j0iUSrnNB
	QAfTw1fUZW5dWyUVJhbwVREnEoIShUnnjpolw3DiDI8CfOtmfOWW8zvlKf1pdw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YPPAk/pFpFL9qdqVW1Ztf8IumPZa3VQ3Zx3Bg2KHAsc=; b=2Sa+TBCkXX4Qpr
	rBzqIv9BlQli1vGOtyVeQNCW6o3I4bfrkz+3PsAWWyODO8/CbGanvmqruBZaiA1bkYhLNx+BOGN2m
	Acl0EqL2dAP8KXSTFNiMjocXeQOFigvyI2xxO8FXJt0MNMUjMEoGk5oaoZYqOMnQiQBK8NjVkyCJQ
	n/o7PBLoHKl69xfKIqPBelWW5nz2pCgOLFedFbiSYFtTq7rJV0420ueKGWW5qMQpbDdducxxhIxEU
	WBf6TsEPYyIvI1r9FABVzYwaNLokbwiIJ+bjsWzR3QAaXGb2+kZX+7Tz8X06R3Jle1AO0E1AB6vEM
	BIbWTE2Dcc67Lwmj43QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBrMC-00000005i2X-2uAK;
	Wed, 30 Sep 2026 10:16:12 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBrM9-00000005i0O-4Aww
	for barebox@lists.infradead.org;
	Wed, 30 Sep 2026 10:16:11 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D6028200153;
	Wed, 30 Sep 2026 12:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790763367;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=YPPAk/pFpFL9qdqVW1Ztf8IumPZa3VQ3Zx3Bg2KHAsc=;
	b=Wdg/AsnRCVUhzTBOVZTnavNTe0pKlLOX7X7uVu33fmlTG958hJ4AE8y6d0G2BKsaBC8iy1
	0RCTjnQqRld48GNRvvGTt4aqfPH0wUU06oxoi7nu2bE3eNg/b4DQ4Hv9TPI+P4eXjBGf83
	PN++DMDgSZArggU24jHp0/4cEVbgFEHEJ8ly0KHC+6pjkDBwv3kTsuFlmekdWcD1sxgnM8
	/SXlmrkS1MwVapX2lf11olM9sYEg7wgrwVJPyNRiKDhPAdgUnq97fDWuvu/91t8bDnAal4
	bILkDDpaVeY4OUKRhypib7r1Zv4wRPdHeTXKDn0fA7b9jy8Z08CCyl43np0crQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790763367; a=rsa-sha256;
	cv=none;
	b=EfnzzXZUWD+12A4MQWiNcC1JD8YlilD4TpOyjo9gFJKF39n1FTHJv/WehXo88URy5/0K1s
	umUYrP57a3pmqI4NcGJ5FYIRH0nZIZ+tUJZCnl1Fp4x9XchWo6O6fL3i753ptjyOG9R7kg
	xi8WwCXK9HRQwZbLZcn3EG7qYZZQ2xFg7D+aZMXJM+LVziQLd/RXgpjYeQ+YldNvFFnc5C
	eAAfW83IjUyC1h2jYLaPab7pPdvCiCfB23lv0yL9m0lgxlQqasutYjv75KWYpFtS4iO+PY
	1YnQz+/AbLzsusghWMq9Y9WhDALaT0z6d21WbpKo0yWWKIjtrKijHmhbDfQSyA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790763367;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=YPPAk/pFpFL9qdqVW1Ztf8IumPZa3VQ3Zx3Bg2KHAsc=;
	b=euW8jpCSw8qlif4sRRqcNFRkQI+pg6HZGWlKlXhQwGIjsFqWKmO+h2rHA9ftPLkb9cSMfI
	5CvsYpvesFDbEbzUnbWCqI7ngZjZe7/u+VVOVwljD3d6+OwJgELRO3pBFWkvWGPXxy06fS
	3jDD4q+NEQ7HX+Y0GawMW6flM9vIjEAGv+x9SfGEJZJaIgk/YS07po2KmFuEbOsFtTvjaI
	tM4cGc6wSyt3ijyEqtyQhaYoA4DXW7aY3Xl21gwSKPpXvWoJgqLcDfSuPruTizQrb3eG0p
	21lacJQ+OBbYSFU6c8Ech/tRPExn0QiKDFht35AX9JpvR6hgDJ1NISrlAFxp3Q==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id BC96A740D6C;
	Wed, 30 Sep 2026 12:16:07 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Subject: [PATCH 1/4] clk: imx: pll14xx: use register defines consistently
Date: Wed, 30 Sep 2026 12:15:53 +0200
Message-ID: <20260930101606.2097864-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_031610_202855_0B1CE20F 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Sascha Hauer <s.hauer@pengutronix.de> clk: imx: pll14xx:
    Use register defines consistently The driver has defines for the registers,
    but they are mostly unused. Use the defines consistently throughout the driver.
    While at it rename DIV_CT [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-54.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_MIXED(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 214CB200231
X-Stat-Signature: 5tzbx4mqm4r11ceygwyum4ph4dfdq5p8

From: Sascha Hauer <s.hauer@pengutronix.de>

clk: imx: pll14xx: Use register defines consistently
The driver has defines for the registers, but they are mostly unused.
Use the defines consistently throughout the driver. While at it rename
DIV_CTL to DIV_CTL0 because that's the name in the reference manual.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
[ ahmad: ported from Linux 485b4ff57c27, s/(readl|writel)_relaxed/\1/ ]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk-pll14xx.c | 49 ++++++++++++++++++-----------------
 1 file changed, 25 insertions(+), 24 deletions(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 8a773f19f807..c1d5a6b88f41 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -19,7 +19,8 @@
 #include "clk.h"
 
 #define GNRL_CTL	0x0
-#define DIV_CTL		0x4
+#define DIV_CTL0	0x4
+#define DIV_CTL1	0x8
 #define LOCK_STATUS	BIT(31)
 #define LOCK_SEL_MASK	BIT(29)
 #define CLKE_MASK	BIT(11)
@@ -118,7 +119,7 @@ static unsigned long clk_pll1416x_recalc_rate(struct clk_hw *hw,
 	u32 mdiv, pdiv, sdiv, pll_div;
 	u64 fvco = parent_rate;
 
-	pll_div = readl(pll->base + 4);
+	pll_div = readl(pll->base + DIV_CTL0);
 	mdiv = (pll_div & MDIV_MASK) >> MDIV_SHIFT;
 	pdiv = (pll_div & PDIV_MASK) >> PDIV_SHIFT;
 	sdiv = (pll_div & SDIV_MASK) >> SDIV_SHIFT;
@@ -137,8 +138,8 @@ static unsigned long clk_pll1443x_recalc_rate(struct clk_hw *hw,
 	short int kdiv;
 	u64 fvco = parent_rate;
 
-	pll_div_ctl0 = readl(pll->base + 4);
-	pll_div_ctl1 = readl(pll->base + 8);
+	pll_div_ctl0 = readl(pll->base + DIV_CTL0);
+	pll_div_ctl1 = readl(pll->base + DIV_CTL1);
 	mdiv = (pll_div_ctl0 & MDIV_MASK) >> MDIV_SHIFT;
 	pdiv = (pll_div_ctl0 & PDIV_MASK) >> PDIV_SHIFT;
 	sdiv = (pll_div_ctl0 & SDIV_MASK) >> SDIV_SHIFT;
@@ -168,7 +169,7 @@ static int clk_pll14xx_wait_lock(struct clk_pll14xx *pll)
 {
 	u32 val;
 
-	return readl_poll_timeout(pll->base, val, val & LOCK_STATUS,
+	return readl_poll_timeout(pll->base + GNRL_CTL, val, val & LOCK_STATUS,
 			LOCK_TIMEOUT_US);
 }
 
@@ -187,32 +188,32 @@ static int clk_pll1416x_set_rate(struct clk_hw *hw, unsigned long drate,
 		return -EINVAL;
 	}
 
-	tmp = readl(pll->base + 4);
+	tmp = readl(pll->base + DIV_CTL0);
 
 	if (!clk_pll14xx_mp_change(rate, tmp)) {
 		tmp &= ~(SDIV_MASK) << SDIV_SHIFT;
 		tmp |= rate->sdiv << SDIV_SHIFT;
-		writel(tmp, pll->base + 4);
+		writel(tmp, pll->base + DIV_CTL0);
 
 		return 0;
 	}
 
 	/* Bypass clock and set lock to pll output lock */
-	tmp = readl(pll->base);
+	tmp = readl(pll->base + GNRL_CTL);
 	tmp |= LOCK_SEL_MASK;
-	writel(tmp, pll->base);
+	writel(tmp, pll->base + GNRL_CTL);
 
 	/* Enable RST */
 	tmp &= ~RST_MASK;
-	writel(tmp, pll->base);
+	writel(tmp, pll->base + GNRL_CTL);
 
 	/* Enable BYPASS */
 	tmp |= BYPASS_MASK;
-	writel(tmp, pll->base);
+	writel(tmp, pll->base + GNRL_CTL);
 
 	div_val = (rate->mdiv << MDIV_SHIFT) | (rate->pdiv << PDIV_SHIFT) |
 		(rate->sdiv << SDIV_SHIFT);
-	writel(div_val, pll->base + 0x4);
+	writel(div_val, pll->base + DIV_CTL0);
 
 	/*
 	 * According to SPEC, t3 - t2 need to be greater than
@@ -224,7 +225,7 @@ static int clk_pll1416x_set_rate(struct clk_hw *hw, unsigned long drate,
 
 	/* Disable RST */
 	tmp |= RST_MASK;
-	writel(tmp, pll->base);
+	writel(tmp, pll->base + GNRL_CTL);
 
 	/* Wait Lock */
 	ret = clk_pll14xx_wait_lock(pll);
@@ -233,7 +234,7 @@ static int clk_pll1416x_set_rate(struct clk_hw *hw, unsigned long drate,
 
 	/* Bypass */
 	tmp &= ~BYPASS_MASK;
-	writel(tmp, pll->base);
+	writel(tmp, pll->base + GNRL_CTL);
 
 	return 0;
 }
@@ -269,32 +270,32 @@ static int clk_pll1443x_set_rate(struct clk_hw *hw, unsigned long drate,
 		return -EINVAL;
 	}
 
-	tmp = readl(pll->base + 4);
+	tmp = readl(pll->base + DIV_CTL0);
 
 	if (!clk_pll14xx_mp_change(rate, tmp)) {
 		tmp &= ~(SDIV_MASK) << SDIV_SHIFT;
 		tmp |= rate->sdiv << SDIV_SHIFT;
-		writel(tmp, pll->base + 4);
+		writel(tmp, pll->base + DIV_CTL0);
 
 		tmp = rate->kdiv << KDIV_SHIFT;
-		writel(tmp, pll->base + 8);
+		writel(tmp, pll->base + DIV_CTL1);
 
 		return 0;
 	}
 
 	/* Enable RST */
-	tmp = readl(pll->base);
+	tmp = readl(pll->base + GNRL_CTL);
 	tmp &= ~RST_MASK;
-	writel(tmp, pll->base);
+	writel(tmp, pll->base + GNRL_CTL);
 
 	/* Enable BYPASS */
 	tmp |= BYPASS_MASK;
-	writel(tmp, pll->base);
+	writel(tmp, pll->base + GNRL_CTL);
 
 	div_val = (rate->mdiv << MDIV_SHIFT) | (rate->pdiv << PDIV_SHIFT) |
 		(rate->sdiv << SDIV_SHIFT);
-	writel(div_val, pll->base + 0x4);
-	writel(rate->kdiv << KDIV_SHIFT, pll->base + 0x8);
+	writel(div_val, pll->base + DIV_CTL0);
+	writel(rate->kdiv << KDIV_SHIFT, pll->base + DIV_CTL1);
 
 	/*
 	 * According to SPEC, t3 - t2 need to be greater than
@@ -306,7 +307,7 @@ static int clk_pll1443x_set_rate(struct clk_hw *hw, unsigned long drate,
 
 	/* Disable RST */
 	tmp |= RST_MASK;
-	writel(tmp, pll->base);
+	writel(tmp, pll->base + GNRL_CTL);
 
 	/* Wait Lock*/
 	ret = clk_pll14xx_wait_lock(pll);
@@ -315,7 +316,7 @@ static int clk_pll1443x_set_rate(struct clk_hw *hw, unsigned long drate,
 
 	/* Bypass */
 	tmp &= ~BYPASS_MASK;
-	writel(tmp, pll->base);
+	writel(tmp, pll->base + GNRL_CTL);
 
 	return 0;
 }
-- 
2.47.3



