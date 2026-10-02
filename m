Delivery-date: Fri, 02 Oct 2026 13:37:14 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCbZi-008pCH-1v
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 13:37:14 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E2BAE202303
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 13:37:12 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=y581GjAW;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=IA9BUvLe;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790941033; a=rsa-sha256;
	cv=pass;
	b=D636zwDFJc4I8wH4fjsX9CytJotFNSHwTl3Biz4yJki1iV9Xwz2fXeL7KnFsHrO7pKbdcw
	+HBMjd+mbDe34jfg0pcGWjbZvlCAbqrcOOyGzXmqvc5EqwmMCSiYrVpVksC8nXpDAGLFhS
	1Uh+XcsKCz2LEXvm0TtnCAHNT5gB0NVRx+LExImDCBY86E6yCps2qn9u7LfJHWzsyfgkmL
	Wcs/bQz3pP/tRt9pAE1vVTbVg6g/KVYF/aNFYst2nl9ib51kNDG/qhC5O04n5GHgtAZKGo
	uT1I52qn+myo22ogq3rABjAq2nueBhv4hVpDTrEIgiAyCNuvHglHREqVNMfz2g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=y581GjAW;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=IA9BUvLe;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941033;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=PBbnQ2JdDzEcEHPphNnAT/eJ0VVxW9jJMytff0xxs0Q=;
	b=GugapR9VQzRzyi2QJD3wjhrez8yxWNcCDUa09onpxKdm4I53aIZLRJsmWEIVsJYcsWfCYl
	XuB91fKa0IEK/1SvEcdxRM1YpeXsAQ4kOzAWh+sd+5ruqRcFpos6fT/KzD7qowE6AJwQvu
	/9T9JljIRnseU1inbP26Mo28TO79FjDVJhRhkC722Z631Pn2c+MsYk0hZ3LGR5A+P2J1ig
	0UMdYVPhF6EKnMEV3ENc2KpXBkLQ2BysSCV8DTJEor1ZjlEvWSqV8NPAiKhub2Z1w7aa8n
	poaTpqaNPHbf0NOWMVb/A2H2Nug/ZaP8r7HBR819DSA/I1j+04MZnZ3DEaXRzA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PBbnQ2JdDzEcEHPphNnAT/eJ0VVxW9jJMytff0xxs0Q=; b=y581GjAWAO4kploMpnl3CRQDcF
	QQZlBpxfieIX+IewypClwlTH0EMmEgPM+8gwvYduqytaOJ/LcJNFc9hZGeWnuFrzUfks4VOC8Wahj
	zfT7+e61eiU+w8wyePzhgLJ6C/3d12Mwoyn5zWY0Bq6bEg6e6K9NTQNBB15HEoJlgaXYnS5qJfnBI
	UJbSbS86aTa9g2b7Q3M+p6Yylyjxa9LEVyAe7W4eheXgLUvBxTyx/BEbRQlPa+5RxyGCNPleR4MwL
	xbRtasH11ggiZfIejPTIC0m3kg9a1bYb5Cjo7g9hG/KpEzhnDNkM0miOsDPqfDadadUyXmZAkN0AR
	A8CsM/Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbYY-0000000BUPs-0niB;
	Fri, 02 Oct 2026 11:36:02 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbYS-0000000BUN3-47Oz
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 11:36:00 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1C69D20007B;
	Fri, 02 Oct 2026 13:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940955;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=PBbnQ2JdDzEcEHPphNnAT/eJ0VVxW9jJMytff0xxs0Q=;
	b=IA9BUvLekKULJAh2BMqO9XexK/dyM3Crg3kpjTMDDaUbatJ2m+H+3jHb6sM0q9cR0hqRs7
	FE7el2Rt9yOx6vVoI9TrFdO+UqVMrpaPl/QwQsv3JeoHB6WqG1Zg2rZWTcPzbeJgUpWWwm
	0eeQCvmkBJ2oTtph9LQg7eG2ck9AEo0oWCn3uyKjVzNCCVBObMi3AsGFLClObdvncWjKfm
	UEhDl4b3Qbhwgp10rfMcIc493NqHIuExSlICsez/zjE2kGQ6UgQ3Qz4ByRNkRZN8YpJyRq
	hZaV2iETjRjpqeDKRAGP/rRAlN6s73BU1sMWrtrxqn3FjcJlJfAqXPwSTibfPA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790940955; a=rsa-sha256;
	cv=none;
	b=OTEsJ4zAWwwvReOYhCAZ/TuWwirzBb2DXeQZhg0VVzDpRUiLOL2gJakhMuixGpDenNY0ad
	8iTuxuo1EMgwOO1MuhrKtzl6AGaBc4xblYhFk4wveK+TSGjkwqGohVziKJIZG6Y5Q4OlRj
	k8OQUCV8rvth4PVNoTVDUxnQHmUfdxXo21t0zmmm6iBB8lRbFsfSDFT23Z9ot2RTMi6NqZ
	R7z3mg+baff/NOz+9yqfRO5XzM6Z7DF292DHBrQJCeJ/XU8T1ULpmmWJeg3X9v2nCCTp4r
	yyRbivb8ZQFltSUcpR0Xh6VQVp5SQL8XffWZAjNXjVAZfmAHwI4BPYwarGqEsA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940955;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=PBbnQ2JdDzEcEHPphNnAT/eJ0VVxW9jJMytff0xxs0Q=;
	b=WRSwZmpWJQ6grZnhxV2fZwraSXz25BOnwkRuWnSaccrno1xn41KN1zFxPvPBZ5VC0qSeXy
	j4ETAowD2nWYK0v81oKnRDqGIjvgju2T3oue9ip3qcwyoT/2tdfdtlPesB/2swp4GSLisK
	Y7y3oal0ihw4ud/Oo2IMHysPpjF9D+XXsQJrbu+Vy5AD/wpIulqjerh2GHDVE2eFtXAZeT
	QZ1U48PbcYyDliKaL6wOOM+txOi2WlWLRgWzydfM9tOxhKJsRuNd+IgmXyEnFOBl2y4VqI
	w86kQq7JNLrv716IlOK2OU3311C32O6Y7Z21F2C+eNOKVESeyz8oDY+TIWKjNA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id F31F67401F0;
	Fri, 02 Oct 2026 13:35:54 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 1/5] clk: imx: pll14xx: enable PLL output in clk_pll1416x_early_set_rate()
