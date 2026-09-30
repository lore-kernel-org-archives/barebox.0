Delivery-date: Wed, 30 Sep 2026 13:45:13 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBskL-0083Bn-0p
	for lore@lore.pengutronix.de;
	Wed, 30 Sep 2026 13:45:13 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A673B200566
	for <lore@pengutronix.de>; Wed, 30 Sep 2026 13:45:12 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=IA8KY1ce;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=f1TOMtE7;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790768713; a=rsa-sha256;
	cv=fail;
	b=AAYZfIQd/dmUBiSHMJcxOV3mu+Pc3S0QSIaRfrpZmoUJCGEQ6FovWeSWyMogfa+vsP1Cam
	+wrKNJyQcifj9LpNTtiZPPWJVeM24h9FtrpXEpCpmph5W+ydFvzMbYpPQBy3bCgXzbhOPh
	52Sp8pK4iSw0zziI0toEn7r8KB3cInwm5OBnKcqmvjDPeFcGZSNaEXdx9jKEYxVO7t96CH
	k3DMSB95Xnkg5vGFwD57T7UhZxwznMSE0AnsAFBLdkbYnzCL9w/SQ50+nbvm9R3djs4wuo
	JDnX3FeizSJXlF+uMG5a0HSGHqgtwGJnUa7CaPJ1MW28jnaBlVO71lBsotH9yQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=IA8KY1ce;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=f1TOMtE7;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790768713;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=NJvEePYwCT8amD6iqe0f4d3R6MnEg2dMAgUmpTs7Mxc=;
	b=fvEAiCjDQ35rg/Owe+VtAE6+YZ9CGsyvo5MGVg1ODeq6K9qARSszkgc/DWeZ6pWZLdAL+k
	MAf2b8HrJ+7NyfTZW16kMQ9eBDt1V6fbfniHDRo9dddrmYdsc/pi2sFOTeIR7MghD9uk6e
	27VF0QIjbo09JOYqX6oKOd7rNRbrfzNfOveBlUweP0k79h3AUmYFbZeU2LKaFjuQxxQ0tf
	UaOltxhxnGS0jwp/HKHU32LnB6qxmcyIFIGHxQTR+O30cznBmbiN/0MYpyAZB5C1INp5p9
	tgRh/wA/Ba3JLEl/CwNgZi4Sp3G9mvmMzu8jsRRrLojrMicTigVRZigjL44MMA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJvEePYwCT8amD6iqe0f4d3R6MnEg2dMAgUmpTs7Mxc=; b=IA8KY1ceBRHnc4
	+gN+fk1wk47iK048qgmaqQ/e/GRXZfrCBWyYOEFiAaqfQwSmTNUw37vRRBIEYmLazECa3YpNMcmkM
	8ZtFHXbeCDLU3iNYFGcXlbDmOxCNK+maML2KJ4YygQ/BvTyFgAZk8tcNO3BXIlc9GEBn9vMqyMmz7
	xurbiVO7EIKi3ksCe0JhebW0RbtfdpJA/8NFE+EB0Nb0AmT2do3YbqmC9gk+nPUEITDRi9O8IN4wg
	EE0np/6ntTnqI6Kj3Jc2LyorqmUGPNIVyd8TmYElkwX/PkxE5uvbWndVgCcqOk9f6BzlMjEcTlxwR
	6cRqa8cJPRZmKfmJw4TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBrMC-00000005i2i-3DHo;
	Wed, 30 Sep 2026 10:16:12 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBrM9-00000005i0P-3Jdk
	for barebox@lists.infradead.org;
	Wed, 30 Sep 2026 10:16:11 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E75F1201BC6;
	Wed, 30 Sep 2026 12:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790763367;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NJvEePYwCT8amD6iqe0f4d3R6MnEg2dMAgUmpTs7Mxc=;
	b=f1TOMtE7Tu+hc3fk6HwkQ2FH3uGzDRqXbrvArfOLjLYVdxW3OFPaMzqqTnnt4KxGk1sWka
	gr2B0ZYO3WNJQ+t7BHK66wKFHFXfgXiU4g4zmU7bJza7JHzxagmouR8SsHNz3zrDRjXrWb
	vAikrMB1IxXnGV1x3JtaBXORyY3TcuyulN4xMLCM0RhzIblHMhtA9y2KHC4+39y0kA6Rhx
	UUUYr49aNdI8m3bDXpuTTzcUWkY9hcSvXxijlSymEJIXyYLvP785QasP2tN1HcwWzojLpU
	kSNM+ZyiS7wq+YnykyxhftJned/JWRZ0hQFocbeVEF6gWgRKWZypS63pBgH0Iw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790763367; a=rsa-sha256;
	cv=none;
	b=gqkAOTwVCOPh3hdvitW7lBxKSTVt4in3LDlz/7l6zqcwdi1xtlQVaK0iojr1QUzkJCDowL
	6qGmqBFfK48T5JZ8ImjpYzWEMwT4ODtt1W0CulZNQeNjDXMJn0YcK8fpZAA1jPLA0bcUiG
	01Ye4SZpXBPC3RD+hViGwmqWa5cb4RHwp1jxvZ/dnUIyBPd8Noq6kFlBB36gA7LMuqQsTJ
	VWsdhxDiyS3a9M1oNUYExcJdhY54zfroIcnUIMN2necPrljZTLbMLkbyy+QK+Zk68OFmcb
	k8LuG4sNo845mqNuT83wiShh93YO8UyySeWDG8chqhPd+r5djJKBRyASvankpA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790763367;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NJvEePYwCT8amD6iqe0f4d3R6MnEg2dMAgUmpTs7Mxc=;
	b=DA7ZE++TPrAS70FDN7BjrRaJDsKjJtIgxLJzvzPW9XcEgZOnq5soTLWpPMXhmLSJPFb+CA
	nH88Zd8PO0iCyay6Hz+dno0cGDhG7Z+2iUXuM2Ph3IgYRO/s/0ti1SdWSLN+0vRywQ65bH
	1lP99ERRFPBkiTPZzD+vHVzi9nVyINjw6GX2Eam72pQKUcnHo3Np06wLQxOIkssqrmiCsM
	Lvndj9J+jMTlRHgGy9ecsgX2NB0AB4Ptdl1fNafDqepS8cL8of2ReuAjWYII9wOTua1n2Q
	8w8lMOOq9BUnXh0vaz4oVYYQg7eHAuoKwch8abgaqhcrSbSoTPolzU4bb8LO7Q==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id D364F7421F6;
	Wed, 30 Sep 2026 12:16:07 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Subject: [PATCH 3/4] clk: imx: pll14xx: Use FIELD_GET/FIELD_PREP
