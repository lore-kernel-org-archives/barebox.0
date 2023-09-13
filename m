Delivery-date: Wed, 13 Sep 2023 14:40:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPAy-00DlXZ-Sy
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 14:40:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPAw-0004tm-LM
	for lore@pengutronix.de; Wed, 13 Sep 2023 14:40:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ObvuHQRdVBqkcAq4JX5g1RYjMSQ57URANNQBd5iDYCA=; b=PWHeQOW4PYovfiSJ7RfxAAPw48
	DUirUry80z8bymv8CSRm0zge/ivu5lSdD0Sc+QcyuxPOuopwpmyEyFb9Xo49T6YAPzCAr2zXREp1F
	ivyPrWTfanCI4aU/thWo/8e/5oCewe0PcU/R0cqhneoBKelkNw2q7rtAx0p/Uy/QORUkcKTnWYTfk
	7oHDsG8IeiYV87E/JajXEQDwOxmFC9tZ1CW9On+vmyiI6Fr2VV6ClB4is/I1nL4SN55rMzxJuiUAy
	CrkJO+6N9qPTdj6XZjW45O+5heJ188mSJUyOH96Uu+B15/7qsBOWvWPOy1IB1KJPVf3EABRekJ1Sd
	Nin0SC6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgP9n-005skp-1N;
	Wed, 13 Sep 2023 12:39:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgP9k-005sk2-0k
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 12:39:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgP9i-0004iU-UD; Wed, 13 Sep 2023 14:39:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgP9i-0064VJ-BA; Wed, 13 Sep 2023 14:39:42 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgP9i-008J09-0y;
	Wed, 13 Sep 2023 14:39:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Sep 2023 14:39:36 +0200
Message-Id: <20230913123936.1892645-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_053944_325421_B96F3A69 
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



