Delivery-date: Mon, 15 Dec 2025 08:59:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3Ug-00BfQG-23
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 08:59:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3Ug-0005qE-4c
	for lore@pengutronix.de; Mon, 15 Dec 2025 08:59:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=f3TVtog1xhgty7AycgxcRK2dLU0UM9OkhKj81PDdB/I=; b=e3B5jLHNoteA/X6xviPBs/T9X0
	DG01nzGRHzw51PxXR3hux/Oyyy0kFs6P5A0RyA98qEx6ugQJOegQGqCET0EykmuAzSieiy4TZ7f7o
	tc/BUYhYmoa0s67NZgrtLj6TpdJH0nz4zbBS0AR92wGKsJbX1ScCSbTC5ZTskJzQ43Cvh+ECvIEfN
	BrJEshi/vnQvws/U2O8o4jxWJBnVHpNtM3KsPFlZedN9mykkBVc7JdY/ety+NMaP+SgI6gB+dvzp6
	2QrwjUHZZ/K4ZzwmbjkSoWeLeiCz0EeWiLQ+GU8/XryqnHpBV9g2ZGEZHIJxvGF0QNtwr5Cv8bwgI
	Ah2VJlLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3UE-00000003EYw-3prz;
	Mon, 15 Dec 2025 07:59:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3U9-00000003EXH-2UWy
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 07:59:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3U6-0005a5-9F; Mon, 15 Dec 2025 08:59:10 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3U6-005kAX-0G;
	Mon, 15 Dec 2025 08:59:10 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3U5-0000000594H-47uo;
	Mon, 15 Dec 2025 08:59:10 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Dec 2025 08:58:57 +0100
Message-ID: <20251215075907.1222551-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251214_235913_652604_9777016D 
X-CRM114-Status: UNSURE (   9.02  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] net: 9p: fix variable name in BAREBOX_MAGICVAR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The variable is called global.9p.debug, not plan9debug.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 net/9p/mod.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/9p/mod.c b/net/9p/mod.c
index ef071a1b490d..d6b3ba583428 100644
--- a/net/9p/mod.c
+++ b/net/9p/mod.c
@@ -26,7 +26,7 @@
 
 #ifdef CONFIG_NET_9P_DEBUG
 unsigned int p9_debug_level;	/* feature-rific global debug level  */
-BAREBOX_MAGICVAR(plan9debug, "9P debugging level");
+BAREBOX_MAGICVAR(global.9p.debug, "9P debugging level");
 
 void _p9_debug(enum p9_debug_flags level, const char *func,
 	       const char *fmt, ...)
-- 
2.47.3