Date: Wed, 30 Sep 2026 12:15:55 +0200
Message-ID: <20260930101606.2097864-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260930101606.2097864-1-a.fatoum@pengutronix.de>
References: <20260930101606.2097864-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_031610_089004_7B929C5C 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Sascha Hauer <s.hauer@pengutronix.de> Linux has these
    marvelous FIELD_GET/FIELD_PREP macros for easy access to bitfields in registers.
    Use them and remove the now unused *_SHIFT defines. Signed-off-by: Sascha
    Hauer <s.hauer@pengutronix.de> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
    Link: https://lore.kernel.org/r/20220304125256.2125023-4-s.hauer@pengutronix.de
    Signed-off-by: Abel Vesa [...] 
 
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-55.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A673B200566
X-Stat-Signature: fag8wad78ribim88si7utn9u4nf39c18

From: Sascha Hauer <s.hauer@pengutronix.de>

Linux has these marvelous FIELD_GET/FIELD_PREP macros for easy access
to bitfields in registers. Use them and remove the now unused *_SHIFT
defines.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Link: https://lore.kernel.org/r/20220304125256.2125023-4-s.hauer@pengutronix.de
Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
[ahmad: ported from Linux commit 58f4980ccbecf63]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk-pll14xx.c | 40 +++++++++++++++++------------------
 1 file changed, 19 insertions(+), 21 deletions(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index a4aa9ce548cb..939320c0590f 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -15,6 +15,7 @@
 #include <clock.h>
 #include <soc/imx8m/clk-early.h>
 #include <linux/math64.h>
+#include <linux/bitfield.h>
 
 #include "clk.h"
 
@@ -26,13 +27,9 @@
 #define CLKE_MASK	BIT(11)
 #define RST_MASK	BIT(9)
 #define BYPASS_MASK	BIT(4)
-#define MDIV_SHIFT	12
 #define MDIV_MASK	GENMASK(21, 12)
-#define PDIV_SHIFT	4
 #define PDIV_MASK	GENMASK(9, 4)
-#define SDIV_SHIFT	0
 #define SDIV_MASK	GENMASK(2, 0)
-#define KDIV_SHIFT	0
 #define KDIV_MASK	GENMASK(15, 0)
 
 #define LOCK_TIMEOUT_US		10000
@@ -120,9 +117,9 @@ static unsigned long clk_pll1416x_recalc_rate(struct clk_hw *hw,
 	u64 fvco = parent_rate;
 
 	pll_div = readl(pll->base + DIV_CTL0);
-	mdiv = (pll_div & MDIV_MASK) >> MDIV_SHIFT;
-	pdiv = (pll_div & PDIV_MASK) >> PDIV_SHIFT;
-	sdiv = (pll_div & SDIV_MASK) >> SDIV_SHIFT;
+	mdiv = FIELD_GET(MDIV_MASK, pll_div);
+	pdiv = FIELD_GET(PDIV_MASK, pll_div);
+	sdiv = FIELD_GET(SDIV_MASK, pll_div);
 
 	fvco *= mdiv;
 	do_div(fvco, pdiv << sdiv);
@@ -140,10 +137,10 @@ static unsigned long clk_pll1443x_recalc_rate(struct clk_hw *hw,
 
 	pll_div_ctl0 = readl(pll->base + DIV_CTL0);
 	pll_div_ctl1 = readl(pll->base + DIV_CTL1);
-	mdiv = (pll_div_ctl0 & MDIV_MASK) >> MDIV_SHIFT;
-	pdiv = (pll_div_ctl0 & PDIV_MASK) >> PDIV_SHIFT;
-	sdiv = (pll_div_ctl0 & SDIV_MASK) >> SDIV_SHIFT;
-	kdiv = pll_div_ctl1 & KDIV_MASK;
+	mdiv = FIELD_GET(MDIV_MASK, pll_div_ctl0);
+	pdiv = FIELD_GET(PDIV_MASK, pll_div_ctl0);
+	sdiv = FIELD_GET(SDIV_MASK, pll_div_ctl0);
+	kdiv = FIELD_GET(KDIV_MASK, pll_div_ctl1);
 
 	/* fvco = (m * 65536 + k) * Fin / (p * 65536) */
 	fvco *= (mdiv * 65536 + kdiv);
@@ -159,8 +156,8 @@ static inline bool clk_pll14xx_mp_change(const struct imx_pll14xx_rate_table *ra
 {
 	u32 old_mdiv, old_pdiv;
 
-	old_mdiv = (pll_div & MDIV_MASK) >> MDIV_SHIFT;
-	old_pdiv = (pll_div & PDIV_MASK) >> PDIV_SHIFT;
+	old_mdiv = FIELD_GET(MDIV_MASK, pll_div);
+	old_pdiv = FIELD_GET(PDIV_MASK, pll_div);
 
 	return rate->mdiv != old_mdiv || rate->pdiv != old_pdiv;
 }
@@ -192,7 +189,7 @@ static int clk_pll1416x_set_rate(struct clk_hw *hw, unsigned long drate,
 
 	if (!clk_pll14xx_mp_change(rate, tmp)) {
 		tmp &= ~SDIV_MASK;
-		tmp |= rate->sdiv << SDIV_SHIFT;
+		tmp |= FIELD_PREP(SDIV_MASK, rate->sdiv);
 		writel(tmp, pll->base + DIV_CTL0);
 
 		return 0;
@@ -211,8 +208,8 @@ static int clk_pll1416x_set_rate(struct clk_hw *hw, unsigned long drate,
 	tmp |= BYPASS_MASK;
 	writel(tmp, pll->base + GNRL_CTL);
 
-	div_val = (rate->mdiv << MDIV_SHIFT) | (rate->pdiv << PDIV_SHIFT) |
-		(rate->sdiv << SDIV_SHIFT);
+	div_val = FIELD_PREP(MDIV_MASK, rate->mdiv) | FIELD_PREP(PDIV_MASK, rate->pdiv) |
+		FIELD_PREP(SDIV_MASK, rate->sdiv);
 	writel(div_val, pll->base + DIV_CTL0);
 
 	/*
@@ -274,10 +271,10 @@ static int clk_pll1443x_set_rate(struct clk_hw *hw, unsigned long drate,
 
 	if (!clk_pll14xx_mp_change(rate, tmp)) {
 		tmp &= ~SDIV_MASK;
-		tmp |= rate->sdiv << SDIV_SHIFT;
+		tmp |= FIELD_PREP(SDIV_MASK, rate->sdiv);
 		writel(tmp, pll->base + DIV_CTL0);
 
-		tmp = rate->kdiv << KDIV_SHIFT;
+		tmp = FIELD_PREP(KDIV_MASK, rate->kdiv);
 		writel(tmp, pll->base + DIV_CTL1);
 
 		return 0;
@@ -292,10 +289,11 @@ static int clk_pll1443x_set_rate(struct clk_hw *hw, unsigned long drate,
 	tmp |= BYPASS_MASK;
 	writel(tmp, pll->base + GNRL_CTL);
 
-	div_val = (rate->mdiv << MDIV_SHIFT) | (rate->pdiv << PDIV_SHIFT) |
-		(rate->sdiv << SDIV_SHIFT);
+	div_val = FIELD_PREP(MDIV_MASK, rate->mdiv) |
+		  FIELD_PREP(PDIV_MASK, rate->pdiv) |
+		  FIELD_PREP(SDIV_MASK, rate->sdiv);
 	writel(div_val, pll->base + DIV_CTL0);
-	writel(rate->kdiv << KDIV_SHIFT, pll->base + DIV_CTL1);
+	writel(FIELD_PREP(KDIV_MASK, rate->kdiv), pll->base + DIV_CTL1);
 
 	/*
 	 * According to SPEC, t3 - t2 need to be greater than
-- 
2.47.3



