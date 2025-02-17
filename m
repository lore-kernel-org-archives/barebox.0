Delivery-date: Mon, 17 Feb 2025 11:55:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjymW-003S0r-2U
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 11:55:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjymV-0000M9-Ih
	for lore@pengutronix.de; Mon, 17 Feb 2025 11:55:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HpDm9ydaVuZ8peqcGw2Vu562kXHdk7imDX0ofOQgYKg=; b=hGavvIlWkQVOMYz+RjTNo3e/YT
	R2ZjzE00n0DaVK07PzJSE1o0knbrKWPCpsfwSTrXlsQ7Yc6VXByIAHlkSCkMSIOLFouXHztL5UrjA
	80sySM/Vu11i/6pDxQVxzJaeVDznVAnoBBh+NKyphehL+hYMRZIuwQaGzG51LPtbCu9HconqZ3lGY
	Rfia40yEQGLuv6wGG+mUcWiTrQduJuYfcjHzKl4KoUbePPSszELUXtOZSD3g+K9G6gRDFBkNrs+o6
	iQLrKeaY4jbhKSADm6UR6K5R7r4QB5n/4Hfbd89DvQPMGtTLU4srlP3TWlCeR4xX3oHzJSJhHhjY2
	mn3UL1dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjym4-00000004D9g-11Mn;
	Mon, 17 Feb 2025 10:54:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjydq-000000049qo-15Fk
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 10:46:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjydh-0006b1-0e; Mon, 17 Feb 2025 11:46:13 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjydg-001OO5-2d;
	Mon, 17 Feb 2025 11:46:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjydg-007huG-2L;
	Mon, 17 Feb 2025 11:46:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 11:46:10 +0100
Message-Id: <20250217104611.1836442-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217104611.1836442-1-a.fatoum@pengutronix.de>
References: <20250217104611.1836442-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_024622_294656_AC3A3F52 
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] kbuild: actually include Makefile.clang for clang builds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Makefile.clang is included depending on CONFIG_CC_IS_CLANG, but its
location in the Makefile was before the config variables are included.

Instead of moving it farther down and risk it being included too late,
let's do as Linux does and consult CC_VERSION_TEXT instead of any
config variables.

Fixes: f41c4d7c5649 ("Makefile: add LLVM/clang support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index b5a7d0b9918b..a80e1b60d534 100644
--- a/Makefile
+++ b/Makefile
@@ -563,7 +563,13 @@ ifdef building_out_of_srctree
 	{ echo "# this is build directory, ignore it"; echo "*"; } > .gitignore
 endif
 
-ifeq ($(CONFIG_CC_IS_CLANG),y)
+# The expansion should be delayed until arch/$(SRCARCH)/Makefile is included.
+# Some architectures define CROSS_COMPILE in arch/$(SRCARCH)/Makefile.
+# CC_VERSION_TEXT is referenced from Kconfig (so it needs export),
+# and from include/config/auto.conf.cmd to detect the compiler upgrade.
+CC_VERSION_TEXT = $(subst $(pound),,$(shell LC_ALL=C $(CC) --version 2>/dev/null | head -n 1))
+
+ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
 include $(srctree)/scripts/Makefile.clang
 endif
 
@@ -578,7 +584,7 @@ include $(srctree)/scripts/Makefile.defconf
 # KBUILD_DEFCONFIG may point out an alternative default configuration
 # used for 'make defconfig'
 include $(srctree)/arch/$(SRCARCH)/Makefile
-export KBUILD_DEFCONFIG
+export KBUILD_DEFCONFIG CC_VERSION_TEXT
 
 config: outputmakefile scripts_basic FORCE
 	$(Q)$(MAKE) $(build)=scripts/kconfig $@
-- 
2.39.5



