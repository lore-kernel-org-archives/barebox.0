Delivery-date: Sat, 19 Jun 2021 06:52:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyP-0004TX-H5
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:52:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyM-0000aL-Tk
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:52:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KA9f8sMvYuly4zRKGHuqnvHGaaRO4PB5Fg45yNAqowM=; b=Gx7IX5sQDRKKVW
	0mnDTIty6EOv52VvA52XJJZJtujb48r53Z629Zj1TMEh+XKIVvbme/G87XMdmFrQIeRLSXWeju5xt
	iaZIn7Qax+U+TG7x2ANk3675ciMY2x0cbja5HQcgCSxtTymE+kdDB5lPfuLxDfQWnN/x9xNUTsCVe
	lN1yEiQZ6bgPeKlydAwVFjgJFiYge962q5LJWVkHVjq79OE94/TVO0okuchU9Zw0YwT+p+Uvf9fRn
	HRVpz29IlRVW/mszKDd+Ve1IDRBct7mWyBwjcceXpvk6uG3A6xG7b2fm891FcvC2uCVmVnopt8l40
	LBcDRzYv6omj5SFWzkkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luSwj-00GHfg-UE; Sat, 19 Jun 2021 04:51:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwe-00GHel-Kc
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:01 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwc-0008Lx-Se; Sat, 19 Jun 2021 06:50:58 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001KU-LU; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:27 +0200
Message-Id: <20210619045055.779-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215100_726855_6EF7F665 
X-CRM114-Status: GOOD (  12.15  )
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
Subject: [PATCH v2 01/29] clocksource: RISC-V: demote probe success messages
 to debug level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There's always some clocksource driver loaded, so reporting it probed
successfully doesn't add much value. timebase-frequency can be read
from the device tree if needed and which drivers were probed successfully
can be seen in drvinfo output, so demote both riscv and clint timer
messages to debug level.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
index ef67cff47555..c2d32b36bbc5 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -59,7 +59,7 @@ static struct clocksource riscv_clocksource = {
 
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

