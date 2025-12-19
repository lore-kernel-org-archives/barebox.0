Delivery-date: Fri, 19 Dec 2025 11:37:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXru-00DAYJ-02
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:37:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXrj-0005fW-0a
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:37:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QWMRIufUGwDLGTU/hOYXQ1BUurGYtzeIPi/62e/tsHU=; b=pB5lrx9LhmSNEqt+1HJ6/YpMeh
	31n1EgESplVM02jFR0sfU9Ihc7hF9nOvkgMHu8VUa9AobN70fMZCJPWL6m068tWXvIPzrIQoH7i93
	9MUMmyE/3ut6IReOC1MZ/ERvQwM7W3oTKs4r62F4Vm4vPVXUrEhrzYElI049TgpbcUaorA4HbpyqO
	z5iWjoXXKaW+Rvp8iWpifHwAliiTU0qcoAw/sYo51WaU+oM28PVx+d072a2JGhbCo7/h1F7DYW41N
	TYngoO8KIHj68MB++2HwGVNbF/1VJP5insCP+Q/Vl4SuU8huTclJX6QPqhxBJE/8N1eQkpOlrM9Vd
	sqTDVIdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqz-0000000A66j-2xRf;
	Fri, 19 Dec 2025 10:36:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqs-0000000A5uo-0Tkq
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:36:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-0004bE-Ky; Fri, 19 Dec 2025 11:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-006RUc-1S;
	Fri, 19 Dec 2025 11:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVi-0000000320L-2cKq;
	Fri, 19 Dec 2025 11:14:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:21:22 +0100
Message-ID: <20251219101453.2806980-47-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_023650_146835_70CC5065 
X-CRM114-Status: UNSURE (   9.86  )
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
Subject: [PATCH v2025.09.y 46/49] net: 9p: fix variable name in BAREBOX_MAGICVAR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The variable is called global.9p.debug, not plan9debug.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251215075907.1222551-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 370f8098d2ab573c7800ab0be9631ed6a9ad61c5)
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



