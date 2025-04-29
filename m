Delivery-date: Tue, 29 Apr 2025 16:14:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ljV-000WAm-1v
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 16:14:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ljU-0000D0-Vs
	for lore@pengutronix.de; Tue, 29 Apr 2025 16:14:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fVnYlBKps9E7ffpYa6LaZNh/y/+f/Ptj7BiPt51lvYQ=; b=VifFQ4WeEzCoVf3Klmyygux4vx
	1qaUpb6NloruaDMIf8DXE1vdT75MzhLclX+yYOHg6wjE9JKu0KCvFsXab/Ms6OTNjp4o+iwxKllzd
	jF3AtJlhuX5WUEj/EVEngKY3Lzo8PAuSpa2hxefLh8mks1khu2rb0j4NUkaAUSqrrSab/oCvU0QZZ
	4Jv4vti85NJQk6w0TVPM5prynf5NJDCyw/yO36rPsdY6QjZFmC5oQld80cG8373/9g861MXFZxNM5
	e2SMHdiUQlgy5ORnY/o9P3ar2SD/tzhC1gd5eZyqEaH1V0/yKjyVHhUrkDcZ+7AuMWOUUhsfiKWni
	0hgmk4CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9lil-00000009tUF-2VDr;
	Tue, 29 Apr 2025 14:14:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9kyJ-00000009mA3-2OAP
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 13:26:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9kyA-0003Bo-8z; Tue, 29 Apr 2025 15:25:54 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9kyA-000GoQ-05;
	Tue, 29 Apr 2025 15:25:54 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9kyA-00FoSP-1H;
	Tue, 29 Apr 2025 15:25:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 29 Apr 2025 15:25:50 +0200
Message-Id: <20250429132550.3768805-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250429132550.3768805-1-a.fatoum@pengutronix.de>
References: <20250429132550.3768805-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_062603_606746_36358A71 
X-CRM114-Status: GOOD (  12.04  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] clocksource: timer-ti-dm: adapt omap_dmtimer_init parameter type to usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The clk_speed argument is used as input to clocksource_hz2mult() which
has a u32 as parameter. While u32 and unsigned are equivalent in
barebox, it's still a good idea to differentiate between "normal"-sized
integers and integers that are explicitly meant to be exactly 32-bit.

No functional change.

Suggested-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clocksource/timer-ti-dm.c | 2 +-
 include/mach/omap/am33xx-clock.h  | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/clocksource/timer-ti-dm.c b/drivers/clocksource/timer-ti-dm.c
index 572ea2fdc945..7fa159723b11 100644
--- a/drivers/clocksource/timer-ti-dm.c
+++ b/drivers/clocksource/timer-ti-dm.c
@@ -71,7 +71,7 @@ struct omap_dmtimer_data {
 	int (*get_clock)(struct device *dev);
 };
 
-int omap_dmtimer_init(void __iomem *mmio_start, unsigned clk_speed)
+int omap_dmtimer_init(void __iomem *mmio_start, u32 clk_speed)
 {
 	base = mmio_start;
 
diff --git a/include/mach/omap/am33xx-clock.h b/include/mach/omap/am33xx-clock.h
index b064337ac4f8..8dbe6efe863c 100644
--- a/include/mach/omap/am33xx-clock.h
+++ b/include/mach/omap/am33xx-clock.h
@@ -191,7 +191,6 @@ void am33xx_pll_init(int mpupll_M, int ddrpll_M);
 void am33xx_enable_ddr_clocks(void);
 int am33xx_get_osc_clock(void);
 
-int omap_dmtimer_init(void __iomem *mmio_start,
-		      unsigned clk_speed);
+int omap_dmtimer_init(void __iomem *mmio_start, u32 clk_speed);
 
 #endif  /* endif _AM33XX_CLOCKS_H_ */
-- 
2.39.5



