Delivery-date: Mon, 31 May 2021 09:04:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnbyk-0002oz-3w
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:04:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnbyj-0001iz-8j
	for lore@pengutronix.de; Mon, 31 May 2021 09:04:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fE2OpXAy/3/YI1M1szLYdevoqPlCE5w77+DqZ43iiw=; b=Q/SvpzRiGsWm8J
	4VYI5SwPcmoR9cqBXO6Jm18+uQ9JkV3h1UPC2JX/LWma9bVRxNb8F9hch6eX1BJIrsThNwD7gzuSc
	cnhxbJOW803pmHOpoiKID+A+gtSk+c+rpgo5PEmu8kR4YrYOl4qATlL6NK2NRXelQXi+Ow17prwNj
	F6LMSMoqWh1xKonpDKkFQGaTOmA4kMjP9+UfPHRZeIUysZ7nNjl3uy8HQS33i5lurKhearU2zQhe6
	ERToRlQFVXtSkzd929ctqXLPdULPXfxZWc4kfeWJ2250NNKDmKuFFedjUVPlhPWK8JgbLZO17BXHq
	ymBsN0ADllIzP6D7RMkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnbxf-00B3gP-Rz; Mon, 31 May 2021 07:03:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnbxY-00B3dI-6y
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:03:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnbxP-0001Uq-0A; Mon, 31 May 2021 09:03:27 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnbxO-0005Wt-Mj; Mon, 31 May 2021 09:03:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 31 May 2021 09:03:23 +0200
Message-Id: <20210531070325.19627-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531070325.19627-1-a.fatoum@pengutronix.de>
References: <20210531070325.19627-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_000336_272923_FC50956E 
X-CRM114-Status: GOOD (  12.65  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/5] clocksource: RISC-V: demote probe success messages to
 debug level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There's always some clocksource driver loaded, so reporting it probed
successfully doesn't add much value. timebase-frequency can be read
from the device tree if needed and which driver were probed successfully
can be seen in drvinfo output, so demote both riscv and clint timer
messages to debug level.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 drivers/clocksource/timer-clint.c | 2 +-
 drivers/clocksource/timer-riscv.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clocksource/timer-clint.c b/drivers/clocksource/timer-clint.c
index b7360010bdb6..4eeb9cf7ffc9 100644
--- a/drivers/clocksource/timer-clint.c
+++ b/drivers/clocksource/timer-clint.c
@@ -72,7 +72,7 @@ static int clint_timer_init_dt(struct device_d* dev)
 		return PTR_ERR(iores);
 	clint_timer_val = IOMEM(iores->start) + CLINT_TIMER_VAL_OFF;
 
-	dev_info(dev, "running at %lu Hz\n", riscv_timebase);
+	dev_dbg(dev, "running at %lu Hz\n", riscv_timebase);
 
 	clint_clocksource.mult = clocksource_hz2mult(riscv_timebase, clint_clocksource.shift);
 
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index cbbe18d9a693..5a517fe6b43d 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -60,7 +60,7 @@ static struct clocksource riscv_clocksource = {
 
 static int riscv_timer_init(struct device_d* dev)
 {
-	dev_info(dev, "running at %lu Hz\n", riscv_timebase);
+	dev_dbg(dev, "running at %lu Hz\n", riscv_timebase);
 
 	riscv_clocksource.mult = clocksource_hz2mult(riscv_timebase, riscv_clocksource.shift);
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

