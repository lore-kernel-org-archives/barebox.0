Delivery-date: Mon, 17 Aug 2026 16:06:26 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvxyr-0049Qn-2x
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 16:06:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 89AAE2021FF
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 16:06:26 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wCLnbjom;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ERpaOAom9RffXXNqQNhyXEeQ7+cyyXCPxVmcdIKtgZ4=; b=wCLnbjom8ZgWFqdIsCHCxKr1ze
	NA2nL/OIgSYkiqoHb0URKFpJAYLf85Dy6XqOhJtw+mmCRmmEBPOI1c9vz+tY5bm3s6Dfvs7t2evIv
	8Em0NBzFIXBzm7ldPlKjOn0f6EHcgWccnRehZEPd15K6CsagHWSc3imUTS9awr5IazqJz63yuJTiZ
	W4zl7L/DGqmTXS6B4a1bu44/nNJVvKLzhQVJi+yd1ypdUAmgR7RYdwlWGCoZDB9wtHt8OWqsOuLfT
	XjIJSSEM30Ust9cdo8Pi7mVSWXRGuegr8tBEw+nkWSus7Cs7eXg6xbsBuxIiFAkIZWN3rgpzu6Loh
	diqtZVmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvxu2-00000006G38-07m5;
	Mon, 17 Aug 2026 14:01:26 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvxty-00000006G1A-1wHs
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 14:01:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E99AA202202;
	Mon, 17 Aug 2026 16:01:18 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wvxtu-001xrw-2O;
	Mon, 17 Aug 2026 16:01:18 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wvxtu-0000000F1aR-2ZGi;
	Mon, 17 Aug 2026 16:01:18 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 17 Aug 2026 16:01:17 +0200
Subject: [PATCH v3 6/8] ARM: socfpga: agilex5: re-init pbl clocksource
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260817-feature-pbl-get-time-ns-v3-6-9874c1438855@pengutronix.de>
References: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
In-Reply-To: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_070122_661640_E03BFCE6 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  After changing the cntfrq register the global PBL clocksource
    must be re-initialized. The inline assembly was dropped in favor of the set_cntfrq
    function, the subsequent read is a no-op and dropped wi [...] 
 
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: bi7bd57tthiuxxic11yq1br8x4zxfu5g
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 89AAE2021FF

After changing the cntfrq register the global PBL clocksource must be
re-initialized. The inline assembly was dropped in favor of the
set_cntfrq function, the subsequent read is a no-op and dropped without
a replacement.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/mach-socfpga/agilex5-clock-manager.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-socfpga/agilex5-clock-manager.c b/arch/arm/mach-socfpga/agilex5-clock-manager.c
index 4ce7a2d4a2..0b0425efc1 100644
--- a/arch/arm/mach-socfpga/agilex5-clock-manager.c
+++ b/arch/arm/mach-socfpga/agilex5-clock-manager.c
@@ -5,6 +5,7 @@
 
 #include <common.h>
 #include <io.h>
+#include <asm/hardware/arm_architected_timer.h>
 #include <asm/system.h>
 #include <dt-bindings/clock/intel,agilex5-clkmgr.h>
 #include <linux/bitops.h>
@@ -252,8 +253,6 @@ static void clk_basic_init(struct socfpga_clk_plat *plat,
 {
 	u32 vcocalib;
 	u32 cntfrq = COUNTER_FREQUENCY_REAL;
-	u32 counter_freq = 0;
-
 
 	if (!cfg)
 		return;
@@ -361,8 +360,8 @@ static void clk_basic_init(struct socfpga_clk_plat *plat,
 
 	/* Update with accurate clock frequency */
 	if (current_el() == 3) {
-		asm volatile("msr cntfrq_el0, %0" : : "r" (cntfrq) : "memory");
-		asm volatile("mrs %0, cntfrq_el0" : "=r" (counter_freq));
+		set_cntfrq(cntfrq);
+		arm_arch_timer_init(cntfrq);
 	}
 
 	/* Out of boot mode */

-- 
2.47.3



