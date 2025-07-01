Delivery-date: Tue, 01 Jul 2025 16:54:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWcNO-00CzUc-0X
	for lore@lore.pengutronix.de;
	Tue, 01 Jul 2025 16:54:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWcNN-0008Q9-LI
	for lore@pengutronix.de; Tue, 01 Jul 2025 16:54:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WtLTEBJ9Qza+SiOb+CLL+kABajjzttSm/tIv8SyfLXc=; b=fdlG9LasPm40R8LlbK69F34Vg1
	LVJHMMxMWF2r+VUZxfQCfj5rjIFf8Rcd2iOCjUkfeMtMIeTxl+cbD6rLU6/0mRnYNU3YSMknne2sf
	eHzPpB8wRdT1ulnVOg06/hWARu9VwErLF7Uog1bi7oP0/yb1BiYZSz4DrjB5j3SoaTP1NJ/15OPCC
	L510P5VXHs1oEp0XEOTrMOvbMNuJOcOXZ5sJS+T24zGUszsi4yvUHyLwjZy9Tj27WTEw0TwvRqt1o
	31+ZLvQ2CSAf7PKftGk0HFXYhXBBUcbdvu0IUzf0IfFpdwHsqvFh6UlL0WIPIJpowXotcz9/fxlOX
	4wzswQJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWcMs-00000005mbY-2U1a;
	Tue, 01 Jul 2025 14:53:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWas9-00000005ThT-265R
	for barebox@lists.infradead.org;
	Tue, 01 Jul 2025 13:18:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWas7-00088N-EY; Tue, 01 Jul 2025 15:18:03 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWas7-006HBt-0p;
	Tue, 01 Jul 2025 15:18:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWas6-001x2u-26;
	Tue, 01 Jul 2025 15:18:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Jul 2025 15:18:01 +0200
Message-Id: <20250701131802.465283-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_061805_577569_8538138C 
X-CRM114-Status: UNSURE (   9.88  )
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
Subject: [PATCH 1/2] clock: make SECOND/MSECOND/USECOND constants a constant expression
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This makes the constants potentially usable in more places than before.

While at it, move the definitions to the start of the header to make them
usable within.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/clock.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/include/clock.h b/include/clock.h
index e28870b1e84b..db20877571a4 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -6,6 +6,12 @@
 #include <linux/time.h>
 #include <linux/bitops.h>
 
+#define SECOND (1000ULL * 1000 * 1000)
+#define MSECOND (1000ULL * 1000)
+#define USECOND (1000ULL)
+
+#define HZ	SECOND
+
 #define CLOCKSOURCE_MASK(bits) GENMASK_ULL((bits) - 1, 0)
 
 struct clocksource {
@@ -51,12 +57,6 @@ static inline void clocksource_srand(void)
 }
 #endif
 
-#define SECOND ((uint64_t)(1000 * 1000 * 1000))
-#define MSECOND ((uint64_t)(1000 * 1000))
-#define USECOND ((uint64_t)(1000))
-
-#define HZ	SECOND
-
 extern uint64_t time_beginning;
 
 /*
-- 
2.39.5



