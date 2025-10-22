Delivery-date: Wed, 22 Oct 2025 15:38:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBZ2g-00Acdj-1Y
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 15:38:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBZ2f-00049r-SM
	for lore@pengutronix.de; Wed, 22 Oct 2025 15:38:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BdZteVBm/lOTTho4v4V/HjrpLn9/IX3ZzVCasTun7j0=; b=2DSvAdCVGlztx70sVrjx06Yd5M
	u9eQux1gPeytK9JNzQ8utfU4SszKzP0fb6pktJ27NJcbOVpwOybsQK4tnYav3qJXP1Vd0HTSBequ0
	0Y6+a12GGseN0FUCz8TR4jz64B8c0FnuEnUAX8EmH5977+EpdXoxREuiYA2fnfeU8HkYavzkOwBjj
	1nP1WVUS8mea6JNwVEKHjpOrjFly3ww5boDd1wyID5ug2jlLCZg1piAgwj/KMB/5H6a1lWqYj7GyY
	klsyuEEziK/ApAPYBxKTY0V9r4ykcWyeRLrFQcC38phtulIdo4EIvo/k5n+n30W9A3VwXaHES+rn3
	U6vijD5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBZ28-000000032DA-2OG6;
	Wed, 22 Oct 2025 13:37:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBZ25-000000032BG-1M06
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 13:37:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBZ23-00041L-AN; Wed, 22 Oct 2025 15:37:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBZ23-004tsz-0R;
	Wed, 22 Oct 2025 15:37:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBZ23-00000005r84-070a;
	Wed, 22 Oct 2025 15:37:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 22 Oct 2025 15:37:38 +0200
Message-ID: <20251022133738.1395366-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_063741_359863_56EDA34D 
X-CRM114-Status: GOOD (  15.75  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Kbuild: make sure to build fixdep first
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A host tool is built with:

$(host-csingle): $(obj)/%: $(src)/%.c FORCE
	$(call if_changed_dep,host-csingle)

if_changed_dep calls fixdep after successful compilation. fixdep is a
host tool itself, so this only works when fixdep ist the first host tool
that is being built.

Recently the sconfigpost tool was added to scripts/basic, so it can
happen that this is built before fixdep so that the fixdep call fails.

Fix this by moving sconfigpost to a separate directory and adding
scripts_basic as a dependency.

The erroneous behaviour can be reproduced with:
make ARCH=arm --shuffle=2659722306 O=build-foo imx_v8_defconfig

Fixes: b720fb9a90 ("Add security policy support")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile                                     | 10 +++++++---
 scripts/basic/Makefile                       |  1 -
 scripts/sconfigpost/Makefile                 |  1 +
 scripts/{basic => sconfigpost}/sconfigpost.c |  0
 4 files changed, 8 insertions(+), 4 deletions(-)
 create mode 100644 scripts/sconfigpost/Makefile
 rename scripts/{basic => sconfigpost}/sconfigpost.c (100%)

diff --git a/Makefile b/Makefile
index 7884953539..3774b4f9c1 100644
--- a/Makefile
+++ b/Makefile
@@ -450,7 +450,7 @@ AWK		= awk
 GENKSYMS	= scripts/genksyms/genksyms
 DEPMOD		= /sbin/depmod
 KALLSYMS	= scripts/kallsyms
-SCONFIGPOST	= scripts/basic/sconfigpost
+SCONFIGPOST	= scripts/sconfigpost/sconfigpost
 PERL		= perl
 PYTHON3		= python3
 CHECK		= sparse
@@ -556,6 +556,10 @@ PHONY += scripts_basic
 scripts_basic:
 	$(Q)$(MAKE) $(build)=scripts/basic
 
+PHONY += scripts_sconfigpost
+scripts_sconfigpost: scripts_basic
+	$(Q)$(MAKE) $(build)=scripts/sconfigpost
+
 PHONY += outputmakefile
 # Before starting out-of-tree build, make sure the source tree is clean.
 # outputmakefile generates a Makefile in the output directory, if using a
@@ -1223,10 +1227,10 @@ endif
 quiet_cmd_sconfigpost = SCONFPP $@
       cmd_sconfigpost = $(SCONFIGPOST) $2 -D $(depfile) -o $@ $<
 
-include/generated/security_autoconf.h: .security_config scripts_basic FORCE
+include/generated/security_autoconf.h: .security_config scripts_sconfigpost FORCE
 	$(call if_changed_dep,sconfigpost,-e)
 
-include/generated/sconfig_names.h: .security_config scripts_basic include/generated/security_autoconf.h FORCE
+include/generated/sconfig_names.h: .security_config scripts_sconfigpost include/generated/security_autoconf.h FORCE
 	$(call if_changed_dep,sconfigpost,-s)
 
 archprepare: include/generated/security_autoconf.h include/generated/sconfig_names.h
diff --git a/scripts/basic/Makefile b/scripts/basic/Makefile
index cd4d9f321d..65a714b578 100644
--- a/scripts/basic/Makefile
+++ b/scripts/basic/Makefile
@@ -4,4 +4,3 @@
 # sconfigpost: used to postprocess security configs
 
 hostprogs-always-y	+= fixdep
-hostprogs-always-y	+= sconfigpost
diff --git a/scripts/sconfigpost/Makefile b/scripts/sconfigpost/Makefile
new file mode 100644
index 0000000000..6120c30459
--- /dev/null
+++ b/scripts/sconfigpost/Makefile
@@ -0,0 +1 @@
+hostprogs-always-y	+= sconfigpost
diff --git a/scripts/basic/sconfigpost.c b/scripts/sconfigpost/sconfigpost.c
similarity index 100%
rename from scripts/basic/sconfigpost.c
rename to scripts/sconfigpost/sconfigpost.c
-- 
2.47.3



