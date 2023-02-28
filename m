Delivery-date: Tue, 28 Feb 2023 15:32:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11N-004kvb-BZ
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 15:32:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11N-0004fD-BM
	for lore@pengutronix.de; Tue, 28 Feb 2023 15:32:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LB4QmGXMD72UQJC3cNy26o4SwDKfTsUDa+2CMu1EVLs=; b=A7kiY80/5UNcf89glUMzPSes41
	cbhKgm+VawtFPw/hQOKDVXEggKNesuNdXxRUvs06K3Q6OPfXCGNC3ARnGv8Wh+lXom6Add57yjHQK
	slEa+3BRB0WNg+FPI362BKhs13EXqVZwC12O/8lzCvhC+2Zc4qgYIbEsgKbexbuw4/erSRsNoVM1C
	LBt8autVKmPR6sT80d9B8gCNuDOfKcxDamKuiSc55fr9nIB/FDqqaJyvJ46wDDXSS62sfpER+0EDm
	n13m4zQHUD/RxkED5kVysPdgzVFVKRf207Gssaba30TFakTOJeSyLWULfdlixFUB5zxiT1JAKjBgy
	Xz5JyuLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX106-00DSj2-6d; Tue, 28 Feb 2023 14:30:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX100-00DSgK-Lr
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 14:30:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zy-00047C-Ud; Tue, 28 Feb 2023 15:30:34 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zy-000t8s-9m; Tue, 28 Feb 2023 15:30:34 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zw-007LWQ-SS; Tue, 28 Feb 2023 15:30:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Feb 2023 15:30:24 +0100
Message-Id: <20230228143031.1718565-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230228143031.1718565-1-s.hauer@pengutronix.de>
References: <20230228143031.1718565-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_063036_760579_C62AC697 
X-CRM114-Status: GOOD (  10.26  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] ARM: imx: remove unused mach/clock.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mach/clock.h is unused and doesn't contain anything useful. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/clock.h | 3 ---
 1 file changed, 3 deletions(-)
 delete mode 100644 arch/arm/mach-imx/include/mach/clock.h

diff --git a/arch/arm/mach-imx/include/mach/clock.h b/arch/arm/mach-imx/include/mach/clock.h
deleted file mode 100644
index af1a6e439a..0000000000
--- a/arch/arm/mach-imx/include/mach/clock.h
+++ /dev/null
@@ -1,3 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-/* nothing, but some drivers need this include */
-- 
2.30.2