Date: Fri,  2 Oct 2026 13:35:46 +0200
Message-ID: <20261002113554.2902941-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_043558_307625_360AA68D 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  While clk_pll1416x_early_set_rate() programs the dividers,
    waits for the lock and clears the bypass, it doesn't actually ungate the
   clock. Therefore, the i.MX8M early clock init sets the CLKE bit by hand afterwards,
    but it does so only for the ARM PLL. SYS_PLL3 is reconfigured without CLKE
    being touched, because it works out, because it' [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E2BAE202303
X-Stat-Signature: biiyirkx6xm4yh6wj75qtdyuubh4rmfw

While clk_pll1416x_early_set_rate() programs the dividers, waits for
the lock and clears the bypass, it doesn't actually ungate the clock.

Therefore, the i.MX8M early clock init sets the CLKE bit by hand
afterwards, but it does so only for the ARM PLL.
SYS_PLL3 is reconfigured without CLKE being touched, because it works
out, because it's set at reset and BootROM doesn't clear it.

U-Boot's intpll_configure() sets CLKE at the end instead. As we are
going to align the early init with U-Boot for easier comparison in
future, let's rename our function to clk_pll1416x_early_configure() and
have it also ungate the clock.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c     | 11 ++++-------
 drivers/clk/imx/clk-pll14xx.c | 14 +++++++++++---
 include/soc/imx8m/clk-early.h |  4 ++--
 3 files changed, 17 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 6286ab7344bc..3b2833a07ec2 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -116,8 +116,8 @@ static void __imx8m_early_clock_init(int cpu_type)
 		pll3_freq = 750000000UL;
 
 	/* Configure SYS_PLL3 */
