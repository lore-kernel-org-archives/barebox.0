Delivery-date: Thu, 28 Aug 2025 12:35:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urZyp-005Pi4-11
	for lore@lore.pengutronix.de;
	Thu, 28 Aug 2025 12:35:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urZyo-0001bL-3S
	for lore@pengutronix.de; Thu, 28 Aug 2025 12:35:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9sXTw2qkKPggBrvfvpIgmhjdypOWSuMGmbC37PA1spc=; b=XReU68XE6BTk/a
	qPpBPU9vz9Xm2BnAl6g9T+4FNV4pNgm0IbkWV43gMeK14rLPubwBj4lb/QJteBxCE4q9iuGWIwy0e
	ZeWzKp1zFKW3eSmP8FoaFYQfsIUxyppFPan+QiLZS+KwxTlmjZtoi8ZnRscE7MWZnj1Rcj7G/xN3R
	gho868aNLoCivW4zD4KbyK5JYnrneOhkRor6+jALxr7iVUzs/yDCMT/7uxtF9FEByB7e8CGt/xFVA
	oGZ4xk3xuWQTsjfkFJ4rcSrZB/p2rNIdN4pfLn6J3vRoWY3S66Ds69ggkuDPHG+TPZVqwvQXsEB0k
	msxRIQYO/wbTLu+zU1UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urZy5-00000001B40-2J84;
	Thu, 28 Aug 2025 10:34:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urYyq-00000000ydT-2oH8
	for barebox@lists.infradead.org;
	Thu, 28 Aug 2025 09:31:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urYym-00051A-Ty; Thu, 28 Aug 2025 11:31:36 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urYym-002XLI-2O;
	Thu, 28 Aug 2025 11:31:36 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urYym-00000008DeO-2ZUZ;
	Thu, 28 Aug 2025 11:31:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 28 Aug 2025 11:31:35 +0200
Message-ID: <20250828093135.1959085-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_023140_707624_03DB4914 
X-CRM114-Status: GOOD (  13.39  )
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
Cc: Ahmad Fatoum <afa@pengutronix.de>
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
Subject: [PATCH] Kbuild: do not build dtbs concurrently
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

commit 3c862a83f019 ("kbuild: restrict dtbs target to enabled DTs by
default") added the dtbs target as a dependency to the images target.
In the dtbs target we call into Kbuild for building the device trees.
The device trees are also built as part of the regular build in
parallel, so we end up running Kbuild for the same directory twice.

This sometimes results in failed builds with messages like this one
(done with make V=2):

  AS [P]  arch/arm/dts/bcm2711-rpi-400.dtb.pbl.o - due to target missing
  AS [P]  arch/arm/dts/bcm2711-rpi-400.dtb.pbl.o - due to target missing
fixdep: error opening file: arch/arm/dts/.bcm2711-rpi-400.dtb.pbl.o.d: No such file or directory

Fix this by removing the dtbs target from the images dependencies. We
then would no longer build the dtbs-list, so build that unconditionally
once we descend into a directory containing device trees. The dtbs-list
is built with always-y which should make sure it is ready once we need
it in imagages/

Fixes: 3c862a83f019 ("kbuild: restrict dtbs target to enabled DTs by default")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile               | 7 +------
 scripts/Makefile.build | 2 +-
 scripts/Makefile.dtbs  | 2 --
 3 files changed, 2 insertions(+), 9 deletions(-)

diff --git a/Makefile b/Makefile
index b9c252476f..7620c47cf4 100644
--- a/Makefile
+++ b/Makefile
@@ -1187,15 +1187,10 @@ ifneq ($(dtstree),)
 
 PHONY += dtbs dtbs_prepare
 dtbs: dtbs_prepare
-	$(Q)$(MAKE) $(build)=$(dtstree) need-dtbslist=1
+	$(Q)$(MAKE) $(build)=$(dtstree)
 
 dtbs_prepare: include/config/kernel.release scripts_dtc
 
-ifdef CONFIG_OFDEVICE
-images: dtbs
-images/%: dtbs
-endif
-
 endif
 
 PHONY += scripts_dtc
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 591da3d750..fed8c247f9 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -56,7 +56,7 @@ ifneq ($(userprogs),)
 include scripts/Makefile.userprogs
 endif
 
-ifneq ($(need-dtbslist)$(dtb-y)$(dtb-)$(filter %.dtb %.dtb.o %.dtbo.o,$(targets)),)
+ifneq ($(dtb-y)$(dtb-)$(filter %.dtb %.dtb.o %.dtbo.o,$(targets)),)
 include $(srctree)/scripts/Makefile.dtbs
 endif
 
diff --git a/scripts/Makefile.dtbs b/scripts/Makefile.dtbs
index 7b5b9e1d16..25ed08e8ee 100644
--- a/scripts/Makefile.dtbs
+++ b/scripts/Makefile.dtbs
@@ -10,11 +10,9 @@ always-y        += $(dtb-y)
 # dtbs-list
 # ---------------------------------------------------------------------------
 
-ifdef need-dtbslist
 subdir-dtbslist := $(addsuffix /dtbs-list, $(subdir-ym))
 dtb-y           += $(subdir-dtbslist)
 always-y        += $(obj)/dtbs-list
-endif
 
 $(subdir-dtbslist): $(obj)/%/dtbs-list: $(obj)/% ;
 
-- 
2.47.2



