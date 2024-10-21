Delivery-date: Mon, 21 Oct 2024 16:00:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2sxZ-0075T7-1t
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 16:00:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2sxY-00012U-Rl
	for lore@pengutronix.de; Mon, 21 Oct 2024 16:00:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=odQX1YPqQ/87jTBQoKWHNOh5X6c0clajpOnWyVaBWNA=; b=lsU4tfLqsUW4FLIeZvfff2sum0
	4V61w5C2+n7m8Hy7ybTavgLGOMjV+8YPC74I5l0hrsR39dE5aVJa4oYGGb1/iV1pC/C+CUQ6w39ME
	Vsks7OhbQd8igqyUJyEzjzZkQbfoSuT42mf8pzDg//01MZWTRYcqZliPPXA2ZD9BlRoSQEayU4X6s
	KD16+cWNLoaXfF1tn8VlggjoU3PHFnGHjrdJdT845dOsFDKo6EvNG7AVcoB4vML/TXxL8DLZY24/D
	45CrV4jvs6GABVJtQPcLP4/KfuiqxufNaZWb8o3JUg7uhZvn+dousXG66fLKvNaqHV5DVfcrG+Gri
	e3Cn+DXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2swt-00000007Wbw-3SYe;
	Mon, 21 Oct 2024 13:59:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2scg-00000007RpG-3l8a
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 13:39:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t2scd-00079Y-Jy; Mon, 21 Oct 2024 15:38:59 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t2scd-000hry-1P;
	Mon, 21 Oct 2024 15:38:59 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t2scd-0017Vu-18;
	Mon, 21 Oct 2024 15:38:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 21 Oct 2024 15:38:55 +0200
Message-Id: <20241021133855.266927-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_063902_960643_E5631F8C 
X-CRM114-Status: UNSURE (   9.85  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] console_countdown: use CTL_CH macro for control characters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This introduces no functional change, but makes code more readable as
it's directly evident that the 3 here means ctrl+c.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/console_countdown.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/console_countdown.c b/common/console_countdown.c
index e41641aca23e..832505c1d755 100644
--- a/common/console_countdown.c
+++ b/common/console_countdown.c
@@ -10,6 +10,7 @@
 #include <errno.h>
 #include <console_countdown.h>
 #include <stdio.h>
+#include <readkey.h>
 
 static bool console_countdown_timeout_abort;
 
@@ -57,7 +58,7 @@ int console_countdown(int timeout_s, unsigned flags, const char *keys,
 					goto out;
 				if (flags & CONSOLE_COUNTDOWN_RETURN && (key == '\n' || key == '\r'))
 					goto out;
-				if (flags & CONSOLE_COUNTDOWN_CTRLC && key == 3)
+				if (flags & CONSOLE_COUNTDOWN_CTRLC && key == CTL_CH('c'))
 					goto out;
 			}
 			key = 0;
-- 
2.39.5