-	clk_pll1416x_early_set_rate(ana + IMX8MM_CCM_ANALOG_SYS_PLL3_GEN_CTRL,
-				    pll3_freq, 25000000UL);
+	clk_pll1416x_early_configure(ana + IMX8MM_CCM_ANALOG_SYS_PLL3_GEN_CTRL,
+				     pll3_freq, 25000000UL);
 
 	if (cpu_type == IMX_CPU_IMX8MP) {
 		/* 8MP ROM already set NOC to 800Mhz, only need to configure NOC_IO clk to 600Mhz */
@@ -131,11 +131,8 @@ static void __imx8m_early_clock_init(int cpu_type)
 			IMX8M_CCM_TARGET_ROOTn_MUX(2));
 
 	/* Configure ARM PLL to 1.2GHz */
-	clk_pll1416x_early_set_rate(ana + IMX8MM_CCM_ANALOG_ARM_PLL_GEN_CTRL,
-				    1200000000UL, 25000000UL);
-
-	clrsetbits_le32(ana + IMX8MM_CCM_ANALOG_ARM_PLL_GEN_CTRL, 0,
-			INTPLL_CLKE_MASK);
+	clk_pll1416x_early_configure(ana + IMX8MM_CCM_ANALOG_ARM_PLL_GEN_CTRL,
+				     1200000000UL, 25000000UL);
 
 	clrsetbits_le32(ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_ARM_A53_CLK_ROOT),
 			IMX8M_CCM_TARGET_ROOTn_MUX(7),
diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 8a773f19f807..a0213c60516d 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -238,8 +238,8 @@ static int clk_pll1416x_set_rate(struct clk_hw *hw, unsigned long drate,
 	return 0;
 }
 
-int clk_pll1416x_early_set_rate(void __iomem *base, unsigned long drate,
-			  unsigned long prate)
+int clk_pll1416x_early_configure(void __iomem *base, unsigned long drate,
+				 unsigned long prate)
 {
 	struct clk_pll14xx pll = {
 		.hw.clk = {
@@ -249,8 +249,16 @@ int clk_pll1416x_early_set_rate(void __iomem *base, unsigned long drate,
 		.rate_table = imx_pll1416x_tbl,
 		.rate_count = ARRAY_SIZE(imx_pll1416x_tbl),
 	};
+	int ret;
 
-	return clk_pll1416x_set_rate(&pll.hw, drate, prate);
+	ret = clk_pll1416x_set_rate(&pll.hw, drate, prate);
+	if (ret)
+		return ret;
+
+	/* enable the PLL output */
+	setbits_le32(base + GNRL_CTL, CLKE_MASK);
+
+	return 0;
 }
 
 static int clk_pll1443x_set_rate(struct clk_hw *hw, unsigned long drate,
diff --git a/include/soc/imx8m/clk-early.h b/include/soc/imx8m/clk-early.h
index c2034e54f070..2430521d7a2e 100644
--- a/include/soc/imx8m/clk-early.h
+++ b/include/soc/imx8m/clk-early.h
@@ -3,7 +3,7 @@
 #ifndef __SOC_IMX8M_CLK_EARLY_H
 #define __SOC_IMX8M_CLK_EARLY_H
 
-int clk_pll1416x_early_set_rate(void __iomem *base, unsigned long drate,
-			  unsigned long prate);
+int clk_pll1416x_early_configure(void __iomem *base, unsigned long drate,
+				 unsigned long prate);
 
 #endif /* __SOC_IMX8M_CLK_EARLY_H */
-- 
2.47.3



