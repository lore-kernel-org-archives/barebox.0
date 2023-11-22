Delivery-date: Wed, 22 Nov 2023 18:32:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5r5Y-004dr8-0m
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 18:32:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5r5Y-0000Qi-AE
	for lore@pengutronix.de; Wed, 22 Nov 2023 18:32:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CESLM/lqrBQKTuVEaTUippimQ4v+HBkwEjpunIrJaQI=; b=qMuvIw7Z9eBJTk3j7ECRO5yfK1
	RzQ2aP2IkeDK0fjaubxy2p5NaBOPjg6C8qEg93bZj05+LK2E4Q0n2wcQP9XSueIq+1WebloglavgV
	H93CukK0jTvD7fMsrqSa8zL/U2AIr8hHSAYYuFlvqB9hPJ+gSazEyX38upNtY0a1xFctdErOyFX3k
	B3hfJQRTLIHIpau6yLUJ1H5/Ota8lJhoiArLXUdMlWK5496QGkSSY2yemJkzmZENYMdcSvxFrhjeQ
	Ymmn26xXLwjNykbrYiDqhvQvo0OA57U1Qi80eJZptYegJJ5yy/GprVwkmq6GbEu+1vS4cf3MsaD8z
	eVha1jYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5r4P-002fqF-0n;
	Wed, 22 Nov 2023 17:31:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5r4L-002fo9-0b
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 17:31:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r4K-00086L-0B; Wed, 22 Nov 2023 18:31:20 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r4J-00ArTd-Jz; Wed, 22 Nov 2023 18:31:19 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r4J-002Q0y-1g;
	Wed, 22 Nov 2023 18:31:19 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 18:31:18 +0100
Message-Id: <20231122173118.569620-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_093121_232916_E7F7B1ED 
X-CRM114-Status: UNSURE (   7.99  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] of: reserved-mem: add debug print for reservations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

reserve_sdram_region can now involve cache maintenance, so add a debug
print beforehand to aid debugging.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/reserved-mem.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/of/reserved-mem.c b/drivers/of/reserved-mem.c
index f50a0bd8374d..599a7c968afd 100644
--- a/drivers/of/reserved-mem.c
+++ b/drivers/of/reserved-mem.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-only
 // SPDX-FileCopyrightText: 2021 Rouven Czerwinski <r.czerwinski@pengutronix.de>, Pengutronix
 
+#define pr_fmt(fmt) "of-reserved-mem: " fmt
+
 #include <stdio.h>
 #include <of.h>
 #include <of_address.h>
@@ -17,6 +19,8 @@ static void request_region(struct resource *r)
 		if (!resource_contains(bank->res, r))
 			continue;
 
+		pr_debug("reserving %s at %pad-%pad\n", r->name, &r->start, &r->end);
+
 		if (!reserve_sdram_region(r->name, r->start, resource_size(r)))
 			pr_warn("couldn't request reserved sdram region %pa-%pa\n",
 				&r->start, &r->end);
-- 
2.39.2



