Delivery-date: Wed, 26 Apr 2023 11:05:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prb5w-000W7E-Ld
	for lore@lore.pengutronix.de; Wed, 26 Apr 2023 11:05:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prb5w-0003KR-Am
	for lore@pengutronix.de; Wed, 26 Apr 2023 11:05:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZEUz4VQNOJb1d4Zw5YMNgxmXlnKnptLT+BT+h4vRDbg=; b=N0q+xK5iRqkQVi7ozIQy0Pv6Cv
	VmrIPyiQscwLe6OttRG0LwoKg7tuyOJT646HHbdb38Mte8uRMajE45KgFp/2OgxQDCTcmRK3Vu1J9
	3CrPTezt7nJMX1BaNwypH5nYglJrTK/sY0aistqmK7FGfA/24BNusJErYA771T7hJvuMolwoq6Ig0
	6gZ1TVNNowfOrTgFSGO63Znx1EOVVC4DSur3xMKtk4TNv4Q9HAWSIpm/JxJde2bcCNhZkjiCUPclw
	nY4FEmve2wqFyHnF6X0B4/o492Vo8ppmpUWlLUC0yRke9umPZEPxrJuMs2lkaBIoYwe3O6VepQ3h6
	ai5pXZfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prb4e-003E92-2s;
	Wed, 26 Apr 2023 09:04:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prb4a-003E7x-2C
	for barebox@lists.infradead.org;
	Wed, 26 Apr 2023 09:04:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1prb4Y-0002z5-Kh; Wed, 26 Apr 2023 11:04:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1prb4X-00DtNU-VD; Wed, 26 Apr 2023 11:04:21 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1prb4X-005nZW-6G; Wed, 26 Apr 2023 11:04:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 26 Apr 2023 11:03:52 +0200
Message-Id: <20230426090354.1350981-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230426090354.1350981-1-s.hauer@pengutronix.de>
References: <20230426090354.1350981-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_020424_738648_B1CFBCC6 
X-CRM114-Status: GOOD (  11.31  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] Kconfig: source Kconfig.include earlier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

kconfig.include is included where first needed. Include it at the top
so that all Kconfig files can use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Kconfig           | 2 ++
 lib/kasan/Kconfig | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Kconfig b/Kconfig
index 7e9b892129..49bd17c89f 100644
--- a/Kconfig
+++ b/Kconfig
@@ -6,6 +6,8 @@
 #
 mainmenu "Barebox/$(ARCH) $(KERNELVERSION) Configuration"
 
+source "scripts/Kconfig.include"
+
 source "arch/$(SRCARCH)/Kconfig"
 
 source "common/Kconfig"
diff --git a/lib/kasan/Kconfig b/lib/kasan/Kconfig
index 46fc4f263b..e96638304c 100644
--- a/lib/kasan/Kconfig
+++ b/lib/kasan/Kconfig
@@ -1,7 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-source "scripts/Kconfig.include"
-
 config HAVE_ARCH_KASAN
 	bool
 
-- 
2.39.2



