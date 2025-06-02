Delivery-date: Mon, 02 Jun 2025 11:58:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM1wB-002ut9-1H
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 11:58:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM1w9-0004Jc-T2
	for lore@pengutronix.de; Mon, 02 Jun 2025 11:58:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=q/v5RFOyUTzOVXWzDmZ44blhm9mRM8mDp0BTCTwp0XM=; b=3/xc7Zj28ReNQpKI4dTU0EsMdl
	HRrNo0dlIm+pr+9ZswoiTtNdrfDVU7ZYNEtIQdNZTu5umRqHrZ7iCy07udYparpUG4MXn2hY3eirE
	w3Bv/DJu8ubpllN7P1SJGYzsZYaA6sgT9Whj5IuE8/1OyOz039R3wThip+jUSItbd6w2v69P6bUvz
	9g3y7w1LsIvrU6/nCb7BqNcxwtZSGDbOvBIqxKz3Bf4Qi0TVvRVN15hEDJAgRBGJC6FnzQFGXjOez
	ksGfBRyCzTZ4HogOqaBUy6MOZ7QMOxVdhD3V1uPdgpOU1Ed/HVLYfxOFSwIOJ1YHQ/pwvoz2KUB0H
	I2N4jrCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1vh-0000000787h-3syf;
	Mon, 02 Jun 2025 09:58:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1vJ-0000000784r-1Rb0
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 09:57:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uM1vH-0003r3-Q2; Mon, 02 Jun 2025 11:57:39 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Jun 2025 11:57:34 +0200
Message-Id: <20250602095738.822334-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_025741_382998_7E2B7845 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/5] common: deep-probe: inform only about lack of deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of printing an info message when deep-probe is enabled, print a
message when it is disabled.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - Collected Marco's R-b
---
 common/deep-probe.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/common/deep-probe.c b/common/deep-probe.c
index 69beaf2d8066..ab1da87b626b 100644
--- a/common/deep-probe.c
+++ b/common/deep-probe.c
@@ -2,6 +2,10 @@
 
 #define pr_fmt(fmt) "deep-probe: " fmt
 
+#if defined(CONFIG_DEBUG_INITCALLS) || defined(CONFIG_DEBUG_PROBES)
+#define DEBUG
+#endif
+
 #include <common.h>
 #include <deep-probe.h>
 #include <of.h>
@@ -29,13 +33,14 @@ bool deep_probe_is_supported(void)
 		for (; matches->compatible; matches++) {
 			if (of_machine_is_compatible(matches->compatible)) {
 				boardstate = DEEP_PROBE_SUPPORTED;
-				pr_info("supported due to %s\n", matches->compatible);
+				pr_debug("supported due to %s\n", matches->compatible);
 				return true;
 			}
 		}
 	}
 
 	boardstate = DEEP_PROBE_NOT_SUPPORTED;
+	pr_info("not activated\n");
 	return false;
 }
 EXPORT_SYMBOL_GPL(deep_probe_is_supported);
-- 
2.39.5



