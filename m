Delivery-date: Thu, 20 Jun 2024 14:59:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKHNY-009GDK-0q
	for lore@lore.pengutronix.de;
	Thu, 20 Jun 2024 14:59:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKHNX-00089B-NU
	for lore@pengutronix.de; Thu, 20 Jun 2024 14:59:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Gf0FGy4Fq1whVpC1WVQaGc8kceVIKC+mOwN90vXBTN8=; b=UdcmBKnUZk3YmZwHlz0nsVdUFr
	iVG5WOT60o9ifUbbUF0uxscQiG9MaPKpO7oUQ0FLyNTZnXFXxiJMxylMd4+7EsANEZNTKVgVHWP8k
	qbVW2FcLu0bqQ6tv5mIDoFn8+X9Voe/LiHpho34FG9wFKdu0ZGvwlWdhC1MlmcZGKs84ChYiXjnaY
	fFn8/B2sbElHjAAc2NCb72R2EY7cr1y4R2nKZQ+29lQMvwr9mtrZS5MLs6k2Fz3poWuJne5tURry4
	BgpjdEDSmdbapTOGwF7zgpWz2LhiVGPVBurhPrcyq/V+qKeKL7XWWtMQHxFJThbRUW7yjOETkbsfF
	PB8lbeaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKHN5-000000052Xg-3Fno;
	Thu, 20 Jun 2024 12:58:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKHN1-000000052WW-3i9s
	for barebox@lists.infradead.org;
	Thu, 20 Jun 2024 12:58:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sKHN0-00085c-D1; Thu, 20 Jun 2024 14:58:30 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sKHN0-003hnW-0L; Thu, 20 Jun 2024 14:58:30 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sKHMz-002JCe-2u;
	Thu, 20 Jun 2024 14:58:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Jun 2024 14:58:29 +0200
Message-Id: <20240620125829.550300-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_055831_965413_702D5C16 
X-CRM114-Status: GOOD (  12.51  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] common: misc: do not run pollers inside panic()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When panic() is not configured to hang, it will wait 100 ms for messages
to go out before trying to poweroff or reset the machine.

The wait is implemented using udelay(), which runs pollers if the delay
duration exceeds 100 us. This is a bad idea as it needlessly exposes
barebox to hang indefinitely if the driver that's being polled had
something to do with why we ended up in the panic in the first place.

Switch to a non_interruptible variant to busy loop without invoking
pollers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/misc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/misc.c b/common/misc.c
index 530f85f6e321..7bc92c0f9518 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -296,7 +296,7 @@ static void __noreturn do_panic(bool stacktrace, const char *fmt, va_list ap)
 	if (IS_ENABLED(CONFIG_PANIC_HANG))
 		hang();
 
-	udelay(100000);	/* allow messages to go out */
+	mdelay_non_interruptible(100);	/* allow messages to go out */
 
 	if (IS_ENABLED(CONFIG_PANIC_POWEROFF))
 		poweroff_machine();
-- 
2.39.2



