Delivery-date: Mon, 31 Aug 2026 21:37:07 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x17oY-009NzH-0k
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 21:37:07 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B176E2032FA
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 21:37:02 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0S82ArGu;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mdAvZFyRXtQ/VhPOFhRgLFEqolv7yZo6ElFcQPlPXfQ=; b=0S82ArGu1SMGUKhU1yUfcDbVW9
	SQTSivT010xyToRkgsOumlHHClMUADtGd4weoIu/rWZZXfzqZZEQpq3sUnPd+S2Dou+OqDCOK6geN
	CRb5dHCftwh80PymuxZLsOmqIMniKYrnQ5NXDQZm6LB89qpAZBWUemNQc+6vocjPsbp3gEwFzpIvf
	/BVntquCgC3TFn1hHZfI0C6KMYI389WHYLHbDxyTHkRbiwxOGglacDvoD4AkTGjRa3OyJ7a/SJxeR
	2mecu5uGoLLO7CJbaCF5PPiLfvUIXAe7Pn6VmeRPC6s1HtGgbwDhFcJxPudBaPMjv0O5Vmqlu73kT
	RUird/jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17nm-0000000ANmg-2ENN;
	Mon, 31 Aug 2026 19:36:18 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17nj-0000000ANke-0U6l
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 19:36:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 417B0202EA1;
	Mon, 31 Aug 2026 21:36:09 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x17nd-004J3W-0S;
	Mon, 31 Aug 2026 21:36:09 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x17nd-00000006Bjz-08Sv;
	Mon, 31 Aug 2026 21:36:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 2/8] clk: at91: sam9x60-pll: allow building under COMPILE_TEST and fix the build
Date: Mon, 31 Aug 2026 21:35:49 +0200
Message-ID: <20260831193605.1474749-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260831193605.1474749-1-a.fatoum@pengutronix.de>
References: <20260831193605.1474749-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_123615_308009_6C38512B 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> HAVE_AT91_SAM9X60_PLL
    is only selected by SOC_SAM9X60 and SOC_SAMA7G5, which no board selects,
   so the driver has never been compiled and doesn't build: clk-sam9x60-pll.c:78:17:
    error: implicit declaration of function 'DIV_ROUND_CLOSEST_ULL' clk-sam9x60-pll.c:201:16:
    error: implicit declaration of function 'mult_frac' clk-sam9x60-pll.c:442:28:
    error: [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Server: mx1
X-Stat-Signature: pxw9wqxzay66nmt1kejb891gw6e178r6
X-Rspamd-Queue-Id: B176E2032FA
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

From: Ahmad Fatoum <a.fatoum@barebox.org>

HAVE_AT91_SAM9X60_PLL is only selected by SOC_SAM9X60 and SOC_SAMA7G5,
which no board selects, so the driver has never been compiled and
doesn't build:

  clk-sam9x60-pll.c:78:17: error: implicit declaration of function 'DIV_ROUND_CLOSEST_ULL'
  clk-sam9x60-pll.c:201:16: error: implicit declaration of function 'mult_frac'
  clk-sam9x60-pll.c:442:28: error: implicit declaration of function 'abs'
  clk-sam9x60-pll.c:483:20: error: implicit declaration of function 'DIV_ROUND_CLOSEST'

Include the missing headers and give the symbol a COMPILE_TEST prompt.

Fixes: 18afc26f9caa ("clk: at91: port Linux v5.6 SAM9X60 (new ARM926EJ-S) clock support")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/mach-at91/Kconfig         | 2 +-
 drivers/clk/at91/clk-sam9x60-pll.c | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index db79ad2d267a..df20943254a9 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -44,7 +44,7 @@ config HAVE_AT91_I2S_MUX_CLK
 	bool
 
 config HAVE_AT91_SAM9X60_PLL
-	bool
+	bool "SAM9X60 PLL support" if COMPILE_TEST
 
 config HAVE_AT91_SDRAMC
 	bool
diff --git a/drivers/clk/at91/clk-sam9x60-pll.c b/drivers/clk/at91/clk-sam9x60-pll.c
index c4f16061288f..4a1843e06c00 100644
--- a/drivers/clk/at91/clk-sam9x60-pll.c
+++ b/drivers/clk/at91/clk-sam9x60-pll.c
@@ -9,6 +9,8 @@
 #include <linux/clk-provider.h>
 #include <linux/clkdev.h>
 #include <linux/clk/at91_pmc.h>
+#include <linux/math.h>
+#include <linux/math64.h>
 #include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
-- 
2.47.3



