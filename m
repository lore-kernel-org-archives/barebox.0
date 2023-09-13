Delivery-date: Wed, 13 Sep 2023 14:27:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgOyM-00Dl4k-B0
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 14:27:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgOyK-00031O-CG
	for lore@pengutronix.de; Wed, 13 Sep 2023 14:27:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ObvuHQRdVBqkcAq4JX5g1RYjMSQ57URANNQBd5iDYCA=; b=ZtBQTysbmGCIzpb1pn+OIE/8HA
	Gwa1uH/uYKapH7svTxvePaG8BPSyC7/0ZVWC20v5ll3eIPd4edfdTAcaJUd1vv5GEtJvIJQsrbHxA
	FzhZJJulRXD3YvS58KV+U0RhvyK2XBUX1+CIZmUPz04ZxWewE9vsIFxf/Z8fREBHpFjjkVkv7nYuj
	QTuucOZHAa1whicIF6vFp8GF5JFcyWHLfWLJtTRWWeFnO8fZAazZdEh7/DVx9k1biqZmnwIq1elhM
	Lkl/JrgXat4rdg3XuhGRDh6PhmMuS4iLN7RzS92rl9FXntXlMYJGHJbM4yxwUa2N9Lm76qIARlL1r
	6kirx89Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgOxA-005rBX-2G;
	Wed, 13 Sep 2023 12:26:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgOx8-005rAt-09
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 12:26:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOx6-0002oB-8H; Wed, 13 Sep 2023 14:26:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOx5-00642R-LT; Wed, 13 Sep 2023 14:26:39 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOx5-007xuS-1z;
	Wed, 13 Sep 2023 14:26:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Sep 2023 14:26:14 +0200
Message-Id: <20230913122614.1898504-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_052642_080201_D5C77A97 
X-CRM114-Status: UNSURE (   9.91  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: drop unreferenced left-over lib/Makefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There used to be implementations of boot commands in arch/arm/lib, but
this has been moved to either arch/arm/lib32 or lib64 for since.

The Makefile still bears witness to that past, but it's unreferenced, so
have it it too retire to git history.

Fixes: 79e3038089f5 ("ARM: aarch64: disable 32bit boot commands")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib/Makefile | 4 ----
 1 file changed, 4 deletions(-)
 delete mode 100644 arch/arm/lib/Makefile

diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
deleted file mode 100644
index 1a8144f6c64a..000000000000
--- a/arch/arm/lib/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-$(CONFIG_BOOTM)	+= bootm.o
-obj-$(CONFIG_CMD_BOOTU)	+= bootu.o
-- 
2.39.2



