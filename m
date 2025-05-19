Delivery-date: Mon, 19 May 2025 21:57:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uH6bc-000bjU-0B
	for lore@lore.pengutronix.de;
	Mon, 19 May 2025 21:57:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uH6bb-0005UB-BT
	for lore@pengutronix.de; Mon, 19 May 2025 21:56:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9Epb+CfssCAqI+6Za7rboiy08rlO4FGTXzfK6OutsLI=; b=OqVUSrmcK/hCR1VNXIpy+pkfeR
	Nd9EECHZ6bMa3V+lk52Owc9zkmUyJme2Ilsgha6n2hm4wLs1vwDrFwkoJcIxl+EqmMDLnebmDQXXO
	wc7DJZoc3Xh2SftOMfh/+T5JQU0hzsj+z3iE2/Ulxkc2Fjxh0HvF4VcqWxKEZ+LoT6c6+KuQl/Aq6
	yL/T3wSzEuStgevYTwhqdZJivDbBIPAm/lzPjDHnVi/b7yh8pZP0LoJgaO6sCVf10RRndLOIeInlO
	6o/ybRInUt+2/s7qVtYOJSw7b9VCd5C7peTLIivsK4YpbdT2riooAMpND/s2m1WEF3QlR1N68HS0C
	ol0O35qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH6aq-0000000AJ3A-1BDt;
	Mon, 19 May 2025 19:56:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH5hq-0000000ACJ2-1Oaw
	for barebox@lists.infradead.org;
	Mon, 19 May 2025 18:59:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uH5hm-0005Iy-PX; Mon, 19 May 2025 20:59:18 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 19 May 2025 20:59:17 +0200
Message-Id: <20250519185917.459180-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_115922_368799_F5C15217 
X-CRM114-Status: GOOD (  10.27  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] clocksource: ti-dm: fix EPROBE_DEFER handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox initializes only a single ti-dm timer and stores its non-NULL
MMIO base address to the global base variable to indicate a successful
probe.

If clock_get were to fail with any error code, base would remain set,
hindering future probes of the driver. This would be especially
bothersome with EPROBE_DEFER if deep probe is not enabled.

Fix this by removing the early setting of the base variable.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/clocksource/timer-ti-dm.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clocksource/timer-ti-dm.c b/drivers/clocksource/timer-ti-dm.c
index 7fa159723b11..7cc0422d1d16 100644
--- a/drivers/clocksource/timer-ti-dm.c
+++ b/drivers/clocksource/timer-ti-dm.c
@@ -96,7 +96,6 @@ static int omap_dmtimer_probe(struct device *dev)
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-	base = IOMEM(iores->start);
 
 	data = device_get_match_data(dev);
 
-- 
2.39.5



