Delivery-date: Sun, 12 Jan 2025 09:35:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtR6-0007eb-0t
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 09:35:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtR5-0006xo-A4
	for lore@pengutronix.de; Sun, 12 Jan 2025 09:35:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qx87MjktzXp7x88sk9cRtnh5jrcKXQ6IG+EXauEWm/0=; b=S5rrma8J1rfymj+XxNESRNPbg1
	BLxJ2Imn9M6dP7j/H+HdDvs5WetZklmng1PY0Uw02184YibJO3m7CLdNSYtfBbfutFr5GmhqLChRS
	0bLNwwDh6Q/HuEk1bGhPzGqFYAE1wDtStAGtsl1+Lh25qh86+fSCsSc4bna9CD7Kt4ThgbWmTygt2
	NqNQzg7fUP24xnIfZl8foFccK1vlqVT3a6wK0y0uzr0TaHo9KFI9fr6xeoeWLjvWIZOH4w+wONwoK
	Dozybwf+6mC8PBElq1GQAPAhmXoI/GmSyQCk5C1jiFG5c+e6M2LzAB7/blPZjIabqbT9+48rwRKA4
	TrbHz5iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtQc-00000002KuU-3alg;
	Sun, 12 Jan 2025 08:34:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtQa-00000002KtR-3EUa
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 08:34:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQZ-0006gL-Hv; Sun, 12 Jan 2025 09:34:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQX-0003Nz-0z;
	Sun, 12 Jan 2025 09:34:33 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQY-001LPJ-1R;
	Sun, 12 Jan 2025 09:34:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Felix Singer <felixsinger@posteo.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 12 Jan 2025 09:34:23 +0100
Message-Id: <20250112083432.320215-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250112083432.320215-1-a.fatoum@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_003436_856419_B6294984 
X-CRM114-Status: GOOD (  12.14  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/13] scripts: add new scripts_dtc target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Later commit will add a target for building all enabled device trees.
For this to work, we need to build the device tree compiler first, but
there is only a scripts target, which builds many extra tools
unnecessary for a mere device tree compilation.

Therefore, let's split that up and add a new scripts_dtc target that can
be depended on separately.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile         | 6 +++++-
 scripts/Makefile | 3 +--
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index 5f5f830af5d2..82f90373cbbd 100644
--- a/Makefile
+++ b/Makefile
@@ -1032,7 +1032,7 @@ include/config/kernel.release: FORCE
 # Carefully list dependencies so we do not try to build scripts twice
 # in parallel
 PHONY += scripts
-scripts: scripts_basic include/generated/utsrelease.h
+scripts: scripts_basic scripts_dtc include/generated/utsrelease.h
 	$(Q)$(MAKE) $(build)=$(@)
 
 # Things we need to do before we recursively start building the kernel
@@ -1121,6 +1121,10 @@ dtbs: $(all_dtbs)
 
 endif
 
+PHONY += scripts_dtc
+scripts_dtc: scripts_basic
+	$(Q)$(MAKE) $(build)=scripts/dtc
+
 # ---------------------------------------------------------------------------
 # Modules
 
diff --git a/scripts/Makefile b/scripts/Makefile
index a780f05bd90f..6d89af7d4f35 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -62,8 +62,7 @@ userccflags += -I $(srctree)/$(src)/include -isystem $(srctree)/scripts/include
 
 subdir-y			+= mod
 subdir-y			+= imx
-subdir-$(CONFIG_DTC)		+= dtc
 subdir-$(CONFIG_ARCH_TEGRA)	+= tegra
 
 # Let clean descend into subdirs
-subdir-	+= basic kconfig
+subdir-	+= basic dtc kconfig
-- 
2.39.5



