Delivery-date: Sun, 16 Aug 2026 19:57:55 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvf7K-003pcu-0z
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 19:57:55 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BDF2120128B
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 19:57:54 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WoUu3dkl;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=an0c5jPNCc8YBp5ZqWinsX8MI0eZu5o8s45QfRnKG88=; b=WoUu3dklt0OieJeno11j+3/AzK
	MHJEPoh+uSfSFZnb6GQPW2uoupt6Lke8ERawCOflqGRjE0+36tcyHSU//SYLqp9oTFYBruAh5i2TL
	dz/jx2zL3lAWIxpdhtpmeVYrlrVJ3Whun4c8/dCxtQSFouzmguI5i2YjpydxuC8OrlbELbu8bLM/8
	qyvjbTMmWPnnFr9fawjkBhOhCAWS011bEXSZ6C9LqgxZewYtEJrCedv41NGbiKbsla5IG+T+tOhKm
	lGpggpgeg9/jAh7g4N953jNCUR5gOla4jW+xeIk3IGkrivnxPKGLY4JzXN50l17FajUFhe3Y6JBKI
	Rk3L867g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf64-00000004weS-0IgW;
	Sun, 16 Aug 2026 17:56:36 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf5z-00000004wbs-2tdX
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 17:56:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 93F7E201D09;
	Sun, 16 Aug 2026 19:56:26 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-001oeS-1H;
	Sun, 16 Aug 2026 19:56:26 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-0zfq;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:25 +0200
Subject: [PATCH 05/27] pwm: pxa: get the clock from the clk API
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-5-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=3117;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=X6K2RBP3oCL7KmSEqSittvBBgt46cnAj0xuTUdkhCr8=;
 b=7EAa7ZytHog4JexTRKY+xBI/xwBhtmJh20lA1AsYmJ9T+K5DWdyaTDxD2nYWhlhSA59zuOfHx
 d87ZhAkkPmJAe8WPnixQ85HDwxpN7Dpu1RyoSXEbeYGFJR407fA/CIW
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_105631_914066_6C51D3E6 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The driver enabled and disabled its clock by poking CKEN and
    asked pxa_get_pwmclk() for the rate. Use the clk api to handle the clocks.
    A clk driver for PXA is not yet present in the tree, but PXA has no board
    support currently, so we can safely break bisectability here. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: qoysna6ujjtxqszud7mgy7w86qexogfm
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: BDF2120128B

The driver enabled and disabled its clock by poking CKEN and asked
pxa_get_pwmclk() for the rate. Use the clk api to handle the clocks.

A clk driver for PXA is not yet present in the tree, but PXA has
no board support currently, so we can safely break bisectability
here.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pwm/Kconfig   |  7 +++----
 drivers/pwm/pxa_pwm.c | 38 ++++++++++----------------------------
 2 files changed, 13 insertions(+), 32 deletions(-)

diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index 85cde63bf6..33e1da8aef 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -11,11 +11,10 @@ menuconfig PWM
 if PWM
 config PWM_PXA
 	bool "PXA PWM Support"
-	default y if ARCH_PXA2XX
-	depends on ARCH_PXA2XX
+	default y if ARCH_PXA
+	depends on ARCH_PXA
 	help
-	  This enables PWM support for Intel/Marvell PXA chips, such
-	  as the PXA25x, PXA27x.
+	  This enables PWM support for Intel/Marvell PXA chips.
 
 config PWM_ATMEL
 	bool "Atmel PWM Support"
diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
index 42ccb37b9a..a70661d164 100644
--- a/drivers/pwm/pxa_pwm.c
+++ b/drivers/pwm/pxa_pwm.c
@@ -14,11 +14,11 @@
 #include <pwm.h>
 
 #include <mach/pxa/hardware.h>
-#include <mach/pxa/clock.h>
 #include <mach/pxa/pxa-regs.h>
 #include <mach/pxa/regs-pwm.h>
 #include <linux/math64.h>
 #include <linux/compiler.h>
+#include <linux/clk.h>
 
 /* PWM registers and bits definitions */
 #define PWMCR		(0x00)
@@ -31,6 +31,7 @@
 struct pxa_pwm_chip {
 	struct pwm_chip chip;
 	void __iomem *iobase;
+	struct clk *clk;
 	int id;
 };
 
@@ -41,35 +42,12 @@ static struct pxa_pwm_chip *to_pxa_pwm_chip(struct pwm_chip *chip)
 
 static int pxa_pwm_enable(struct pxa_pwm_chip *pxa_pwm)
 {
-	switch (pxa_pwm->id) {
-	case 0:
-	case 2:
-		CKEN |= CKEN_PWM0;
-		break;
-	case 1:
-	case 3:
-		CKEN |= CKEN_PWM1;
-		break;
-	default:
-		return -EINVAL;
-	}
-	return 0;
+	return clk_enable(pxa_pwm->clk);
 }
 
 static void pxa_pwm_disable(struct pxa_pwm_chip *pxa_pwm)
 {
-	switch (pxa_pwm->id) {
-	case 0:
-	case 2:
-		CKEN &= ~CKEN_PWM0;
-		break;
-	case 1:
-	case 3:
-		CKEN &= ~CKEN_PWM1;
-		break;
-	default:
-		break;
-	}
+	clk_disable(pxa_pwm->clk);
 }
 
 /*
@@ -93,7 +71,7 @@ static int pxa_pwm_apply(struct pwm_chip *chip,
 		return 0;
 	}
 
-	c = pxa_get_pwmclk();
+	c = clk_get_rate(pxa_pwm->clk);
 	c = c * state->period;
 	do_div(c, 1000000000);
 	period_cycles = c;
@@ -142,6 +120,11 @@ static int pxa_pwm_probe(struct device *dev)
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 	chip->iobase = IOMEM(iores->start);
+
+	chip->clk = clk_get(dev, NULL);
+	if (IS_ERR(chip->clk))
+		return PTR_ERR(chip->clk);
+
 	chip->id = dev->id;
 	chip->chip.dev = dev;
 	dev->priv = chip;
@@ -156,7 +139,6 @@ static struct driver pxa_pwm_driver = {
 
 static int __init pxa_pwm_init_driver(void)
 {
-	CKEN &= ~CKEN_PWM0 & ~CKEN_PWM1;
 	platform_driver_register(&pxa_pwm_driver);
 	return 0;
 }

-- 
2.47.3



