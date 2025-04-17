Delivery-date: Thu, 17 Apr 2025 09:06:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5JK5-001mLG-1T
	for lore@lore.pengutronix.de;
	Thu, 17 Apr 2025 09:06:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5JK4-0000V9-SV
	for lore@pengutronix.de; Thu, 17 Apr 2025 09:06:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qERxZ4DHUgVyrdPdTG4YoStAuY+Ov7KKLChSb2X7XmU=; b=1NUEXQ5t4+yz/T+CARkM5LjDcH
	csJdFeU87iVs5kI6Fu33a6ZpbiwvtUtWS/7cQj/3x7Zj3WzfjjtTO2nP7WPeSu4POAjXH7sEmiKra
	FGFcTytMwsA/+MI2NyUYfJLeMz6F8ju7RJ7XwKTvm0hE7Xg4d2ig4X8CKHbcH8ek1JAUoXd6ZU77t
	xcq/1AZ1uuc9V11Iag0v+Be3vrZqzc2Vziu7N8RAhA+k79BrHAc54tXzyEpA+usGlq/tzqRs39zOb
	WU7RIXfbmlye34hPqdCprTKdZb8CW5ARxSqUcElVmoAUxj3CyoKxE67K7TJzPlNeXmQ2gls9o05Js
	ySL+3T8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5JJc-0000000C1Ut-1zTS;
	Thu, 17 Apr 2025 07:05:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5JCz-0000000Bzf4-2DxT
	for barebox@lists.infradead.org;
	Thu, 17 Apr 2025 06:58:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5JCy-00068k-0s; Thu, 17 Apr 2025 08:58:48 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5JCx-000hvB-2h;
	Thu, 17 Apr 2025 08:58:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5JCx-00Ewsp-2O;
	Thu, 17 Apr 2025 08:58:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 17 Apr 2025 08:58:44 +0200
Message-Id: <20250417065846.3562848-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250417065846.3562848-1-a.fatoum@pengutronix.de>
References: <20250417065846.3562848-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_235849_572740_DDD1925F 
X-CRM114-Status: GOOD (  12.97  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] clock: always seed Xorshift* from clocksource on startup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently seed the RNG at following places:

  - ubiformat with get_time_ns()
  - MAC address randomization with get_time_ns()
  - seed and nandtest commands retrieve seed via command line

The latter needs to remain to make tests reproducible, but for general
use, let's collect the initial cycle count at clocksource registration
time and feed that to the PRNG.

Additional entropy can be mixed via the same interface at a later time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/clock.c | 3 +++
 lib/random.c   | 2 +-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/clock.c b/common/clock.c
index b300e5798a16..8d00edca4651 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -14,6 +14,7 @@
 #include <linux/math64.h>
 #include <clock.h>
 #include <sched.h>
+#include <stdlib.h>
 
 static uint64_t time_ns;
 
@@ -224,5 +225,7 @@ int init_clock(struct clocksource *cs)
 	cs->cycle_last = cs->read() & cs->mask;
 	current_clock = cs;
 
+	srand_xor(cs->cycle_last);
+
 	return 0;
 }
diff --git a/lib/random.c b/lib/random.c
index fc4ecdfd3a1d..51c68dcd427b 100644
--- a/lib/random.c
+++ b/lib/random.c
@@ -2,7 +2,7 @@
 /*
  * The barebox random number generator provides mainly two APIs:
  *
- *   - get_noncrypto_bytes: Xorshift*
+ *   - get_noncrypto_bytes: Xorshift* seeded initially with the cycle counter
  *     - https://en.wikipedia.org/wiki/Xorshift#xorshift*)
  *     - https://forum.pjrc.com/index.php?threads/teensy-4-1-random-number-generator.61125/#post-243895
  *
-- 
2.39.5



