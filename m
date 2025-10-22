Delivery-date: Wed, 22 Oct 2025 16:14:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBZbH-00AdKz-2B
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 16:14:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBZbG-0002YL-Um
	for lore@pengutronix.de; Wed, 22 Oct 2025 16:14:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vNrIqG7N/1EgaMvsYayOVgZpjfkc3i7+LN5JuP8lE30=; b=j3V5jf5JtEjZ+F
	yK+vUeGs+g6x6QMNHGRTauqRo4/+LDjnVNCGVT+QhLxAarMDQiNdE4YQd66Pq3Jl7254Ubk6FsVMn
	EpumGJ6GqzKnNseBMnfZIAumW3H3phSQT0Y0qVJkwagQoSQTSQw8OFqHjHCtyyqUegDJdbuksWTfR
	0nmkrXJkYWOQNYlXOfIzH5W3kECDqXPqvkWYVEoWBeuCG4rXpDP0M6RvASpT04RooNLbhh+VXgGFu
	FNASXX3uPJwgIItwE7cr2LYbBGHIJBG1dZzxxbUalnRxrQ9Mfasi1pQOX3U5tQCZQ0haGhO6G5DF/
	ui+XUeSpExB0mMgUxZWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBZal-00000003AUg-25qL;
	Wed, 22 Oct 2025 14:13:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBZai-00000003ATk-3eYK
	for barebox@bombadil.infradead.org;
	Wed, 22 Oct 2025 14:13:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=vNrIqG7N/1EgaMvsYayOVgZpjfkc3i7+LN5JuP8lE30=; b=hOG0s8sUqQX2Z7iYPefDBZeR6y
	rkqUAzii+xG/pYuIX6m4Y0CRgCEGiUPtGyE5i7vz2s1sPDiYrdxtOWXGW+UjlUhBDb0kceW7Huj5B
	gvBgvtxF0IZJNmxPbGDU04bqLWE3q9kq0eNPttFuoE4OdN3yHOeGcPuhv81Tg1bNs2eEcLjTDwYLx
	eKUeX06vpe6G+SG53hLoQOKxVTtn84UAy+X+zU+dK/0595ZQDlWTcPlr9ayL75ngbomk9gkmJSOq2
	QOejquv/qS6pKMaFhEsdn7SPdXI7VnKhpp+kT3S0FxENR0gOfHpc5HCWGjXWEjA07a6TPMcre4Dep
	5bqVM0xQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBYiz-00000000cCz-3U61
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 13:17:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBZae-0002Pt-TU; Wed, 22 Oct 2025 16:13:24 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBZae-004uDC-2I;
	Wed, 22 Oct 2025 16:13:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBZae-00000009NCP-2Sq3;
	Wed, 22 Oct 2025 16:13:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 22 Oct 2025 16:13:23 +0200
Message-ID: <20251022141323.2233469-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_141757_978585_90A29EDC 
X-CRM114-Status: GOOD (  18.16  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251022133738.1395366-1-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Changes since v1:
- rename sconfigpost directory to sconfig
- move .gitignore content and Makefile comment to new directory

 Makefile                                 | 10 +++++++---
 scripts/basic/.gitignore                 |  1 -
 scripts/basic/Makefile                   |  2 --
 scripts/sconfig/.gitignore               |  2 ++
 scripts/sconfig/Makefile                 |  5 +++++
 scripts/{basic => sconfig}/sconfigpost.c |  0
 6 files changed, 14 insertions(+), 6 deletions(-)
 create mode 100644 scripts/sconfig/.gitignore
 create mode 100644 scripts/sconfig/Makefile
 rename scripts/{basic => sconfig}/sconfigpost.c (100%)

diff --git a/Makefile b/Makefile
index 7884953539..9af028cbc6 100644
--- a/Makefile
+++ b/Makefile
@@ -450,7 +450,7 @@ AWK		= awk
 GENKSYMS	= scripts/genksyms/genksyms
 DEPMOD		= /sbin/depmod
 KALLSYMS	= scripts/kallsyms
-SCONFIGPOST	= scripts/basic/sconfigpost
+SCONFIGPOST	= scripts/sconfig/sconfigpost
 PERL		= perl
 PYTHON3		= python3
 CHECK		= sparse
@@ -556,6 +556,10 @@ PHONY += scripts_basic
 scripts_basic:
 	$(Q)$(MAKE) $(build)=scripts/basic
 
+PHONY += scripts_sconfig
+scripts_sconfig: scripts_basic
+	$(Q)$(MAKE) $(build)=scripts/sconfig
+
 PHONY += outputmakefile
 # Before starting out-of-tree build, make sure the source tree is clean.
 # outputmakefile generates a Makefile in the output directory, if using a
@@ -1223,10 +1227,10 @@ endif
 quiet_cmd_sconfigpost = SCONFPP $@
       cmd_sconfigpost = $(SCONFIGPOST) $2 -D $(depfile) -o $@ $<
 
-include/generated/security_autoconf.h: .security_config scripts_basic FORCE
+include/generated/security_autoconf.h: .security_config scripts_sconfig FORCE
 	$(call if_changed_dep,sconfigpost,-e)
 
-include/generated/sconfig_names.h: .security_config scripts_basic include/generated/security_autoconf.h FORCE
+include/generated/sconfig_names.h: .security_config scripts_sconfig include/generated/security_autoconf.h FORCE
 	$(call if_changed_dep,sconfigpost,-s)
 
 archprepare: include/generated/security_autoconf.h include/generated/sconfig_names.h
diff --git a/scripts/basic/.gitignore b/scripts/basic/.gitignore
index 660035252b..961c91c8a8 100644
--- a/scripts/basic/.gitignore
+++ b/scripts/basic/.gitignore
@@ -1,3 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
 /fixdep
-/sconfigpost
diff --git a/scripts/basic/Makefile b/scripts/basic/Makefile
index cd4d9f321d..eeb6a38c55 100644
--- a/scripts/basic/Makefile
+++ b/scripts/basic/Makefile
@@ -1,7 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 #
 # fixdep: used to generate dependency information during build process
-# sconfigpost: used to postprocess security configs
 
 hostprogs-always-y	+= fixdep
-hostprogs-always-y	+= sconfigpost
diff --git a/scripts/sconfig/.gitignore b/scripts/sconfig/.gitignore
new file mode 100644
index 0000000000..ceb67806fe
--- /dev/null
+++ b/scripts/sconfig/.gitignore
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+/sconfigpost
diff --git a/scripts/sconfig/Makefile b/scripts/sconfig/Makefile
new file mode 100644
index 0000000000..d40769dab5
--- /dev/null
+++ b/scripts/sconfig/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# sconfigpost: used to postprocess security configs
+
+hostprogs-always-y	+= sconfigpost
diff --git a/scripts/basic/sconfigpost.c b/scripts/sconfig/sconfigpost.c
similarity index 100%
rename from scripts/basic/sconfigpost.c
rename to scripts/sconfig/sconfigpost.c
-- 
2.47.3



