Delivery-date: Wed, 30 Jul 2025 14:42:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh68g-005GKT-10
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 14:42:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh68f-00069V-OL
	for lore@pengutronix.de; Wed, 30 Jul 2025 14:42:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=32+D1iOel5hMu3oabyzPJx+YX1Q14kZHQZJyRf72dts=; b=TaBP7oazygF5ADtCmKeEaVgXSg
	4H6t7j1M43FfaPgi01LMTh+f2iJrmuC8PENaDl23fKO2adptHs54jNlq3ixUrFluodNOoORdb0i4Q
	Q1aAoZfwPMGZFE7cOBPmC3mvpAR2rjlRx3ASwqkMUIse4yhOVajVKbKxTQCET1VW2Fe0XNWk3PKC6
	2Ka9upvL3N/7QQswYpMimoxmqyEZmvD1dLsyYzP+XfIrWTByMgXNi3/eGFCB/BEu9iSBxsRppLKFn
	LTogcmnBn0F4VDeVR4Mw1xLXxM7tzqfm7jsqUVzuwEb/Sdy0sSi+Ce0xBimN7/SuD2IvqpdP3wAEo
	f4aSe8hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh68E-00000001UZB-270a;
	Wed, 30 Jul 2025 12:42:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5xx-00000001TJd-0ArG
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 12:31:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uh5xv-0004gS-HK; Wed, 30 Jul 2025 14:31:27 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uh5xv-00B2fE-0m;
	Wed, 30 Jul 2025 14:31:27 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uh5xv-004SW5-0S;
	Wed, 30 Jul 2025 14:31:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Jul 2025 14:31:26 +0200
Message-Id: <20250730123126.1062875-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250730123126.1062875-1-a.fatoum@pengutronix.de>
References: <20250730123126.1062875-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_053129_079295_C60666DC 
X-CRM114-Status: GOOD (  10.12  )
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
Subject: [PATCH 2/2] video: remap framebuffer as writecombine if possible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We do not do cache maintenance for framebuffers and expect that memory
is mapped suitably, either writecombine or uncached (coherent).

The simplefb-client was first added to barebox for a cache-coherent
platform and did not observe this requirement.

To enable its use on ARM as well without graphic artifacts, let's remap
the range as writecombine, which will fall back to uncached if
unsupported.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/simplefb-client.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/video/simplefb-client.c b/drivers/video/simplefb-client.c
index dafec6178fe6..1c0ee3e7d426 100644
--- a/drivers/video/simplefb-client.c
+++ b/drivers/video/simplefb-client.c
@@ -18,6 +18,7 @@
 #include <linux/platform_data/simplefb.h>
 #include <driver.h>
 #include <of.h>
+#include <mmu.h>
 
 static struct fb_ops simplefb_ops;
 
@@ -119,6 +120,11 @@ static int simplefb_probe(struct device *dev)
 	info->screen_base = (void *)mem->start;
 	info->screen_size = resource_size(mem);
 
+	/*
+	 * Best effort: Some platforms don't need this and those that do,
+	 * will at worst have some graphic artifacts on lack of remap_range.
+	 */
+	(void)remap_range(info->screen_base, info->screen_size, MAP_WRITECOMBINE);
 
 	info->fbops = &simplefb_ops;
 
-- 
2.39.5



