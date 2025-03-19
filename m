Delivery-date: Wed, 19 Mar 2025 17:11:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuw12-001W92-1c
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 17:11:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuw11-00010N-53
	for lore@pengutronix.de; Wed, 19 Mar 2025 17:11:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=77qJ8e27y5qRbxVzWOYTVAyzArHzmSfOYrNUlKymBKk=; b=kM4gaZ6RsxeEDJmmX7X+7x0Vdu
	5zRrx96jaATiNCXygRO7X0M0dQPlNmgF2AQLYJBoSDqUY0vdEYTqpgTRqGnOf+PGgIO2yrY130Irz
	XpJYxuPjHhNvDh2jbRjsVPleXgLXIX+3U0RW0Ftd0KKy8YIIgtSQCQ0SdCAEc1kANHBCt4gzI5zdY
	hNKcm5RhLmsYv9on+1PNaiwnHOEZbf9pgo7MK3BwevBoRM8mXJAbzUoG8Q25rbmNveuVjCaY4lZD4
	qoXKgQJYOQpNWCfaLa8NLeeuI36LeRCk19uNL+6mtgapuzd0LQXUOJ8IMniFvksL5t7Y2dl5E6fxd
	1PApYS4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuw0U-00000009VJD-0idQ;
	Wed, 19 Mar 2025 16:11:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuw0R-00000009VHo-0Fs1
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 16:11:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuw0P-0000on-P1; Wed, 19 Mar 2025 17:10:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuw0P-000cZd-0W;
	Wed, 19 Mar 2025 17:10:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuw0P-008ki9-1b;
	Wed, 19 Mar 2025 17:10:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 19 Mar 2025 17:10:56 +0100
Message-Id: <20250319161056.2086121-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_091059_095124_EC97D551 
X-CRM114-Status: GOOD (  11.36  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! commands: ubsan: hide zero division in test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

GCC complains that we pass the address of the variable instead of the
    variable itself:

    commands/ubsan.c: In function ‘test_ubsan_divrem_overflow’:
    error: lvalue required in ‘asm’ statement

       63 |         __asm__ ("" : "=r" (var) : "0" (var))
          |         ^~~~~~~
    ./commands/ubsan.c:46:9: note: in expansion of macro ‘OPTIMIZER_HIDE_VAR’
       46 |         OPTIMIZER_HIDE_VAR(&val2);

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/ubsan.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/ubsan.c b/commands/ubsan.c
index 634ab2bc60b2..debd5e2ce7de 100644
--- a/commands/ubsan.c
+++ b/commands/ubsan.c
@@ -43,7 +43,7 @@ static void test_ubsan_divrem_overflow(void)
 	volatile int val = 16;
 	volatile int val2 = 0;
 
-	OPTIMIZER_HIDE_VAR(&val2);
+	OPTIMIZER_HIDE_VAR(val2);
 
 	val /= val2;
 }
-- 
2.39.5



