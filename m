Delivery-date: Thu, 20 Feb 2025 07:46:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tl0Kf-004cE2-17
	for lore@lore.pengutronix.de;
	Thu, 20 Feb 2025 07:46:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tl0Ke-0004HR-6O
	for lore@pengutronix.de; Thu, 20 Feb 2025 07:46:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BZPug0mXBLvG5mXzuu6UrWl/pmziU1u35YGINg1yCk8=; b=yy8AJWfVtFGAILsnaLPaaveYwa
	O0X5iubasgcYEBKkRupvBcFiYpwCRc4FtYz6++/PTVGChaqucv4HUFAgWTlkf4qPb4q7pEoeJj/p+
	Bbi0SpOcDO4FuHUdKJ58KGOZsaIVwnMl0PWiANHOLnCECAlG+qhaIS09WlSeLlYkDZrubuEh4Ylfj
	31R+jK/4pEEwjDgncRRLa8T3ib4GU1UKWCqK5seyxtKTrHhdMGcW9zIQdVlCPQGvWTjoNnOeB7inz
	9VqhamJhhwmR1u5DFFaaq8djcD7r8zNkZS7iF6aU81AmJQB39QdgIB++7i5ZqhL3MrBtedRSPk415
	O6LxW+zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl0KB-0000000H05a-32yr;
	Thu, 20 Feb 2025 06:46:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl0K6-0000000H04H-27vY
	for barebox@lists.infradead.org;
	Thu, 20 Feb 2025 06:46:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tl0K5-00048f-02; Thu, 20 Feb 2025 07:46:13 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tl0K4-001tQb-2d;
	Thu, 20 Feb 2025 07:46:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tl0K4-003dET-2K;
	Thu, 20 Feb 2025 07:46:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Feb 2025 07:46:11 +0100
Message-Id: <20250220064612.865757-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_224614_557392_E2417777 
X-CRM114-Status: GOOD (  10.10  )
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
Subject: [PATCH master 1/2] scripts: define _GNU_SOURCE for every user tool build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Defining _GNU_SOURCE via userccflags (for target tools) and KBUILD_HOSTCFLAGS
(for host tools) works, but needs to be repeated in subdirectories like i.MX
as well. As we make ample use of the asprintf GNU extension anyway, let's just
define it in the top-level makefile for build of all user code.

Fixes: 02a61edc1842 ("scripts: define _GNU_SOURCE for all source files")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile         | 3 ++-
 scripts/Makefile | 4 ----
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index 5488f9d97251..4e6ac5a10a97 100644
--- a/Makefile
+++ b/Makefile
@@ -399,7 +399,8 @@ HOSTCXX	= g++
 endif
 
 KBUILD_USERHOSTCFLAGS := -Wall -Wmissing-prototypes -Wstrict-prototypes \
-			      -O2 -fomit-frame-pointer -std=gnu11
+			      -O2 -fomit-frame-pointer -std=gnu11 \
+			      -D_GNU_SOURCE=""
 KBUILD_USERCFLAGS  := $(KBUILD_USERHOSTCFLAGS) $(USERCFLAGS)
 KBUILD_USERLDFLAGS := $(USERLDFLAGS)
 
diff --git a/scripts/Makefile b/scripts/Makefile
index bb4e85b0a639..6d89af7d4f35 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -60,10 +60,6 @@ rk-usb-loader-target-userldlibs += `$(CROSS_PKG_CONFIG) --libs libusb-1.0`
 
 userccflags += -I $(srctree)/$(src)/include -isystem $(srctree)/scripts/include
 
-# We need to explicitly set the macro to empty, otherwise it's defined to =1
-userccflags += -D_GNU_SOURCE=""
-KBUILD_HOSTCFLAGS += -D_GNU_SOURCE=""
-
 subdir-y			+= mod
 subdir-y			+= imx
 subdir-$(CONFIG_ARCH_TEGRA)	+= tegra
-- 
2.39.5



