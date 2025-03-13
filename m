Delivery-date: Thu, 13 Mar 2025 08:49:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdJQ-00DTci-1i
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 08:49:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdJO-0008HR-Hm
	for lore@pengutronix.de; Thu, 13 Mar 2025 08:49:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lzOxIyDp+xu8NKL9n9sUw+e2eKt0owaDwnWEWDmGQ3w=; b=muTBYk5sH+5kwIyqm5YOv+sg4W
	KcVSW3BSzPzJcwMXAl29YwiIpvb984WRDDExdHasqa116HB8uNxEQvd1bbc9TChNCOZmAnpsTqc60
	kg44boTlLHbma/455BfRJqFT/0ELeOeaPtLzo7rDZCJmhx4oUiBTRSbUUJG5eHtfmU3jk7m/f2duv
	Su5tU8f85R0JnojPxgD/haRW286knb+/XEdPPL4YNatgG/kF/na16R1x8DuygFEJVnHyWAtJ1qcDD
	hiC3Zn0SMUwOiIFUy7FUKegNffNkX8Fk5AH3F7PSGRP/oe/5P2Smz4Q89lWenvl33mrk7649IVp08
	5aY9umbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdIz-0000000AQdg-0vOt;
	Thu, 13 Mar 2025 07:48:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsd5j-0000000AOUl-3F1z
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 07:34:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-0005mS-FY; Thu, 13 Mar 2025 08:34:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-005Uvk-0e;
	Thu, 13 Mar 2025 08:34:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-003pwb-0K;
	Thu, 13 Mar 2025 08:34:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 08:34:27 +0100
Message-Id: <20250313073445.764875-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313073445.764875-1-a.fatoum@pengutronix.de>
References: <20250313073445.764875-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_003455_867500_2451865A 
X-CRM114-Status: GOOD (  10.78  )
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
Subject: [PATCH 04/22] drivers: don't cast pointer directly to enum
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

64-bit Sandbox builds with clang don't like the direct cast of
a 64-bit pointer to a 32-bit enum value. Add an uintptr_t in between
to loosen up the atmosphere.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/aiodev/lm75.c        | 2 +-
 drivers/net/ksz8864rmn.c     | 2 +-
 drivers/regulator/fan53555.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/aiodev/lm75.c b/drivers/aiodev/lm75.c
index 13b7ac4710c2..86eac091d8d3 100644
--- a/drivers/aiodev/lm75.c
+++ b/drivers/aiodev/lm75.c
@@ -110,7 +110,7 @@ static int lm75_probe(struct device *dev)
 	int new, ret;
 	enum lm75_type kind;
 
-	kind = (enum lm75_type)device_get_match_data(dev);
+	kind = (enum lm75_type)(uintptr_t)device_get_match_data(dev);
 	if (kind == unknown)
 		return -ENODEV;
 
diff --git a/drivers/net/ksz8864rmn.c b/drivers/net/ksz8864rmn.c
index c4c30377af83..8cec0bb02678 100644
--- a/drivers/net/ksz8864rmn.c
+++ b/drivers/net/ksz8864rmn.c
@@ -126,7 +126,7 @@ static int micrel_switch_probe(struct device *dev)
 {
 	struct micrel_switch_priv *priv;
 	int ret = 0;
-	enum ksz_type kind = (enum ksz_type)device_get_match_data(dev);
+	enum ksz_type kind = (enum ksz_type)(uintptr_t)device_get_match_data(dev);
 	uint8_t id;
 
 	if (kind == unknown)
diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
index f73511b36b20..2df0d2410a03 100644
--- a/drivers/regulator/fan53555.c
+++ b/drivers/regulator/fan53555.c
@@ -384,7 +384,7 @@ static int fan53555_regulator_probe(struct device *dev)
 
 	di = xzalloc(sizeof(*di));
 
-	di->vendor = (enum fan53555_vendor)device_get_match_data(dev);
+	di->vendor = (enum fan53555_vendor)(uintptr_t)device_get_match_data(dev);
 
 	di->rdev.desc = &di->rdesc;
 	di->rdev.dev = dev;
-- 
2.39.5



