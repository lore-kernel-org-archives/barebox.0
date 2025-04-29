Delivery-date: Tue, 29 Apr 2025 16:14:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ljW-000WB7-1I
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 16:14:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ljV-0000DD-Px
	for lore@pengutronix.de; Tue, 29 Apr 2025 16:14:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=t4EL58T0ROv/DAfrpzTFukUBY2xeUAASbhhqy1Uz520=; b=swIbcc5zqbKsr5ZTzo4LP7uQxC
	ZOhsI5q2MnuQ5i45CosJfmX96Bv3proEDAwik+gS9XRuD/dfVcRVxL8VQZ/jdvAKkORbEylRqN3Kj
	LyDrlDry7y0tzdmoH3i1b3PPMCcD4ncHYb220LEvezJdqjigRvpDXxkltjZMQSFdTJdINcjsCJyVe
	GzjANXrJTUQGnDjRA8oxpaK4QrQ5sQ9bOST4FqB4ipVvWKU18dTC/Id9Ez4ZE9y9aFWrLHuLE+pyC
	hasThoRSQrDzTCPcyf62DL48H82GQ2f2iByL0mGEH+DhYb50WhJRdDv2p/IpYo3tFuepiA0m+QxH6
	eHzJStJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9lik-00000009tQG-13Ld;
	Tue, 29 Apr 2025 14:14:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9kyC-00000009m8f-2lYa
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 13:25:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9kyA-0003Bm-8w; Tue, 29 Apr 2025 15:25:54 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9ky9-000GoP-3A;
	Tue, 29 Apr 2025 15:25:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9kyA-00FoSP-18;
	Tue, 29 Apr 2025 15:25:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 29 Apr 2025 15:25:49 +0200
Message-Id: <20250429132550.3768805-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_062556_695596_3E914361 
X-CRM114-Status: UNSURE (   9.76  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] clocksource: timer-ti-dm: replace magic constant with descriptive macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This improves readability a bit, but introduces no functional change.

Suggested-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clocksource/timer-ti-dm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/timer-ti-dm.c b/drivers/clocksource/timer-ti-dm.c
index 1090b96a0e94..572ea2fdc945 100644
--- a/drivers/clocksource/timer-ti-dm.c
+++ b/drivers/clocksource/timer-ti-dm.c
@@ -37,6 +37,8 @@
 #define IRQSTATUS_CLR		0x30
 #define IRQWAKEEN		0x34
 #define TCLR			0x38
+#define		TCLR_START		BIT(0)	/* Start=1 */
+#define		TCLR_AUTO_RELOAD	BIT(1)	/* Auto reload */
 #define TCRR			0x3C
 #define TLDR			0x40
 #define TTGR			0x44
@@ -76,7 +78,7 @@ int omap_dmtimer_init(void __iomem *mmio_start, unsigned clk_speed)
 	dmtimer_cs.mult = clocksource_hz2mult(clk_speed, dmtimer_cs.shift);
 
 	/* Enable counter */
-	writel(0x3, base + TCLR);
+	writel(TCLR_START | TCLR_AUTO_RELOAD, base + TCLR);
 
 	return init_clock(&dmtimer_cs);
 }
-- 
2.39.5



